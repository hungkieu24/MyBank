/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import jakarta.mail.Session;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Map;
import java.util.Properties;
import consts.Mail;

public class sendMail {

    public static void guiMail(String email, String noidung, String nameUser) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", Mail.HOST_NAME);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.port", Mail.TSL_PORT);

        Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                System.out.println("Xác minh gg thành công" + System.currentTimeMillis());
                return new PasswordAuthentication(Mail.APP_EMAIL, Mail.APP_PASSWORD);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            System.out.println("Time:" + System.currentTimeMillis());
            message.setSubject("Cảm ơn khách hàng đã quan tâm");
            String emailContent = "<!DOCTYPE html>\n"
                    + "<html lang=\"en\">\n"
                    + "<head>\n"
                    + "  <meta charset=\"UTF-8\">\n"
                    + "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                    + "  <title>Email Form</title>\n"
                    + "  <style>\n"
                    + "    body {\n"
                    + "      font-family: Arial, sans-serif;\n"
                    + "      margin: 0;\n"
                    + "      padding: 0;\n"
                    + "      display: flex;\n"
                    + "      justify-content: center;\n"
                    + "      align-items: center;\n"
                    + "      min-height: 100vh;\n"
                    + "      background-color: #f4f4f9;\n"
                    + "    }\n"
                    + "    .form-container {\n"
                    + "      background: #ffffff;\n"
                    + "      padding: 20px;\n"
                    + "      border-radius: 8px;\n"
                    + "      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);\n"
                    + "      width: 100%;\n"
                    + "      max-width: 400px;\n"
                    + "    }\n"
                    + "    .form-container h2 {\n"
                    + "      margin-bottom: 20px;\n"
                    + "      font-size: 24px;\n"
                    + "      text-align: center;\n"
                    + "    }\n"
                    + "    .form-group {\n"
                    + "      margin-bottom: 15px;\n"
                    + "    }\n"
                    + "    .form-group label {\n"
                    + "      display: block;\n"
                    + "      margin-bottom: 5px;\n"
                    + "      font-weight: bold;\n"
                    + "    }\n"
                    + "    .form-group input, .form-group textarea, .form-group button {\n"
                    + "      width: 100%;\n"
                    + "      padding: 10px;\n"
                    + "      border: 1px solid #ddd;\n"
                    + "      border-radius: 4px;\n"
                    + "      font-size: 16px;\n"
                    + "    }\n"
                    + "    .form-group button {\n"
                    + "      background-color: #4CAF50;\n"
                    + "      color: #ffffff;\n"
                    + "      font-weight: bold;\n"
                    + "      cursor: pointer;\n"
                    + "      border: none;\n"
                    + "    }\n"
                    + "    .form-group button:hover {\n"
                    + "      background-color: #45a049;\n"
                    + "    }\n"
                    + "  </style>\n"
                    + "</head>\n"
                    + "<body>\n"
                    + "  <div class=\"form-container\">\n"
                    + "    <h2>Contact Us</h2>\n"
                    + "    <form action=\"submit_email.php\" method=\"POST\">\n"
                    + "      <div class=\"form-group\">\n"
                    + "        <label for=\"email\">Your Email:</label>\n"
                    + "        <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"Enter your email\" required>\n"
                    + "      </div>\n"
                    + "      <div class=\"form-group\">\n"
                    + "        <label for=\"subject\">Subject:</label>\n"
                    + "        <input type=\"text\" id=\"subject\" name=\"subject\" placeholder=\"Enter the subject\" required>\n"
                    + "      </div>\n"
                    + "      <div class=\"form-group\">\n"
                    + "        <label for=\"message\">Message:</label>\n"
                    + "        <textarea id=\"message\" name=\"message\" placeholder=\"Write your message\" rows=\"4\" required></textarea>\n"
                    + "      </div>\n"
                    + "      <div class=\"form-group\">\n"
                    + "        <button type=\"submit\">Send Email</button>\n"
                    + "      </div>\n"
                    + "    </form>\n"
                    + "  </div>\n"
                    + "</body>\n"
                    + "</html>";

            System.out.println("Time:" + System.currentTimeMillis());
            message.setContent(emailContent, "text/html; charset=UTF-8");
            System.out.println("Time:" + System.currentTimeMillis());
            Transport.send(message);
            System.out.println("mail được gửi" + System.currentTimeMillis());

        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

 public static void guiSupport( String noidung, String tieuDe,String emailGui) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", Mail.HOST_NAME);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.port", Mail.TSL_PORT);

        Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                System.out.println("Xác minh gg thành công" + System.currentTimeMillis());
                return new PasswordAuthentication(Mail.APP_EMAIL, Mail.APP_PASSWORD);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(Mail.EMAIL_SP));
            System.out.println("Time:" + System.currentTimeMillis());
            message.setSubject(tieuDe+"--Người gửi:"+emailGui);
            
            String emailContent = noidung;

            System.out.println("Time:" + System.currentTimeMillis());
            message.setContent(emailContent, "text/html; charset=UTF-8");
            System.out.println("Time:" + System.currentTimeMillis());
            Transport.send(message);
            System.out.println("mail được gửi" + System.currentTimeMillis());

        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        guiSupport( "tôi đa", "adad", "adad");
    }

}
