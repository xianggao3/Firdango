package com.clan.firdango.dao;

import com.clan.firdango.entity.Review;
import com.clan.firdango.entity.FavoriteReview;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by marvinyan on 5/6/2017.
 */
@Repository
public class ReviewDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public ReviewDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Review> getReviewsByUser(int userId) {
            Session currentSession = sessionFactory.getCurrentSession();
            Query<Review> theQuery = currentSession.createQuery("from Review where userId = :userId order by timeOfReview desc", Review.class);
            theQuery.setParameter("userId", userId);
            return theQuery.getResultList();
    }


    public List<Review> getReviewsByMovie(int movieId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Review> theQuery = currentSession.createQuery("from Review where movieId = :movieId order by timeOfReview desc", Review.class);
        theQuery.setParameter("movieId", movieId);
        return theQuery.getResultList();
    }

    public void saveReview(Review review) {
        Session currentSession = sessionFactory.getCurrentSession();
        ;
        currentSession.saveOrUpdate(review);
    }

    public Review getReview(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Review.class, id);
    }

    public void deleteReview(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from Review where id = :id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    public List<Review> getAllReviews() {
        Session currentSession = sessionFactory.getCurrentSession();
        String q = "FROM Review ORDER BY timeOfReview DESC";
        Query<Review> theQuery = currentSession.createQuery(q, Review.class);
        return theQuery.getResultList();
    }

    public void saveLike(FavoriteReview fr){
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(fr);
    }

    public void deleteLike(FavoriteReview fr){
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from FavoriteReview where userId = :uId and reviewId = :rId");
        query.setParameter("uId", fr.getUserId());
        query.setParameter("rId", fr.getReviewId());
        query.executeUpdate();
    }

    public List<FavoriteReview> getReviewsLikedByUser(int userId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<FavoriteReview> theQuery = currentSession.createQuery("from FavoriteReview where userId = :userId", FavoriteReview.class);
        theQuery.setParameter("userId", userId);
        return theQuery.getResultList();
    }

}
