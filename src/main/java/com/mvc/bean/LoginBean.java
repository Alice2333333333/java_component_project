package com.mvc.bean;

import javax.ejb.Stateless;

/**
 * Session Bean implementation class LoginBean
 */
@Stateless
public class LoginBean implements LoginBeanRemote {

    /**
     * Default constructor. 
     */
    public LoginBean() {
    }

    private String userName;
	private String password;

	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	 public String getPassword() {
		return password;
	}
	 
	 public void setPassword(String password) {
		this.password = password;
	}
}
