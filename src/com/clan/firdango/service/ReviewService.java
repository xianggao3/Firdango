package com.clan.firdango.service;

import com.clan.firdango.dao.ReviewDAO;
import com.clan.firdango.entity.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by marvinyan on 5/6/2017.
 */
@Service
public class ReviewService {
    private final ReviewDAO reviewDAO;

    @Autowired
    public ReviewService(ReviewDAO reviewDAO) {
        this.reviewDAO = reviewDAO;
    }

    @Transactional
    public List<Review> getReviewsByUser(int userId) {
        return reviewDAO.getReviewsByUser(userId);
    }

    @Transactional
    public List<Review> getReviewsByMovie(int movieId){
        return reviewDAO.getReviewsByMovie(movieId);
    }


    @Transactional
    public void saveReview(Review review) {
        reviewDAO.saveReview(review);
    }

    @Transactional
    public Review getReview(int id) {
        return reviewDAO.getReview(id);
    }

    @Transactional
    public void deleteReview(int id) {
        reviewDAO.deleteReview(id);
    }

    @Transactional
    public List<Review> getAllReviews() {
        return reviewDAO.getAllReviews();
    }
}
