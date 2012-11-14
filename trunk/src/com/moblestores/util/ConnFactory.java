package com.moblestores.util;


import java.sql.*;
/**
 * 数据库连接类
 * @author 
 *
 */
public class ConnFactory {

	/**
	 * 获取数据连接
	 * @return 数据连接
	 */
	public static Connection getConnection(){
		Connection conn = null;
		try {
			String url = "jdbc:mysql://127.0.0.1:3306/bookstores?"
				+ "useUnicode=true&characterEncoding=utf-8&user=root&password=123456";
			
			// 加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 创建连接
			conn = DriverManager.getConnection(url);
			
			return conn;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	/**
	 * 关闭连接
	 * @param conn
	 */
	public static void closeConn(Connection conn){
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 关闭数据库操作对象
	 * @param pst
	 */
	public static void closeStatement(PreparedStatement pst){
		if(pst != null){
			try {
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 关闭结果集
	 * @param res
	 */
	public static void closeResultSet(ResultSet res){
		if(res != null){
			try {
				res.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
}


