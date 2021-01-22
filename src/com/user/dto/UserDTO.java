package com.user.dto;

public class UserDTO {
	private int udix;
	private String uid;
	private String upw;
	private String uname;
	private String uphone;
	private String uaddress;
	private String uemerg;
	private int utype;
	private String ubirth;
	
	public UserDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserDTO(String uid, String upw) {
		super();
		this.uid = uid;
		this.upw = upw;
	}

	public UserDTO(int udix, String uid, String upw, String uname, String uphone, String uaddress, String uemerg,
			int utype, String ubirth) {
		super();
		this.udix = udix;
		this.uid = uid;
		this.upw = upw;
		this.uname = uname;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.uemerg = uemerg;
		this.utype = utype;
		this.ubirth = ubirth;
	}

	public int getUdix() {
		return udix;
	}

	public void setUdix(int udix) {
		this.udix = udix;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUaddress() {
		return uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

	public String getUemerg() {
		return uemerg;
	}

	public void setUemerg(String uemerg) {
		this.uemerg = uemerg;
	}

	public int getUtype() {
		return utype;
	}

	public void setUtype(int utype) {
		this.utype = utype;
	}

	public String getUbirth() {
		return ubirth;
	}

	public void setUbirth(String ubirth) {
		this.ubirth = ubirth;
	}

}
