package com.clan.firdango.service;

import com.clan.firdango.dao.GiftCardDAO;
import com.clan.firdango.dao.UserDAO;
import com.clan.firdango.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.NoResultException;
import java.util.List;

/**
 * controller <-> service (@Transactional here)<-> multiple DAO <-> database
 */
@Service
public class UserService {
    private final UserDAO userDAO;
    private final GiftCardDAO giftCardDAO;

    @Autowired
    public UserService(UserDAO userDAO, GiftCardDAO giftCardDAO) {
        this.userDAO = userDAO;
        this.giftCardDAO = giftCardDAO;
    }

    @Transactional
    public List<User> getUsers() {
        return userDAO.getUsers();
    }

    @Transactional
    public void saveUser(User user) {
        userDAO.saveUser(user);
    }

    @Transactional
    public User getUser(int id) {
        return userDAO.getUser(id);
    }

    @Transactional
    public User getUserByEmail(String email) {
        return userDAO.getUserByEmail(email);
    }

    @Transactional
    public void deleteUser(int id) {
        userDAO.deleteUser(id);
    }

    @Transactional
    public void setReceiveNewsletter(int id, boolean choice) {
        userDAO.setReceiveNewsletter(id, choice);
    }

    @Transactional
    public List<String> getAllEmails() {
        return userDAO.getAllEmails();
    }

    @Transactional
    public List<String> getNewsletterEmails() {
        return userDAO.getNewsletterEmails();
    }

    @Transactional
    public double redeemGiftCard(int userId, String code) {
        User user = userDAO.getUser(userId);
        double balance = user.getBalance();
        try {
            double cardValue = giftCardDAO.getBalance(code);
            userDAO.setBalance(userId, user.getBalance() + cardValue);
            giftCardDAO.emptyBalance(code);
            return balance + cardValue;
        } catch (NoResultException e) {
            return balance;
        }
    }
}
