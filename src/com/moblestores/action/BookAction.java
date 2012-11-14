package com.moblestores.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.struts2.ServletActionContext;

import com.moblestores.po.BookInfo;
import com.moblestores.po.UserInfo;
import com.moblestores.service.BookService;
import com.moblestores.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 声明列表对象
	List<BookInfo> booklistshow;


	// 从页面接受参数
	private BookInfo bcondition;
	
	// 声明BookService的对象
    BookService bookserv= new BookService();
	
	//获取response对象
	HttpServletResponse response= ServletActionContext.getResponse();
	
	//获取request对象
	HttpServletRequest request= ServletActionContext.getRequest();
	
	//获取session对象
	HttpSession session=request.getSession();
	

	//上传文件存放路径
	private final static String UPLOADDIR_BOOK = "/upload/books";
	
	//上传文件集合
	private List<File> file;
	
	//上传文件名集合
	private List<String> fileFileName;
	
	//上传文件内容类型集合
	private List<String> fileContentType;
	
	private String base= ServletActionContext.getRequest().getRealPath(UPLOADDIR_BOOK);
    private  String[] namestring = new String[2];
    
    
	
	public List<BookInfo> getBooklistshow() {
		return booklistshow;
	}

	public void setBooklistshow(List<BookInfo> booklistshow) {
		this.booklistshow = booklistshow;
	}
	
	public BookInfo getBcondition() {
		return bcondition;
	}

	public void setBcondition(BookInfo bcondition) {
		this.bcondition = bcondition;
	}


	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String execute() throws Exception {
		
		for (int i = 0; i < file.size(); i++) {
			//循环上传每个文件
			uploadFile(i);
		}
		
		   System.out.println("Start");
		   System.out.println(namestring[0]);
		   System.out.println(namestring[1]);
		   
	    if("book-add-ok"==addBook(namestring[0],namestring[1])){
	    	return "success";
	    	
	    }
	    else
		return "input";
	}

	//执行上传功能
	private void uploadFile(int i) throws FileNotFoundException, IOException {
		try {
			InputStream in = new FileInputStream(file.get(i));
	
			String dir = ServletActionContext.getRequest().getRealPath(UPLOADDIR_BOOK);
		        
			
			System.out.println(this.getFileFileName().get(i));
			File uploadFile = new File(dir, this.getFileFileName().get(i));
			
			System.out.println(i);
			
			namestring[i]=uploadFile.toString();
			
			
			OutputStream out = new FileOutputStream(uploadFile);
			
			System.out.println(uploadFile);
			

			byte[] buffer = new byte[1024 * 1024];
			
			int length;
			
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}

			in.close();
			out.close();
		} catch (FileNotFoundException ex) {
			ex.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}
	
   public String addBook(String imgurl,String bookpath){
     boolean uadd=bookserv.addBook(bcondition,imgurl,bookpath);
     System.out.println(uadd);
     if(uadd==true){
     	return "book-add-ok";
    }
     else
    	 
     return null;

   }
   
	/**
	 * 所有书籍信息显示
	 * @param 
	 * @return
	 */
	public String showAllBooks() {
		
		booklistshow=bookserv.getAllBooks();
	
		return "book-list-all";
	}
	
}
