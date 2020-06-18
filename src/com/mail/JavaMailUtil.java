package com.mail;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 public class JavaMailUtil extends HttpServlet {
	 static int getOtp1 = 0;
	 public static int getOtp(int a)
	 {
		
		 
		 return getOtp1;
	 }
	 
	
	public static void sendmail(String recipient) throws Exception {
		System.out.println("Preparing to  send Email");
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");

		String myAccountEmail = "prachiks2608@gmail.com";
		String password = "youarestrongest@prachi";

		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(myAccountEmail, password);
			}
		});
		Message message = prepareMessage(session, myAccountEmail, recipient);
		Transport.send(message);
		System.out.println("Message send successfully");
		
		
	}
	
	public static Message prepareMessage(Session session, String myAccountEmail, String recipient) {
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(myAccountEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			message.setSubject("My first mail ");
			Random rand = new Random();
			int otp=rand.nextInt(900000) + 100000;
			System.out.printf( " "+otp);
			message.setText(""+otp);
			getOtp1=otp;
			return message;
		} catch (Exception ex) {
			/* Logger.getLogger(.class.getName()).log(Level.SEVERE, null, ex); */
		}
		return null;
	}
	
}

