package com.gy.service;

import com.gy.model.User;


public interface UserService {

	int insert(User user);
	 
	User selectByUsername(String username);
	
	User selectByUsernameAndPassword(String username,String password);
}
