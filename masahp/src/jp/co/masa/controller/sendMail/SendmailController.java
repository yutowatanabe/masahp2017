package jp.co.masa.controller.sendMail;

import java.util.ArrayList;
import java.util.List;

import jp.co.masa.util.AccountRegistrationUtil;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.controller.validator.Errors;
import org.slim3.controller.validator.Validators;

public class SendmailController extends Controller {



    /** 確認用メールアドレス */
    private String CHECK_MAIL = null;

    private String USER_NAME = null;
    private String USER_MAIL_ADDRESS =null;
    private String USER_BIRTH_DATE = null;
    private String USER_ADDRESS =null;
    private String USER_PHONE_NUMBER =null;
    private List<String> AccountRegistList;
    /** 登録完了メッセージ*/
    private String comp = "登録確認メールを送信しました。";

    @Override
    public Navigation run() throws Exception {
        // Postの場合のみ処理に遷移する
        if (isPost()) {

            // バリデータの設定
            Validators v = new Validators(request);
            v.add("userMail",v.required(),v.regexp("[\\w\\.\\-]+@(?:[\\w\\-]+\\.)+[\\w\\-]+"));
            v.add("checkMail",v.required(),v.regexp("^[\\w\\.\\-]+@(?:[\\w\\-]+\\.)+[\\w\\-]+"));
            v.add("userName", v.required());
            v.add("userBirthDate", v.required());
            v.add("userAddress", v.required());
            v.add("userPhoneNumber", v.required());




            // メールアドレスの入力チェック
            if (v.validate()) {
                    // 確認用メールアドレスの取得
                    CHECK_MAIL = asString("checkMail");
                    //お客様メールアドレスの取得
                    USER_MAIL_ADDRESS = asString("userMail");

                    USER_NAME = asString("userName");

                    USER_BIRTH_DATE = asString("userBirthDate");

                    USER_ADDRESS = asString("userAddress");

                    USER_PHONE_NUMBER = asString("userPhoneNumber");




                    // 入力値が正常で、緊急連絡メールアドレスと、確認メールアドレスが不一致な場合
                    if (!USER_MAIL_ADDRESS.equals(CHECK_MAIL)) {
                        // エラーメッセージを画面に返す
                        request.setAttribute("equalsMailerror","メールアドレスが一致しませんでした");
                        return forward("sendMail.jsp");

                }
            } else {
                // 入力値がエラーの場合
                Errors errors = v.getErrors();
                // エラーメッセージを返す
                request.setAttribute("userMailError", errors.get("userMail"));
                request.setAttribute("checkMailError", errors.get("checkMail"));
                request.setAttribute("userNamerError", errors.get("userName"));
                request.setAttribute("userBirthDateError", errors.get("userBirthDate"));
                request.setAttribute("userAddressError", errors.get("userAddress"));
                request.setAttribute("userPhoneNumberError", errors.get("userPhoneNumber"));
                return forward("sendMail.jsp");
            }
                try {
                    AccountRegistList = new ArrayList<String>();
                    AccountRegistList.add(USER_NAME);
                    AccountRegistList.add(USER_MAIL_ADDRESS);
                    AccountRegistList.add(USER_BIRTH_DATE);
                    AccountRegistList.add(USER_ADDRESS);
                    AccountRegistList.add(USER_PHONE_NUMBER);


                } catch (Exception e) {
                    return forward("sendMail.jsp");
                }
                if(!AccountRegistList.get(1).isEmpty()){
                    AccountRegistrationUtil ARU =new AccountRegistrationUtil();
                    ARU.registrationMail(AccountRegistList);
                    request.setAttribute("transmit", "登録確認メールをご確認ください");

            }
                request.setAttribute("comp", comp);
                request.setAttribute("userMail", USER_MAIL_ADDRESS);
                request.setAttribute("checkMail", CHECK_MAIL);
                request.setAttribute("userName", USER_NAME);
                request.setAttribute("userBirthDate", USER_BIRTH_DATE);
                request.setAttribute("userAddress", USER_ADDRESS);
                request.setAttribute("userPhoneNumber", USER_PHONE_NUMBER);



            //正常時の会員登録メール送信機能

//            AccountRegistrationUtil

//            boolean comp = spUtil.setEmergencyMail(fiMail, eMail);
//            System.out.println(comp);
//            if (comp) {
//                request.setAttribute("setMail", USER_MAIL);
//
//                request.setAttribute("comp", "登録が完了しました");
//                return forward("index.jsp");
//            } else {
//                System.out.println("失敗");
//                request.setAttribute("comp", "社員のアドレスデータがありません");
//                request.setAttribute("faild", "登録に失敗しました");
//                return forward("index.jsp");
//            }
        }
        return forward("<%=request.getContextPath()%>/sendmMail/sendmail.jsp");
    }
}
