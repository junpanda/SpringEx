package com.example.ex.lesson02.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.ex.lesson02.model.Review;

@Repository
public interface ReviewDAO {
	public Review selectReview(@Param("id") int id);
	
	public int insertReview(
			@Param("storeId")int storeId
			,@Param("menu")String menu
			,@Param("userName")String userName
			,@Param("point")double point
			,@Param("review")String review
			);
}
