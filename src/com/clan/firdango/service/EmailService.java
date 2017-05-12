package com.clan.firdango.service;

/**
 * Created by marvinyan on 4/27/2017.
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.List;
import java.util.Properties;

@Service
public class EmailService {
    private final UserService userService;

    private final String username = "noreply.firdango@gmail.com";
    private final String password = "pEnTatiL";
    private Properties props;

    @Autowired
    public EmailService(UserService userService) {
        this.userService = userService;
        props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
    }

    public void sendReceipt(String recipient, int amount, String description) {
        // TODO: Make an HTML email receipt
        // http://www.codejava.net/java-ee/javamail/send-e-mail-in-html-format-using-javamail-api
    }

    // Send any email in general
    public void sendEmail(String recipient, String subject, String body) {
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("noreply.firdango@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
            message.setSubject(subject);
            message.setText(body);

            Transport.send(message);
            System.out.println("Email successfully sent.");
        } catch (MessagingException e) {
            System.out.println("Error sending email: " + e.getMessage());
        }
    }

    public void sendMassEmail(String subject, String body) {
        List<String> mailingList = userService.getNewsletterEmails();

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
            for (String recipient : mailingList) {
                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress("noreply.firdango@gmail.com"));

                InternetAddress[] address = {new InternetAddress(recipient)};
                message.setRecipients(Message.RecipientType.TO, address);
                message.setSubject(subject);
                message.setText(body);
                message.saveChanges();
                Transport.send(message);
            }
            System.out.println("Mass mailing successful.");
        } catch (MessagingException e) {
            System.out.println("Error sending mass mail: " + e.getMessage());
        }
    }
}