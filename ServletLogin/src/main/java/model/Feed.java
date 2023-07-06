package model;

public class Feed {

	private int feedid;
	private String feedname;
	private String feedmail;
	private String feedcomment;
	
	public int getId() {
		return feedid;
	}
	public void setId(int feedid) {
		this.feedid = feedid;
	}
	public String getName() {
		return feedname;
	}
	public void setName(String feedname) {
		this.feedname = feedname;
	}
	public String getMail() {
		return feedmail;
	}
	public void setMail(String feedmail) {
		this.feedmail = feedmail;
	}
	public String getComment() {
		return feedcomment;
	}
	public void setComment(String feedrole) {
		this.feedcomment = feedrole;
	}
	
}
