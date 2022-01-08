<template>
  <div id="login_div">
    <el-container>
      <el-header>
        <h1>智慧医疗系统-登录页面</h1>
      </el-header>
      <el-main>
        <div id="loign_input">
          <el-form :model="loginForm" ref="loginForm" label-width="0" status-icon :rules="rules">
            <el-form-item style="text-align: center;color: cornflowerblue;font-family: '宋体'" >
              <h1>系统用户登录</h1>
            </el-form-item>
           <!--
              prop 绑定的验证方式,必须和绑定的数据名一致 cellphone
            -->
            <el-form-item label="手机号码" label-width="100px" prop="cellphone">
              <el-input type="text" style="width: 200px;margin-left: 0" v-model="loginForm.cellphone" autocomplete="off" > </el-input>
            </el-form-item>
            <el-form-item label="登录密码" label-width="100px" prop="password">
              <el-input type="password" style="width: 200px;margin-left: 0" v-model="loginForm.password" autocomplete="off" > </el-input>
            </el-form-item>
            <el-form-item>
              <el-button style="margin:20px 50px 0 0" type="primary" @click="submitForm('loginForm')">提交</el-button>
              <el-button @click="resetForm('loginForm')">重置</el-button>
            </el-form-item>
          </el-form>
        </div>
        <div style="padding-top: 50px;color: dodgerblue" id="login_description">
          <h1>西安加油!</h1>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;author:三秦青年</p>
          <h4>你相信光吗?</h4>
          <h4>相信!&nbsp;我们都能变成光</h4>
          <h4>齐心协力</h4>
          <h4>攻克时艰</h4>
          <h4>我们一定行!</h4>
        </div>
      </el-main>
      <el-footer></el-footer>
    </el-container>

    <el-dialog
      title="提示"
      :visible.sync="dialogVisible"
      width="30%"
      :before-close="handleClose">
      <span>登录成功</span>
      <span slot="footer" class="dialog-footer">
    <el-button @click="dialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="dialogVisible = false">确 定</el-button>
  </span>
    </el-dialog>

  </div>
</template>

<script>
export default {
  name: "Login",

  //数据
  data(){
    var validateCellphone=(rule, value, callback) => {
      if (value==='') {
        callback(new Error('手机号码不能为空'));
      } else if (/1[0-9]{10}/.test(value)){
        //正则验证通过
       callback();
      } else{
        //正则验证通过
        callback(new Error('手机号码格式不正确'));
      }
    };
    var validatePassword=(rule, value, callback)=>{
      if (value==='') {
        callback(new Error('登录密码不能为空'));
      } else if (/[a-zA-Z0-9_#]{6,}/.test(value)){
        //正则验证通过
        callback();
      } else{
        //正则验证通过
        callback(new Error('登录密码格式不正确'));
      }
    }
    return {
      loginForm:{
        cellphone: '',
        password: '',
      },
      //弹出框
      dialogVisible: false,
      rules:{
        cellphone:[
          {validator: validateCellphone, trigger: 'blur'}
        ],
        password:[
          {validator: validatePassword, trigger: 'blur'}
        ]
      }
    }
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          // 本地校验成功,提交登录信息
          this.$axios.post("http://localhost/system/consumer/admin/login",this.loginForm)
              .then(resp =>{
                let responseVO = resp.data;
                console.log(responseVO);
                if (responseVO.code==20000){
                  //登录成功
                  this.dialogVisible = true;
                } else{
                  //登录失败
                  alert(responseVO.data);
                }
          });
        } else {
          return false;
        }
      });
    },
    resetForm(formName){
      this.$refs[formName].resetFields();
    },

    handleClose(done) {
      //点击弹窗以外,依旧算登录成功
      this.dialogVisible = false;
      // this.$confirm('确认关闭？')
      //   .then(_ => {
      //     done();
      //   })
      //   .catch(_ => {});
    }

  }
}
</script>


<style scoped>
#login_div {
  height: 770px;
}

#loign_input{
  width: 400px;
  height: 350px;
  /*border:2px solid #00FFFF;*/
  box-shadow: 15px 15px 15px #00FFFF;
  background-color: #FFFFDD;
  float: left;
  margin-left: 150px;
  margin-top: 100px;
}

</style>
