package com.moblestores.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.moblestores.po.BookInfo;
import com.moblestores.po.UserInfo;
import com.moblestores.util.ConnFactory;
import com.moblestores.util.StringUtils;


/**
 * 书籍信息的增删改查类
 * 
 * @author 
 * 
 */
public class BookInfoDao {
	
	/**
	 * 书籍信息的添加
	 * @param user 书籍信息的添加           
	 * @return
	 */
	public boolean addBook(BookInfo bookinfo,String imgurl,String bookpath) {

		// 声明连接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		try {
			// 添加数据语句
			String sql = "insert  into books(book_id,book_title,book_description,book_img_url,book_path,book_create_data)" + " values(?,?,?,?,?,?)";

			// 创建连接
			conn = ConnFactory.getConnection();

			// 创建实例
			pre = conn.prepareStatement(sql);
			
			pre.setString(1,StringUtils.getCharAndNumr(6));
			pre.setString(2, bookinfo.getBook_title());
		    pre.setString(3, bookinfo.getBook_description());
		    pre.setString(4,imgurl);
		    pre.setString(5,bookpath);
		    Date date= new Date();
			pre.setString(6, StringUtils.dateTimetoStr(date));
			
			
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
	 * 获取所有图书信息
	 * @param userinfo
	 * @return
	 */
	
	public List<BookInfo> getBooks() {

		// 声明链接
		Connection conn = null;

		// 声明实例
		PreparedStatement pre = null;

		// 声明结果集
		ResultSet resu = null;
		
		//声明list
		List<BookInfo> blist = null;

		try {
			String sql = "select * from books where 1=1";
			

			// 获取连接
			conn = ConnFactory.getConnection();

			// 获取实例
			pre = conn.prepareStatement(sql);
			
			// 执行
			resu = pre.executeQuery();

			//创建List实例
			blist = new ArrayList<BookInfo>();
			

			while(resu.next())
			{
				BookInfo bi=new BookInfo();
				bi.setBook_id(resu.getString("book_id"));
				bi.setBook_title(resu.getString("book_title"));
				bi.setBook_description(resu.getString("book_description"));
				bi.setBook_img_url(resu.getString("book_img_url"));
				bi.setBook_path(resu.getString("book_path"));
				bi.setBook_create_data(resu.getDate("book_create_data"));
				blist.add(bi);
				
			}
			
			return blist;
			
			


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnFactory.closeResultSet(resu);
			ConnFactory.closeStatement(pre);
			ConnFactory.closeConn(conn);
		}
		return null;

	}
	
	
	
	
	
	
	

}
