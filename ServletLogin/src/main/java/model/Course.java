package model;

public class Course {

	private int courseid;
	private String coursetitle;
	private String coursetopic;
	private String courselink;
	
	public int getId() {
		return courseid;
	}
	public void setId(int courseid) {
		this.courseid = courseid;
	}
	public String getTitle() {
		return coursetitle;
	}
	public void setTitle(String coursetitle) {
		this.coursetitle = coursetitle;
	}
	public String getTopic() {
		return coursetopic;
	}
	public void setTopic(String coursetopic) {
		this.coursetopic = coursetopic;
	}
	public String getLink() {
		return courselink;
	}
	public void setLink(String courselink) {
		this.courselink = courselink;
	}
	
}
