package com.moblestores.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 业务跳转action类
 * @author 
 *
 */
public class ToolAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 跳转到业务逻辑页面
	 * @return
	 */
	public String business(){
		System.out.println("跳转成功!");
		return "bus";
	}

	/**
	 * 跳转到系统管理页面
	 * @return
	 */
	public String system(){
		System.out.println("跳转成功!");
		return "system";
	}
	
	/**
	 * 跳转到数据管理页面
	 * @return
	 */
	public String database(){
		System.out.println("跳转成功!");
		return "database";
	}
	
	/**
	 * 跳转到系统配置页面
	 * @return
	 */
	public String deploy(){
		System.out.println("跳转成功!");
		return "deploy";
	}
	
	/**
	 * 跳转到系统主页面
	 * @return
	 */
	public String main(){
		System.out.println("跳转成功!");
		return "main";
	}
	
	/**
	 * 跳转到登录页面
	 * @return
	 */
	public String index(){
		System.out.println("跳转成功!");
		return "index";
	}
}
