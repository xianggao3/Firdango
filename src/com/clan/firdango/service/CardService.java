package com.clan.firdango.service;

import com.stripe.Stripe;
import com.stripe.exception.*;
import com.stripe.model.Charge;
import com.stripe.model.Customer;

import java.util.HashMap;
import java.util.Map;

public class CardService {
    private static final String STRIPE_API_KEY = "sk_test_9QacE44VdfO73XTcqGWRIIkd";

    public static void main(String[] args) throws CardException, APIException, AuthenticationException, InvalidRequestException, APIConnectionException {
        Stripe.apiKey = STRIPE_API_KEY;

        // Create customer
        // Token can only be used once, need to change before you can run this code again.
        //Map<String, Object> customerParams = new HashMap<>();
        //customerParams.put("description", "Customer for noah.taylor@example.com");
        //customerParams.put("source", "tok_1ADMrLGFEVPshlATKb9h8lEM"); // normally, you would get this from Stripe.js
        //Customer.create(customerParams);

        // Add CC info to customer
        Customer customer = Customer.retrieve("cus_AYUbqgmbB6Po4p");
        Map<String, Object> params = new HashMap<>();
        params.put("source", "tok_visa"); // tok_visa is a test token, real tokens cannot be reused
        customer.getSources().create(params);

        // CHARGE AMOUNT
        Map<String, Object> chargeParams = new HashMap<>();
        chargeParams.put("amount", 10000); // $100
        chargeParams.put("currency", "usd");
        chargeParams.put("description", "This is a test charge");
        chargeParams.put("source", customer.getDefaultSource());
        System.out.println(Charge.create(chargeParams));
    }
}