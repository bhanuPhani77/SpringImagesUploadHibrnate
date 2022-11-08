package com.bhanu.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User_Dto {
	
	private Integer userId;
	private String fullName;
	private MultipartFile image;
	private String base64Image;
}
