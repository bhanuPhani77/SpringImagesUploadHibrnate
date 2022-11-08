package com.bhanu.controller;

import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.bhanu.dto.User_Dto;
import com.bhanu.entity.UserDet;
import com.bhanu.service.userServiceImpl;

@Controller
@MultipartConfig(maxFileSize = 162342)
public class userController {
	@Autowired
	userServiceImpl impl;

	@GetMapping("/")
	public String showHomePage() {
		return "home";
	}

	@GetMapping("/saveuser")
	public String userSave(@ModelAttribute("user_Dto") User_Dto dto, Model m) {
		m.addAttribute(new User_Dto());
		return "uploadimage";
	}

	@PostMapping("/savesuccess")
	public String userSaved(@ModelAttribute("user_Dto") User_Dto user_Dto, Model model, BindingResult  result) throws Throwable {
		UserDet det = new UserDet();
		if(result.hasErrors()) {
			return "uploadimage";
		}
		det.setFullName(user_Dto.getFullName());
		det.setImage(user_Dto.getImage().getBytes());
		impl.userDetSave(det);
		return "uploadimagesuccess";
	}

	@GetMapping("/user/show")
	public String showUsers(Model model) {
		List<User_Dto> user_list = impl.getUsers();
		model.addAttribute("list_users", user_list);
		return "showimage";
	}
}
