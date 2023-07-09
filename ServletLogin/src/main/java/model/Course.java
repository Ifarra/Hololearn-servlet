package model;

import java.io.Serializable;

public class Course implements Serializable{

	private int courseid;
	private String coursetitle;
	private String coursetopic;
	private String courselink;
	public int getCourseid() {
		return courseid;
	}
	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}
	public String getCoursetitle() {
		return coursetitle;
	}
	public void setCoursetitle(String coursetitle) {
		this.coursetitle = coursetitle;
	}
	public String getCoursetopic() {
		return coursetopic;
	}
	public void setCoursetopic(String coursetopic) {
		this.coursetopic = coursetopic;
	}
	public String getCourselink() {
		return courselink;
	}
	public void setCourselink(String courselink) {
		this.courselink = courselink;
	}
	
	
	
//	public int getId() {
//		return courseid;
//	}
//	public void setId(int courseid) {
//		this.courseid = courseid;
//	}
//	public String getTitle() {
//		return coursetitle;
//	}
//	public void setTitle(String coursetitle) {
//		this.coursetitle = coursetitle;
//	}
//	public String getTopic() {
//		return coursetopic;
//	}
//	public void setTopic(String coursetopic) {
//		this.coursetopic = coursetopic;
//	}
//	public String getLink() {
//		return courselink;
//	}
//	public void setLink(String courselink) {
//		this.courselink = courselink;
//	}
//	
}
