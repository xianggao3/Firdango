package com.clan.firdango.dao;

import com.clan.firdango.entity.GiftCard;
import org.apache.commons.lang3.RandomStringUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by marvinyan on 5/12/2017.
 */
@Repository
public class GiftCardDAO {
    private final SessionFactory sessionFactory;

    @Autowired
    public GiftCardDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public double getBalance(String code) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("select balance from GiftCard where gcCode = :code");
        query.setParameter("code", code);
        return (double) query.getSingleResult();
    }

    public GiftCard createGiftCard(double balance) {
        Session currentSession = sessionFactory.getCurrentSession();
        String code = "";

        // Ensure unique gift card code
        boolean unique = false;
        while (!unique) {
            code = RandomStringUtils.randomAlphanumeric(14).toUpperCase();
            code = code.substring(0, 4) + "-" + code.substring(3, 9) + "-" + code.substring(9);

            Query query = currentSession.createQuery("from GiftCard where gcCode = :code");
            query.setParameter("code", code);

            if (query.uniqueResult() != null) {
                unique = true;
            }
        }

        GiftCard card = new GiftCard();
        card.setBalance(balance);
        card.setGcCode(code);
        currentSession.save(card);
        return card;
    }

    public void emptyBalance(String code) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("update GiftCard set balance = 0 where gcCode = :code");
        query.setParameter("code", code);
        query.executeUpdate();
    }
}
