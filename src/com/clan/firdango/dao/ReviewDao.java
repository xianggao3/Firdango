package com.clan.firdango.dao;

import com.clan.firdango.entity.Review;
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
public class ReviewDao {
    private final SessionFactory sessionFactory;

    @Autowired
    public ReviewDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Review> getReviewsByUser(int userId) {
            Session currentSession = sessionFactory.getCurrentSession();
            Query<Review> theQuery = currentSession.createQuery("from Review where userId = :userId order by timeOfReview desc", Review.class);
            theQuery.setParameter("userId", userId);
            return theQuery.getResultList();
    }

    public void saveReview(Review review) {
        Session currentSession = sessionFactory.getCurrentSession();
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
}
