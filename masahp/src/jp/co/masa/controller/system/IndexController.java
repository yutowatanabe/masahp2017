package jp.co.masa.controller.system;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jp.co.masa.model.OAuth2;
import jp.co.masa.service.OAuth2Servise;
import jp.co.masa.util.ReaderHelp;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.datastore.Datastore;

import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeTokenRequest;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

public class IndexController extends Controller {
    private static final JsonFactory JSON_FACTORY = new JacksonFactory();
    private static final HttpTransport TRANSPORT = new NetHttpTransport();

    /** RedirectURL */
    public String OAUTH2_REDIRECT_URL_LOCAL = "";
    public String OAUTH2_REDIRECT_URL = "";

    private OAuth2Servise oauth2Service = new OAuth2Servise();

    /** Google OAuth2認証 */
    protected GoogleCredential credential = new GoogleCredential();

    /** Google Apps User */
    User user = null;

    @Override
    public Navigation run() throws Exception {
        OAUTH2_REDIRECT_URL_LOCAL = ReaderHelp.getValue("oauth2.redirect.url.local");
        OAUTH2_REDIRECT_URL =ReaderHelp.getValue("oauth2.redirect.url");

        String code = asString("code");

        UserService userService = UserServiceFactory.getUserService();
        if( !userService.isUserLoggedIn() ){
            return redirect(userService.createLoginURL(basePath));
        }
        user = userService.getCurrentUser();

        String domain = user.getEmail().substring(user.getEmail().indexOf("@")+1);

        if( code == null ){
            OAuth2 oauth2 = oauth2Service.getOAuth2(domain);
            if( oauth2 == null || oauth2.getDomain() == null || oauth2.getRefreshToken() == null ){
                return redirectOauth2Login();

            }else{
                requestScope("errorMsg","認証されています。");

                return forward("errorAuth.jsp");
            }

        } else {//GoogleからRedirectで呼ばれた場合
            GoogleAuthorizationCodeTokenRequest tokenRequest = null;
            if( "127.0.0.1".equals(request.getRemoteAddr()) ){
                tokenRequest = new GoogleAuthorizationCodeTokenRequest(TRANSPORT, JSON_FACTORY, System.getProperty("oauth2.clientId"), System.getProperty("oauth2.clientSecret"), code, OAUTH2_REDIRECT_URL_LOCAL);
            }else{
                tokenRequest = new GoogleAuthorizationCodeTokenRequest(TRANSPORT, JSON_FACTORY, System.getProperty("oauth2.clientId"), System.getProperty("oauth2.clientSecret"), code, OAUTH2_REDIRECT_URL);
            }

            GoogleTokenResponse authResponse = null;
            try{
                authResponse = tokenRequest.execute();
            }catch(IOException ioe){
                ioe.printStackTrace();
            }

            // RefreshTokenが存在しない場合
            if( "".equals(authResponse.getRefreshToken()) || authResponse.getRefreshToken() == null){
                requestScope("errorMsg","認証エラー");
                return forward("errorAuth.jsp");
            }

            OAuth2 oauth2 = new OAuth2();
            oauth2.setKey(Datastore.createKey(OAuth2.class, user.getEmail()));
            oauth2.setDomain(domain);
            oauth2.setRefreshToken(authResponse.getRefreshToken());
            Datastore.put(oauth2);
        }

        return forward("index.jsp");
    }

    /**
     * Oauth2認証
     */
    protected Navigation redirectOauth2Login(){
        String url = "";

        try{
            List<String> scope = new ArrayList<String>();
            scope.add("https://www.googleapis.com/auth/admin.directory.group.readonly");
            scope.add("https://www.googleapis.com/auth/admin.directory.user.readonly");
            scope.add("https://www.googleapis.com/auth/drive");
            scope.add("https://www.googleapis.com/auth/drive.file");
            scope.add("https://www.googleapis.com/auth/drive.appdata");
            scope.add("https://spreadsheets.google.com/feeds/");

            GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
                TRANSPORT,
                JSON_FACTORY,
                System.getProperty("oauth2.clientId"),
                System.getProperty("oauth2.clientSecret"),
                scope)
                .setAccessType("offline")
                .setApprovalPrompt("auto")
                .build();

            if( "127.0.0.1".equals(request.getRemoteAddr()) ){
                url = flow.newAuthorizationUrl().setRedirectUri(OAUTH2_REDIRECT_URL_LOCAL).build();
            }else{
                url = flow.newAuthorizationUrl().setRedirectUri(OAUTH2_REDIRECT_URL).build();
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        return redirect(url);
    }
}
