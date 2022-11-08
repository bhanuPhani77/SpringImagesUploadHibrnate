package com.bhanu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="user")
public class UserDet {
	@Id
	@GeneratedValue
	private Integer userId;
	private String fullName;
	@Column(name="IMAGE",columnDefinition = "LONGBLOB")
	private byte[] image;
	private String base64Image;
	
}
