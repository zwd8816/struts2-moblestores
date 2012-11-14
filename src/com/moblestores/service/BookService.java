package com.moblestores.service;

import java.util.List;

import com.moblestores.dao.BookInfoDao;
import com.moblestores.po.BookInfo;

public class BookService {
	
	//声明UserInfoDao类的一个对象
	BookInfoDao bdao = new BookInfoDao();
	

	
	/**
	 * 获取所有图书信息
	 * @return
	 */
	
	public List<BookInfo> getAllBooks(){
		return bdao.getBooks();
		
	}
	
	public boolean addBook(BookInfo bookinfo,String imgurl,String bookpath){
		
		if(bookinfo != null){
			return bdao.addBook(bookinfo,imgurl,bookpath);
		}
		return false;
	
	}
	

}
