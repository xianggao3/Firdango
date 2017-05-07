package com.clan.firdango.service;

import com.clan.firdango.dao.ReviewDao;
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
    private final ReviewDao reviewDao;

    @Autowired
    public ReviewService(ReviewDao reviewDao) {
        this.reviewDao = reviewDao;
    }

    @Transactional
    public List<Review> getReviewsByUser(int userId) {
        return reviewDao.getReviewsByUser(userId);
    }

    @Transactional
    public void saveReview(Review review) {
        reviewDao.saveReview(review);
    }

    @Transactional
    public Review getReview(int id) {
        return reviewDao.getReview(id);
    }

    @Transactional
    public void deleteReview(int id) {
        reviewDao.deleteReview(id);
    }
}
