package com.moblestores.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.moblestores.po.UserInfo;
import com.moblestores.service.UserService;
import com.moblestores.util.PageBean;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 声明列表对象
	List<UserInfo> userlistshow;

	// 从页面接受参数
	private UserInfo ucondition;
	
	// 返回结果信息
	private String result;

	// 往页面传递参数
	private UserInfo ureader;

	// 声明UserService的对象
    UserService userserv= new UserService();
	
	//获取response对象
	HttpServletResponse response= ServletActionContext.getResponse();
	
	//获取request对象
	HttpServletRequest request= ServletActionContext.getRequest();
	
	//获取session对象
	HttpSession session=request.getSession();
	
	//创建一pagebena对象
	private PageBean pb=new PageBean();
	
	//页数控制		
	private String a="";
	
	//页数控制
	private String b="";
	
	
	public PageBean getPb() {
		return pb;
	}


	public void setPb(PageBean pb) {
		this.pb = pb;
	}


	public String getA() {
		return a;
	}


	public void setA(String a) {
		this.a = a;
	}


	public String getB() {
		return b;
	}


	public void setB(String b) {
		this.b = b;
	}


	public List<UserInfo> getUserlistshow() {
		return userlistshow;
	}


	public void setUserlistshow(List<UserInfo> userlistshow) {
		this.userlistshow = userlistshow;
	}
	
	public UserInfo getUcondition() {
		return ucondition;
	}


	public void setUcondition(UserInfo ucondition) {
		this.ucondition = ucondition;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}


	public UserInfo getUreader() {
		return ureader;
	}


	public void setUreader(UserInfo ureader) {
		this.ureader = ureader;
	}


	public UserService getUserserv() {
		return userserv;
	}


	public void setUserserv(UserService userserv) {
		this.userserv = userserv;
	}


	public HttpServletResponse getResponse() {
		return response;
	}


	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}


	public HttpServletRequest getRequest() {
		return request;
	}


	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}


	public HttpSession getSession() {
		return session;
	}


	public void setSession(HttpSession session) {
		this.session = session;
	}



	/**
	 * 默认进入
	 */
	@Override
	public String execute() throws Exception {
		
		if(ucondition.getUser_name()==null){
			return "login";
		}
		int t=userserv.getcounteUsers();
            pb.setTotalRows(t);
		
		
		pb.setTotalPages((t+pb.getPageSize()-1)/pb.getPageSize());
		
		if(pb.getPageNow()<1){
			pb.setPageNow(1);
			a="已是第一页";
		}else if(pb.getPageNow()>pb.getTotalPages()){
			pb.setPageNow(pb.getTotalPages());
			b="已是最后一页";
			
		}
		userlistshow=userserv.getAllUsers(pb);
		
		return "user-list-all";
		
	}
	
	
	/**
	 * 验证用户登录
	 * @return 成功或失败
	 */
	public String getUser(){
		
		response.setCharacterEncoding("utf-8");
		boolean mark=userserv.getUer(ucondition);
		
		HttpServletRequest request = ServletActionContext.getRequest();
		request.getSession().setAttribute("username", ucondition.getUser_name());
		
		if(mark){
			ureader=ucondition;
			session.setAttribute("user", ureader);
			
		}
		else{
			return "faile";
		}
		return "success";
		
	
	}
	
	/**
	 * 加载用户信息
	 * @return
	 */
	
	public String loadUser(){
		ureader=userserv.getUser(ucondition.getUser_id());
		return "user-update";
	}
	
	

	/**
	 * 用户账户修改
	 * @return
	 * @throws Exception 
	 */
	public String updateUser() throws Exception {
		
		boolean mark = userserv.updateUser(ucondition);
	
		// 查询所有用户信息
		//userlistshow=userserv.getAllUsers();

		//return "user-list-all";
	    return execute();
	}
	
	/**
	 * 用户信息显示
	 * @param 
	 * @return
	 */
/*	
	public String show() {
		int t=userserv.getcounteUsers();
		pb.setTotalRows(t);

		userlistshow=userserv.getAllUsers();
		return "user-list-all";
	}
	*/
	/**
	 * 增加用户
	 * @return
	 * @throws Exception 
	 */
    public String addUser() throws Exception{
    	
    	boolean uadd=userserv.addUser(ucondition);
		// 查询所有用户信息
		//userlistshow=userserv.getAllUsers();
		
		//int t=userserv.getcounteUsers();
		//pb.setTotalRows(t);

		//return "user-list-all";
    	return execute();
    }
    
    /**
     * 删除用户
     * @return
     * @throws Exception 
     */
    public String deleteUser() throws Exception{
    	
    	boolean uadd=userserv.deleteUser(ucondition.getUser_id());
		// 查询所有用户信息
		//userlistshow=userserv.getAllUsers();

		//return "user-list-all";
    	return execute();
    }
	
	
}
