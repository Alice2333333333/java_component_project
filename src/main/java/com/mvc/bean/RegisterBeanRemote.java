package com.mvc.bean;

import javax.ejb.Remote;

@Remote
public interface RegisterBeanRemote {
	public String getUserName();
	public void setUserName(String userName);
	public String getPassword();
	public void setPassword(String password);
}
