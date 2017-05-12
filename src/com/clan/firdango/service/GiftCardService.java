package com.clan.firdango.service;

import com.clan.firdango.dao.GiftCardDAO;
import com.clan.firdango.entity.GiftCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by marvinyan on 5/12/2017.
 */
@Service
public class GiftCardService {
    private final GiftCardDAO giftCardDAO;

    @Autowired
    public GiftCardService(GiftCardDAO giftCardDAO) {
        this.giftCardDAO = giftCardDAO;
    }

    @Transactional
    public GiftCard createGiftCard(double balance) {
        return giftCardDAO.createGiftCard(balance);
    }

    @Transactional
    public double getBalance(String code) {
        return giftCardDAO.getBalance(code);
    }
}
