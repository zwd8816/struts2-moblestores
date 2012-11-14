package com.moblestores.po;

import java.util.Date;

public class BookInfo {
	
	//书籍编号
	private String book_id;
	
	//书名
	private String book_title;
    
    //书籍简介
	private String book_description;
	
	//书面图片
	private String book_img_url;
	
	
	//书籍路径
	private String book_path;
	
	//创建时间
	private Date book_create_data;


	
	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String bookId) {
		book_id = bookId;
	}

	public String getBook_title() {
		return book_title;
	}

	public void setBook_title(String bookTitle) {
		book_title = bookTitle;
	}

	public String getBook_description() {
		return book_description;
	}

	public void setBook_description(String bookDescription) {
		book_description = bookDescription;
	}

	public String getBook_img_url() {
		return book_img_url;
	}

	public void setBook_img_url(String bookImgUrl) {
		book_img_url = bookImgUrl;
	}

	public String getBook_path() {
		return book_path;
	}

	public void setBook_path(String bookPath) {
		book_path = bookPath;
	}

	public Date getBook_create_data() {
		return book_create_data;
	}

	public void setBook_create_data(Date bookCreateData) {
		book_create_data = bookCreateData;
	}


	
}
