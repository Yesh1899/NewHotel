package com.infinite.hotel;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
public class Mail {

    public static void main(String[] args) {

        final String username = "canteeninfinite@gmail.com";
        final String password = "edfnuzfuumckjoot";

        Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
        
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("sravaninaragani426@gmail.com"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse("sumanth.kodithyala@gmail.com, pavani.kavuri8@gmail.com, sravaninaragani23@gmail.com")
            );
            message.setSubject("Hotel Booking Confirmation");
            message.setText("Dear Customer, Welcome to Hotel, Thankyou for choosing"
                    + "\n\n Please do not spam my email!");

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
