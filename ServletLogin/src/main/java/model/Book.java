package model;

import java.io.Serializable;

public class Book implements Serializable{

	private int bookid;
	private String booktitle;
	private String bookdesc;
	private String bookimg;
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBooktitle() {
		return booktitle;
	}
	public void setBooktitle(String booktitle) {
		this.booktitle = booktitle;
	}
	public String getBookdesc() {
		return bookdesc;
	}
	public void setBookdesc(String bookdesc) {
		this.bookdesc = bookdesc;
	}
	public String getBookimg() {
		return bookimg;
	}
	public void setBookimg(String bookimg) {
		this.bookimg = bookimg;
	}
	
	
}
