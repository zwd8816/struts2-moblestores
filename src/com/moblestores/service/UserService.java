package com.moblestores.service;

import java.util.List;

import com.moblestores.dao.UserInfoDao;
import com.moblestores.po.UserInfo;
import com.moblestores.util.PageBean;

public class UserService {
	
	//声明UserInfoDao类的一个对象
	UserInfoDao udao = new UserInfoDao();
	
	UserInfo uinfo=new UserInfo();
	


	public UserInfoDao getDao() {
		return udao;
	}
	
	

	public void setDao(UserInfoDao dao) {
		this.udao = dao;
	}
	
	/**
	 * 用户登录验证
	 */
	public boolean getUer(UserInfo userinfo){
		
		if(userinfo != null){
			return udao.getUserCheck(userinfo);
		}
		return false;
	}
	

	
	
	
	/**
	 * 获取所有用户信息
	 * @return
	 */
	/*
	public List<UserInfo> getAllUsers(){
		return udao.getUers();
		
	}
	*/
	
	/**
	 * 获取所有用户信息
	 * @return
	 */
	
	public List<UserInfo> getAllUsers(PageBean pb){
		return udao.getUers(pb);
	}
	
	
	public int getcounteUsers(){
		return udao.getcounteUsers();
	}
	
	
	/**
	 * 增加用户
	 * @param userinfo
	 * @return
	 */
	public boolean addUser(UserInfo userinfo){
		
		if(userinfo != null){
			if(userinfo.getUser_name()!= ""){
				//根据用户名查询用户信息
				boolean flag= udao.getUser(userinfo.getUser_name());
				if(!flag){
					return udao.addUser(userinfo);
				}
			}
		}
		return false;
	
	}
	
	/**
	 * 根据用户ID获得单个用户信息
	 * @param userId
	 * @return
	 */
	public UserInfo getUser(int userId){
		if(userId!=0){
			return udao.getUser(userId);
		}
		return null;
	}
	
	/**
	 * 更新用户信息
	 * @param ui
	 * @return
	 */
	
	public boolean updateUser(UserInfo ui) {
		System.out.println("start"+ui.getUser_id());
		if (ui != null) {
			if (ui.getUser_id() != 0) {
             System.out.println(ui.getUser_id());
				UserInfo upost = udao.getUser(ui.getUser_id());
				if (upost != null) {
					
					return udao.updateUser(ui);

				}

			}

		}
		return false;

	}
	
	
	/**
	 * 删除用户
	 * @param ui
	 * @return
	 */
	public boolean deleteUser(int userid) {
		if (userid != 0) {
			return udao.deleteUser(userid);	
		}
		return false;

	}
	
	
	


}
