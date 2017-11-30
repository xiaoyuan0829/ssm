package com.gy.dao;

import org.apache.ibatis.annotations.Param;

import com.gy.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByUsername(String username);
    
    User selectByUsernameAndPassword(@Param("username")String username,@Param("password")String password);
}