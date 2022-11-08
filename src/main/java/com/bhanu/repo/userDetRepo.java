package com.bhanu.repo;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bhanu.entity.UserDet;

public interface userDetRepo extends JpaRepository<UserDet, Integer>{
	@Query("select u from UserDet u where u.userId = :userId")
	public List<UserDet> findImageById(@Param("userId")Integer userId);
	
}
