package com.bhanu.service;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.stream.Collectors;
import org.apache.tomcat.util.codec.binary.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bhanu.dto.User_Dto;
import com.bhanu.entity.UserDet;
import com.bhanu.repo.userDetRepo;

@Service
public class userServiceImpl implements userService {
	@Autowired
	userDetRepo repo;

	@Override
	public void userDetSave(UserDet det) {
		repo.save(det);
	}

	@Override
	public List<User_Dto> getUsers() {
		List<User_Dto> userli = repo.findAll().stream().map(e -> {
			try {
				return new User_Dto(e.getUserId(), e.getFullName(), null,
						new String(Base64.encodeBase64(e.getImage()), "UTF-8"));
			} catch (UnsupportedEncodingException ex) {
				return null;
			}
		}).collect(Collectors.toList());
		return userli;
	}

}
