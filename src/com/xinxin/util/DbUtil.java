package com.xinxin.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	private static Connection conn ;
	public synchronized static Connection getConn() {
		try {
			if(conn!=null&&conn.isClosed()==false){
				return conn;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		// 驱动程序名
		String driver = "com.mysql.jdbc.Driver";
		// URL指向要访问的数据库名scutcs
		String url = "jdbc:mysql://127.0.0.1:3306/pin?useUnicode=true&characterEncoding=utf-8";
		// MySQL配置时的用户名
		String user = "root";
		// MySQL配置时的密码
		String password = "123456";
		// 加载驱动程序
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		// 连续数据库
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConn(){
		try {
			if(conn!=null&&conn.isClosed()==false){
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		Connection connection=getConn();
		System.out.println(connection);
	}
}
