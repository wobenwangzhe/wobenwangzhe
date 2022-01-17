package com.medical.smart.system.admin.controller;

import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.digest.MD5;
import com.medical.smart.base.controller.BaseController;
import com.medical.smart.base.pojo.enums.Status;
import com.medical.smart.base.pojo.vo.ResponseVO;
import com.medical.smart.base.util.BaseProps;
import com.medical.smart.base.util.RedisUtil;
import com.medical.smart.base.util.TokenBuilder;
import com.medical.smart.system.admin.pojo.vo.AdminLoginVO;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import com.medical.smart.system.admin.transport.AdminTransport;
import com.netflix.eureka.cluster.PeerEurekaNode;
import com.sun.javafx.collections.MappingChange;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * <b>系统功能-系统用户控制层</b>
 * @author 王晗
 * @version 1.0.0
 */
@CrossOrigin
@RestController("adminController")
@RequestMapping("/system/consumer/admin")
@Api(tags = "系统功能-系统用户控制层")
public class AdminController extends BaseController {

	@Autowired
	private AdminTransport adminTransport;

	/**
	 * <b>系统用户登录操作</b>
	 * @param adminLoginVO
	 * @return
	 * @throws Exception
	 */
	@ApiOperation(value = "系统用户登录",notes = "系统用户登录提示")
	@PostMapping("/login")
	public ResponseVO loginAdmin(@RequestBody @Validated AdminLoginVO adminLoginVO
								, BindingResult result) throws Exception{
		//判断 adminLoginVO 验证是否通过
		if(result.hasErrors()){
			return ResponseVO.error("请填写格式正确的登录信息");
		}
		//用户登录信息校验成功,用手机号码查询用户是否存在
		AdminVO adminVO = adminTransport.getAdminVOByCellphone(adminLoginVO.getCellphone());
		//未查询到用户信息
		if(adminVO==null || StrUtil.isBlank(adminVO.getId())){
			return ResponseVO.error("登录信息不正确或查询失败,请确认登录信息是否正确并重新登录");
		}
		//已查询到用户,但系统状态禁用
		if(Status.STATUS_DISABLED.getCode().equals(adminVO.getStatus())){
			return ResponseVO.error("该用户禁止登录系统");
		}
		//用户处于启用状态,加密后判断输入的密码和数据库保存的密码是否相同
		String inputPassword = MD5.create().digestHex(adminLoginVO.getPassword());
		//输入密码错误
		if(!adminVO.getPassword().equals(inputPassword)){
			return ResponseVO.error("手机号码或者用户密码不正确");
		}

		//此时用户登录成功,生成唯一令牌 token
		Map<String,Object> claimMap = new HashMap<>(BaseProps.MAP_SMALL);
		//token载荷信息
		// TODO: 2022/1/6 token令牌的载荷补充完整
		claimMap.put("id", adminVO.getId());
		//生成token,并设置保存时间
		String token = TokenBuilder.buildToken(claimMap, BaseProps.AUTH_SEC);
		//以token为key,adminVO为value 保存到redis中
		if(RedisUtil.save(token, adminVO, BaseProps.AUTH_SEC)){
			//登录成功,将 token 返回给用户,绑定到 http请求的消息头部分的:Authorization中
			//response.setHeader(BaseProps.TOKEN_SEAT,token);
			//token放在返回信息中,由前端放在httpservlet中
			adminLoginVO.setToken(token);
			return ResponseVO.success(adminLoginVO);
		}

		return ResponseVO.error("系统用户登录失败");
	}

	/**
	 *  根据token获得用户视图信息
	 * @param token 用户登录令牌
	 * @return
	 * @throws Exception
	 */
	@GetMapping("/info")
	@ApiOperation(value = "根据token获得用户视图信息")
	public ResponseVO getInfo(String token) throws Exception{
		AdminVO adminVO = new AdminVO();

		//验证 token
		Map<String, Object> claimMap = TokenBuilder.verifyToken(token);
		if( claimMap ==null ){
			//token 验证不通过
			return ResponseVO.illegalToken("token非法");
		}

		//从 redis 中获得用户视图信息
		adminVO = (AdminVO) RedisUtil.find(token,AdminVO.class);

		if(adminVO!=null){
			//用户已登录
			return ResponseVO.success(adminVO);
		}
		//用户未登录
		return ResponseVO.illegalToken("用户登录超时,请重新登录");
	}


}
