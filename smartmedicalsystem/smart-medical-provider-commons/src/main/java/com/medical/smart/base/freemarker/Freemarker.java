package com.medical.smart.base.freemarker;

import com.medical.smart.base.freemarker.base.Entity;
import com.medical.smart.base.freemarker.base.Result;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * <b>自动生成 medical_db 下的表对应的实体类-</b>
 * <b>运行即可,不需要输入</b>
 * @author 王晗
 * @version 1.0.0
 */
public class Freemarker {

	private static String packageName ="com.medical.smart.base.freemarker.result"; //包结构

	public static void main(String[] args) {
		List<String> tableList = new ArrayList<>();                     //表名集合
		List<String> commentList = new ArrayList<>();                   //表的注释信息
		//获得数据库连接对象
		Connection connection = ConnectionUtil.getConnection();
		String sql ="select table_name'tableName',table_comment'tableComment' from information_schema.tables where table_schema='medical_db'";
		//查询 medical_db 下所有表名
		try{
			//创建查询对象
			PreparedStatement ps = connection.prepareStatement(sql);
			//获得查询结果集
			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()){
				//将查询到的表名,记录到集合中
				tableList.add(resultSet.getString("tableName"));
				commentList.add(resultSet.getString("tableComment"));
			}
		} catch (Exception e){
			e.printStackTrace();
		}

		//循环查询到的表名,生成对应的实体类
		for(int index=0; index<tableList.size(); index++) {
			//模板信息
			Entity marker = new Entity();
			//查询结果集合
			List<Result> list = new ArrayList<>();

			sql = "select column_name'name',data_type'type',column_comment'comment' "
					+ "from information_schema.columns where table_schema='medical_db' " +
					"and table_name= ? order by ordinal_position asc";

			//创建查询对象
			PreparedStatement ps;
			try {
				//拼接SQL语句
				ps = connection.prepareStatement(sql);
				ps.setString(1, tableList.get(index));
				//查询表的字段
				ResultSet resultSet = ps.executeQuery();
				//解析查询结果得到表的字段信息
				while (resultSet.next()) {
					String name = resultSet.getString("name");
					String type = resultSet.getString("type");
					String comment = resultSet.getString("comment");
					//忽略 BaseEntity 的字段
					if ("status".equalsIgnoreCase(name)
							|| "createdBy".equalsIgnoreCase(name)
							|| "createdTime".equalsIgnoreCase(name)
							|| "modifiedBy".equalsIgnoreCase(name)
							|| "modifiedTime".equalsIgnoreCase(name)) {
						continue;
					}
					//将sql类型,修改为java对应的类型
					if ("varchar".equalsIgnoreCase(type)) {
						type = "String";
					} else if ("int".equalsIgnoreCase(type)) {
						type = "Long";
					} else if ("decimal".equalsIgnoreCase(type)) {
						type = "Double";
					} else if ("date".equalsIgnoreCase(type) || "timestamp".equalsIgnoreCase(type) || "dateTime".equalsIgnoreCase(type)) {
						type = "Date";
					}
					Result result = new Result(name, type, comment);
					//将表的字段信息添加到集合中
					list.add(result);
				}
				marker.setPackageName(packageName);
				marker.setPropertyList(list);
				marker.setTableName(tableList.get(index));
				marker.setTableComment(commentList.get(index));
				//将表明中_后以为改为大写,同时删除_作为实体类名
				String[] strs = tableList.get(index).split("_");
				System.out.println(strs);
				//实体类名
				String className = "";
				if(strs.length>1){
					for (int i = 1; i < strs.length; i++) {
						String nameStr = strs[i];
						nameStr = nameStr.substring(0, 1).toUpperCase() + nameStr.substring(1,nameStr.length());
						className = className + nameStr;
					}
				} else {
					className=tableList.get(index).substring(0, 1).toUpperCase()+tableList.get(index).substring(1);
				}

				marker.setClassName(className);
				//每个表的模板信息已经填写完成,调用方法,写出实体类
				FreeMarkerUtil.doFreeMarker(marker);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}
}
