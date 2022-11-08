package com.bhanu.service;

import java.util.List;

import com.bhanu.dto.User_Dto;
import com.bhanu.entity.UserDet;


public interface userService {
	public void userDetSave(UserDet det);
	public List<User_Dto> getUsers();
}
