package model;

public class Acc {

	private int accid;
	private String accname;
	private String accpass;
	private String accrole;
	private String accmail;
	
	public int getId() {
		return accid;
	}
	public void setId(int accid) {
		this.accid = accid;
	}
	public String getName() {
		return accname;
	}
	public void setName(String accname) {
		this.accname = accname;
	}
	public String getPass() {
		return accpass;
	}
	public void setPass(String accpass) {
		this.accpass = accpass;
	}
	public String getRole() {
		return accrole;
	}
	public void setRole(String accrole) {
		this.accrole = accrole;
	}
	public String getMail() {
		return accmail;
	}
	public void setMail(String accmail) {
		this.accmail = accmail;
	}
	
}
