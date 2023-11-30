package com.Classes;

public class User {
	
	private int UID;
	private String email;
	private String password;
	private String UserName;
	
	public int getUID() {
		return UID;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public void setUID(int uID) {
		UID = uID;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	
	

}
