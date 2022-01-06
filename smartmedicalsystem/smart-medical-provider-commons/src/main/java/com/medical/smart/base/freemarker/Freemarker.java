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

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
