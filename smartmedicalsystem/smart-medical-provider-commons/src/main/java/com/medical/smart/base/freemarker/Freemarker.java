package com.medical.smart.base.freemarker;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.ibatis.annotations.Select;
import org.bouncycastle.operator.AADProcessor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Freemarker {

	private static String packageName ="com.medical.smart.base.freemarker.result"; //包结构
	private static String tableName;                                               //表明
	private static String className;                                               //类名

	public static void main(String[] args) {
		//控制台输入对象
		Scanner input = new Scanner(System.in);
		//查询结果集合
		List<Result> list = new ArrayList<>();

		//获得数据库连接对象
		Connection connection = ConnectionUtil.getConnection();


		System.out.println("请输入要生产对应实体类的表名:");
		tableName=input.next();              //无空格字符串
		System.out.println("请输入你要生成的类名:");
		className=input.next();
		//关闭输入流
		input.close();
		//拼写SQl语句
		String sql= "select column_name'name',data_type'type',column_comment'comment' "
				+"from information_schema.columns where table_schema='medical_db' and table_name= ? order by ordinal_position asc";
		try {
			//创建
			PreparedStatement pst = connection.prepareStatement(sql);
			//将表明填充到占位符 ? 中
			pst.setObject(1, tableName);
			//查询
			ResultSet resultSet = pst.executeQuery();
			while(resultSet.next()){
				String name = resultSet.getString("name");
				String type = resultSet.getString("type");
				String comment = resultSet.getString("comment");
				if("varchar".equals(type)){
					type="String";
				} else if("int".equals(type)){
					type="Long";
				} else if("date".equals(type) || "timestamp".equals(type)){
					type="Date";
				}
				Result result = new Result(name,type,comment);
				list.add(result);
			}
		//得到表字段结果集合 list

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
