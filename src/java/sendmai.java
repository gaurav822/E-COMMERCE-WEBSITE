/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author gaura
 */
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
public class sendmai {
public static void main(String[] args) {
String to="gauravdahal53@gmail.com";//change accordingly
//Get the session object
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class",
"javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");
Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication("gauravdahal53@gmail.com","GioneeP7Max");//Put your email id and password here
}
});
//compose message
try {
MimeMessage message = new MimeMessage(session);
message.setFrom(new InternetAddress("gauravdahal53@gmail.com"));//change accordingly
message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
message.setSubject("Hello");
message.setText("Testing.......");
//send message
Transport.send(message);
System.out.println("message sent successfully");
} catch (MessagingException e) {throw new RuntimeException(e);}
}
}