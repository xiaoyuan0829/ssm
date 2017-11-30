package com.gy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gy.dao.UserMapper;
import com.gy.model.User;
import com.gy.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int insert(User user) {
		return userMapper.insert(user);
	}

	@Override
	public User selectByUsername(String username) {
		return userMapper.selectByUsername(username);
	}

	@Override
	public User selectByUsernameAndPassword(String username, String password) {
		return userMapper.selectByUsernameAndPassword(username, password);
	}

}
