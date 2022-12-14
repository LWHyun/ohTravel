package com.oracle.ohTravel.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oracle.ohTravel.review.domain.Review;
import com.oracle.ohTravel.review.model.ReviewDTO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ReviewDAOImpl implements ReviewDAO {

	private final SqlSession session;
	
	
	@Override
	public List<ReviewDTO> selectReview(ReviewDTO reviewDTO) {
		return session.selectList("reviewList",reviewDTO);
	}


	@Override
	public void updateReview(ReviewDTO reviewDTO) {
		session.update("updateReview", reviewDTO);
	}
	
	@Override
	public int reviewCnt(String rv_real_id) throws Exception {
		return session.selectOne("reviewCnt", rv_real_id);
	}


	@Override
	public double selectAvgRating(ReviewDTO reviewDTO) {
		return session.selectOne("selectAvgRating", reviewDTO);
	}

	
}
