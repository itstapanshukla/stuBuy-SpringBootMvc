package com.service.mailservices;

import java.io.File;
import java.io.FileInputStream;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class MailSenderUtility {

	@Autowired
	private JavaMailSender javaMailSender;

	public void sendEmail(String username, String mail) throws MessagingException {

		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(mail);
		msg.setSubject("stuBuy");
		msg.setText(username + " " + "Welcome to stuBuy");
		javaMailSender.send(msg);
		htmlPage(username, mail);

	}

	public void htmlPage(String username, String mail) throws MessagingException {
		MimeMessage msg = javaMailSender.createMimeMessage();

		MimeMessageHelper helper = new MimeMessageHelper(msg, true);

		helper.setTo(mail);

		helper.setSubject("stuBuy");

		helper.setText(username + "<h1>Welcome to stuBuy</h1>", true);

		// helper.addAttachment("helloword.png",
		// new File("C:\\Users\\Nafees Abdullah\\Pictures\\Screenshots\\images.png"));

		javaMailSender.send(msg);

	}
}
