package jp.co.masa.controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import jp.co.masa.meta.OAuth2Meta;
import jp.co.masa.model.OAuth2;
import jp.co.masa.util.ReaderHelp;
import jp.co.masa.util.SpreadSheetUtil;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.datastore.Datastore;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.auth.oauth2.GoogleRefreshTokenRequest;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;


/**
 * 会員登録用認証クラス
 * @author Senbus
 * ユーザーが会員登録をする際
 * 既存会員の会員番号、会員登録氏名を入力し、<br>
 * それを参照情報とし、データを取得する
 */
public class CheckUserController extends Controller {

    // Logger
    private static final Logger logger = Logger.getLogger(Controller.class.getName());
    /** アクセストークン */
    protected String accessToken = "";

    /** Google OAuth2認証 */
    protected GoogleCredential credential = new GoogleCredential();

    /** Oauth2 */
    protected JsonFactory JSON_FACTORY = new JacksonFactory();
    protected HttpTransport TRANSPORT = new NetHttpTransport();

    /** OAuth2Meta */
    private OAuth2Meta om = new OAuth2Meta();

    /** ドメイン */
    protected String DOMAIN = "hilo-sendai-tours.com";

    public Navigation setUp() {

        // ローカルの場合は、Developerのリフレッシュトークンを強制取得
        OAuth2 oauth2 = Datastore.query(om).filter(om.domain.equal(DOMAIN)).asSingle();
        if( "127.0.0.1".equals(request.getRemoteAddr()) ){
            oauth2 = new OAuth2();
            oauth2.setDomain(ReaderHelp.getValue("oauth2.local.dev.domain"));
            oauth2.setRefreshToken(ReaderHelp.getValue("oauth2.local.dev.refreshtoken"));
        }
        // OAuth2認証が無い場合は、エラー画面へ
        if( oauth2 == null || oauth2.getDomain() == null ) {
            logger.log(Level.INFO, "OAuth2認証されていません。");
            return forward("system/errorAuth.jsp");
        } else {
            try{
                GoogleRefreshTokenRequest rTokenReq = new GoogleRefreshTokenRequest(TRANSPORT, JSON_FACTORY, oauth2.getRefreshToken(), System.getProperty("oauth2.clientId"), System.getProperty("oauth2.clientSecret"));
                GoogleTokenResponse tokenResponse = rTokenReq.execute();

                accessToken = tokenResponse.getAccessToken();
                }catch(IOException ioe){
                    ioe.printStackTrace();
            }


            // CredentialにTokenを設定
            credential.setAccessToken(accessToken);
            System.out.println(credential);
            logger.log(Level.INFO, "取得完了");
        }
        return super.setUp();

    }
    @Override
    public Navigation run() throws Exception {

        String msg = null;
        if(isPost()){
            System.out.println(credential);
            String introducerNumber = asString("introducerNumber");
            String introducerName =asString("introducerName");

            boolean flag = false;
            SpreadSheetUtil sputil = new SpreadSheetUtil(credential);
            flag = sputil.checkUser(introducerNumber, introducerName);

            if(flag){
                return forward("Regist.jsp");
            }
//            request.setAttribute("introducerNumber", introducerNumber);
//            request.setAttribute("introducerName", introducerName);
            msg = "入力情報が間違っています。";
        }

        request.setAttribute("msg", msg);
        return forward("checkUser.jsp");
    }
}
