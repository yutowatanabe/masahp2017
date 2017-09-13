package jp.co.masa.util;

import java.io.IOException;
import java.util.List;

import com.google.appengine.api.mail.MailService;
import com.google.appengine.api.mail.MailServiceFactory;

/**
 * メール送信用テンプレート
 * @author Senbus
 *
 */
public class AccountRegistrationUtil {

   /** 送信者情報 */
   private String FROM_ADDRESS_HONSYA ="senbus@hilo-sendai-tours.com";
   /** BCC情報*/
   private String FROM_ADDRESS_MASA ="sendaimasa@hilo-sendai-tours.com";
   /** お客様向け件名*/
   private String SEND_MAIL_TITELE = "会員登録内容確認のメール";

   /** メール本文*/

   private String USER_NAME = null;
   private String USER_MAIL_ADDRESS =null;
   private String USER_BIRTH_DATE = null;
   private String USER_ADDRESS =null;
   private String USER_PHONE_NUMBER =null;



   public void registrationMail(String userMail) throws Exception {
       MailService.Message msg = new MailService.Message();
       MailService sendmail = MailServiceFactory.getMailService();
       //送信者
       msg.setSender(FROM_ADDRESS_HONSYA);

       //あて先
       msg.setTo(userMail);
       //BCC
       msg.setBcc(FROM_ADDRESS_MASA);
       //件名
       msg.setSubject(SEND_MAIL_TITELE);
       msg.setTextBody("");

       sendmail.send(msg);

       }
   public void registrationMail(List<String> userData) throws Exception {

       USER_NAME = userData.get(0);
       USER_MAIL_ADDRESS = userData.get(1);
       USER_BIRTH_DATE = userData.get(2);
       USER_ADDRESS =userData.get(3);
       USER_PHONE_NUMBER =userData.get(4);



       MailService.Message msg = new MailService.Message();
       MailService sendmail = MailServiceFactory.getMailService();
       //送信者
       msg.setSender(FROM_ADDRESS_HONSYA);

       //あて先
       msg.setTo(USER_MAIL_ADDRESS);
       //BCC
       msg.setBcc(FROM_ADDRESS_MASA);
       //件名
       msg.setSubject(SEND_MAIL_TITELE);

       String body =

                   "このメールはHILO SSENDAI TOURSでの"
                   + "\n 会員登録をされたお客様にお送りしています。"
                   + "\n "
                   + "\n このたびは弊社の会員登録(仮)をしていただき"
                   + "\n 誠にありがとうございます。"
                   + "\n "
                   + "\n --登録内容の確認--"
                   + "\n お客様氏名:"
                   + USER_NAME
                   + "\n メールアドレス:"
                   + USER_MAIL_ADDRESS
                   + "\n 生年月日:"
                   + USER_BIRTH_DATE
                   + "\n 住所:\n"
                   + USER_ADDRESS
                   + "\n 電話番号:"
                   + USER_PHONE_NUMBER
                   + "\n 以上\n"
                   + "\n\n 登録される情報に誤りがある場合は"
                   + "\n お手数ですが、下記メールアドレスまたは"
                   + "\n 電話番号までご連絡ください。"
                   + "\n\n 尚、登録完了は、お客様住所への会員証発送"
                   + "\n をもって代えさせていただきます。\n"
                   + "\n +++++++++++++++++++++++++++++++++++++++"
                   + "\n\n発行 : HILO SENDAI TOURS"
                   + "\n E-MAIL: sendaimasa@hilo-sendai-tours.com\n"
                   + "\n TEL   : 080-3753-9771"
                   + "\n 担当  : MASA"
                   + "\n +++++++++++++++++++++++++++++++++++++++";



       msg.setTextBody(body);
       try {
           // 送信
       sendmail.send(msg);

       } catch (IOException e) {
           return;
       }
   }

}
