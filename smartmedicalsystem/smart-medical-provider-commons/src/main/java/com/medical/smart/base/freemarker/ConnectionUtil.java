package com.medical.smart.base.freemarker;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {
	private static String diver = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/medical_db?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai&useSSL=false&allowPublicKeyRetrieval=true";
	private static String username="root";
	private static String password = "15610570603wh";
	private static ThreadLocal<Connection> threadLocal=new ThreadLocal<>();

	static {
		try {
			Class.forName(diver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * <b>单例模式获得Connection对象</b>
	 * @return
	 */
	public static Connection getConnection(){
		Connection connection = threadLocal.get();
		if(connection==null){
			synchronized (connection){
				if(connection==null){
					try {
						connection = DriverManager.getConnection(url, username, password);
						threadLocal.set(connection);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}

		return connection;
	}

}
