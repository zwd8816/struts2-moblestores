package com.moblestores.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.moblestores.po.UserInfo;
import com.moblestores.util.ConnFactory;
import com.moblestores.util.PageBean;
import com.moblestores.util.StringUtils;





/**
 * 用户信息的增删改查类
 * 
 * @author 
 * 
 */
public class UserInfoDao {
	
	/**
	 * 用户信息的添加
	 * @param user 员工信息的添加           
	 * @return
	 */
	public boolean addUser(UserInfo userinfo) {

		// 声明连接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		try {
			// 添加数据语句
			String sql = "insert  into users (user_name,user_passwd,create_time)" + " values(?,?,?)";

			// 创建连接
			conn = ConnFactory.getConnection();

			// 创建实例
			pre = conn.prepareStatement(sql);
			
			
			pre.setString(1, userinfo.getUser_name());
		       pre.setString(2, userinfo.getUser_passwd());
			Date date= new Date();
			pre.setString(3, StringUtils.dateTimetoStr(date));
			
			//System.out.println(sql);

			// 执行
			int i = pre.executeUpdate();
			if (i > 0) {
				return true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		return false;
	}
	
	
	
	/**
	 * 根据员工ID查询员工信息
	 * 
	 * @param id
	 * @return 员工信息
	 */
	public UserInfo getUser(int UserId) {

		// 声明链接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		// 声明结果集
		ResultSet resu = null;

		try {
			String sql = "select * from users where user_id =?";

			// 获取连接
			conn = ConnFactory.getConnection();

			// 获取实例
			pre = conn.prepareStatement(sql);

			pre.setInt(1, UserId);

			// 执行
			resu = pre.executeQuery();

			if (resu.next()) {
				UserInfo user = new UserInfo();
				user.setUser_id(resu.getInt("user_id"));
				user.setUser_name(resu.getString("user_name"));
				user.setUser_passwd(resu.getString("user_passwd"));
				return user;

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnFactory.closeResultSet(resu);
			
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		return null;

	}
	
	
	
	/**
	 * 根据用户登录账号验证用户名是否重复
	 * 
	 * @param 账号
	 * @return 成功或失败
	 */
	public boolean getUser(String username) {

		// 声明链接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		// 声明结果集
		ResultSet resu = null;

		try {
			String sql = "select * from users where user_name =?";

			// 获取连接
			conn = ConnFactory.getConnection();

			// 获取实例
			pre = conn.prepareStatement(sql);

			pre.setString(1, username);
			

			// 执行
			resu = pre.executeQuery();

			if (resu.next()) {
				
				return true;

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnFactory.closeResultSet(resu);
			
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		return false;

	}
	
	
	/**
	 * 根据用户登录账号和密码验证
	 * 
	 * @param 用户对象
	 * @return 成功或失败
	 */
	public boolean getUserCheck(UserInfo userinfo) {

		// 声明链接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		// 声明结果集
		ResultSet resu = null;

		try {
			String sql = "select * from users where user_name =? and user_passwd=?";

			// 获取连接
			conn = ConnFactory.getConnection();

			// 获取实例
			pre = conn.prepareStatement(sql);

			pre.setString(1, userinfo.getUser_name());
			pre.setString(2, userinfo.getUser_passwd());

			// 执行
			resu = pre.executeQuery();

			if (resu.next()) {
				
				return true;

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnFactory.closeResultSet(resu);
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		return false;

	}
	
	
	/**
	 * 获取所有用户信息
	 * @param userinfo
	 * @return
	 */
	
	public List<UserInfo> getUers(PageBean pb) {

		// 声明链接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		// 声明结果集
		ResultSet resu = null;
		
		//声明list
		List<UserInfo> ulist = null;

		try {
			String sql = "select * from users where 1=1 limit"+" "+(pb.getPageNow() * pb.getPageSize()- pb.getPageSize()) + ","
			+ pb.getPageSize(); 
			

			// 获取连接
			conn = ConnFactory.getConnection();

			// 获取实例
			pre = conn.prepareStatement(sql);
			
			// 执行
			resu = pre.executeQuery();

			//创建List实例
			ulist = new ArrayList<UserInfo>();
			

			while(resu.next())
			{
				UserInfo ui=new UserInfo();
				ui.setUser_id(resu.getInt("user_id"));			
				ui.setUser_name(resu.getString("user_name"));
				ui.setUser_passwd(resu.getString("user_passwd"));
				ui.setCreate_time(resu.getDate("create_time"));
				ulist.add(ui);
				
			}
	
			return ulist;
			
			


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnFactory.closeResultSet(resu);
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		return null;

	}
	
	
	
	
	
	/**
	 * 获取所有用户信息
	 * @param userinfo
	 * @return
	 */
	/*
	public List<UserInfo> getUers() {

		// 声明链接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		// 声明结果集
		ResultSet resu = null;
		
		//声明list
		List<UserInfo> ulist = null;

		try {
			String sql = "select * from users where 1=1";
			

			// 获取连接
			conn = ConnFactory.getConnection();

			// 获取实例
			pre = conn.prepareStatement(sql);
			
			// 执行
			resu = pre.executeQuery();

			//创建List实例
			ulist = new ArrayList<UserInfo>();
			

			while(resu.next())
			{
				UserInfo ui=new UserInfo();
				ui.setUser_id(resu.getInt("user_id"));			
				ui.setUser_name(resu.getString("user_name"));
				ui.setUser_passwd(resu.getString("user_passwd"));
				ui.setCreate_time(resu.getDate("create_time"));
				ulist.add(ui);
				
			}
	
			return ulist;
			
			


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnFactory.closeResultSet(resu);
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		return null;

	}
	
	*/
	public int getcounteUsers(){
		//声明一个连接对象
    	Connection conn=null;
    	
    	//申明一个实例对象
    	PreparedStatement pst=null;
    	ResultSet res=null;
    	
    	try{
    		//声明一个sql
    		String sql="select count(*) from users where 1=1";
    		
    		//创建连接
    		conn=ConnFactory.getConnection();
    		
    		//获取连接实例
    		pst=conn.prepareStatement(sql);
    		
    	
    		
    		//执行添加
    		res=pst.executeQuery();
    		if(res.next()){
    			return  res.getInt(1);
    		}

    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		ConnFactory.closeResultSet(res);
    		ConnFactory.closeStatement(pst);
    		ConnFactory.closeConn(conn);
    	}
		return 0;

	}
	
	/**
	 * 更新用户信息
	 * @param userinfo
	 * @return
	 */
    public boolean updateUser(UserInfo userinfo){
		
		//声明连接
		Connection conn = null;
		
		//声明实例
		PreparedStatement pre = null;
		
		try {
			
			String sql = "update users set user_name=?,user_passwd=?,create_time=?" + "where user_id=?";
			
			//创建连接
			conn = ConnFactory.getConnection();
			
			//创建实例
			pre = conn.prepareStatement(sql);
			
			pre.setString(1, userinfo.getUser_name());
			pre.setString(2, userinfo.getUser_passwd());
			Date date= new Date();
			pre.setString(3, StringUtils.dateTimetoStr(date));
			pre.setInt(4, userinfo.getUser_id());
			
			//执行
			int i = pre.executeUpdate();
			if(i > 0){
				return true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		
		return false;
	}
	
	
    
   public boolean deleteUser(int userId){
	  
		//声明连接
		Connection conn = null;
		
		//声明实例
		PreparedStatement pre = null;
		
		try {
			
			String sql = "delete from users where user_id = ?";
			
			//创建连接
			conn = ConnFactory.getConnection();
			
			//创建实例
			pre = conn.prepareStatement(sql);
			
			pre.setInt(1, userId);
			
			// 执行
			int i = pre.executeUpdate();
			
			if (i > 0) {
				
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
			
		}	
		return false;
		
	}
	
	
	
	

}
