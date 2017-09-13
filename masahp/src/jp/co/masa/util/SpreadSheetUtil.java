package jp.co.masa.util;

import java.util.logging.Level;
import java.util.logging.Logger;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.gdata.client.spreadsheet.CellQuery;
import com.google.gdata.client.spreadsheet.FeedURLFactory;
import com.google.gdata.client.spreadsheet.ListQuery;
import com.google.gdata.client.spreadsheet.SpreadsheetQuery;
import com.google.gdata.client.spreadsheet.SpreadsheetService;
import com.google.gdata.client.spreadsheet.WorksheetQuery;
import com.google.gdata.data.spreadsheet.CellFeed;
import com.google.gdata.data.spreadsheet.CustomElementCollection;
import com.google.gdata.data.spreadsheet.ListEntry;
import com.google.gdata.data.spreadsheet.ListFeed;
import com.google.gdata.data.spreadsheet.SpreadsheetEntry;
import com.google.gdata.data.spreadsheet.SpreadsheetFeed;
import com.google.gdata.data.spreadsheet.WorksheetEntry;
import com.google.gdata.data.spreadsheet.WorksheetFeed;



/**
 * スプレッドシートアクセスクラス
 * @author Senbus
 * <br>スプレッドシート取得
 * <br>ワークシート取得
 * <br>シート内のセル取得
 *
 */
public class SpreadSheetUtil {


    /** Logger */
    private final static Logger LOG = Logger.getLogger(SpreadSheetUtil.class.getName());

    /** アプリ名 */
    private String applicationName = "hilo-sendai-tours-hp-v1";

    /** SpreadSheetService */
    private SpreadsheetService service = new SpreadsheetService(applicationName);

    /** credential*/
    protected GoogleCredential credential = new GoogleCredential();

    /** 行番号の初期設定 */
    private String INDEX_NO ="0";
    /** ワークシートエントリ*/
    protected static WorksheetEntry worksheetEntry;

    /**
     * コンストラクタ
     * @param credential
     */
    public SpreadSheetUtil(Credential credential){

        //スプレッドシートにアクセス
        service.setOAuth2Credentials(credential);
        System.out.println(credential.getAccessToken());
        service.setConnectTimeout(10000);
        service.setReadTimeout(10000);
    }
    /**
     * 行番号取得メソッド
     * @param mail 取得したい会員番号
     * @return　indexNo 会員番号のある行番号
     * <br>入力された会員番号を元に、スプレッドシートの行番号を取得する
     *
     * スプレッドシートで行番号列から対象の会員番号と対になる行番号を取得
     */
     public String getEmpNoRow(String number){

        //他のセルを指定する際の行番号
         String indexNo;

         try{
             //FeedURLFactoryを取得
             FeedURLFactory urlFactory = FeedURLFactory.getDefault();

             //SpreadsheetQueryを生成
             SpreadsheetQuery spreadsheetQuery = new SpreadsheetQuery(urlFactory.getSpreadsheetsFeedUrl());
             //スプレッドシートを取得
             spreadsheetQuery.setTitleQuery(ReaderHelp.getValue("kaiin.spreadsheet.name"));
             SpreadsheetFeed spreadsheetFeed = service.query(spreadsheetQuery, SpreadsheetFeed.class);

             SpreadsheetEntry spreadsheetEntry = spreadsheetFeed.getEntries().get(0);

             //シートを取得
             WorksheetQuery worksheetQuery = new WorksheetQuery(spreadsheetEntry.getWorksheetFeedUrl());
             worksheetQuery.setTitleQuery( ReaderHelp.getValue("kaiin.sheet.name") );
             WorksheetFeed worksheetFeed = service.query(worksheetQuery, WorksheetFeed.class);
             worksheetEntry = worksheetFeed.getEntries().get(0);



             ListQuery listQuery = new ListQuery(worksheetEntry.getListFeedUrl());
             //検索の条件を指定
             listQuery.setFullTextQuery(number);
             ListFeed listFeed = service.query(listQuery, ListFeed.class);

             for( ListEntry listEntry : listFeed.getEntries() ){
                 CustomElementCollection elements = listEntry.getCustomElements();

                 indexNo = elements.getValue("番号");
                 String kaiinNumber = elements.getValue("会員番号");

                 if(kaiinNumber.equals(number)){
                     return INDEX_NO = indexNo;
                 }
             }

         }catch(Exception e){
             System.out.println("ERROR");
         }
         return null;
     }


     /**
          * 会員情報取得メソッド
          * @param number 会員番号
          * @param name 会員名
          * <br>社内メールで行検索をして社員情報に緊急連絡先を登録する
          *
          */

         public boolean  checkUser(String number, String name){
             String getname = null;
             try{
                 //FeedURLFactoryを取得
                 FeedURLFactory urlFactory = FeedURLFactory.getDefault();

                 //SpreadsheetQueryを生成
                 SpreadsheetQuery spreadsheetQuery = new SpreadsheetQuery(urlFactory.getSpreadsheetsFeedUrl());
                 //スプレッドシートを取得
                 spreadsheetQuery.setTitleQuery(ReaderHelp.getValue("kaiin.spreadsheet.name"));
                 SpreadsheetFeed spreadsheetFeed = service.query(spreadsheetQuery, SpreadsheetFeed.class);

                 SpreadsheetEntry spreadsheetEntry = spreadsheetFeed.getEntries().get(0);

                 //シートを取得
                 WorksheetQuery worksheetQuery = new WorksheetQuery(spreadsheetEntry.getWorksheetFeedUrl());
                 worksheetQuery.setTitleQuery( ReaderHelp.getValue("kaiin.sheet.name") );
                 WorksheetFeed worksheetFeed = service.query(worksheetQuery, WorksheetFeed.class);
                 worksheetEntry = worksheetFeed.getEntries().get(0);





                 CellQuery knameQuery = new CellQuery(worksheetEntry.getCellFeedUrl());
                 //会員番号があるか検索して、行番号を返却する
                 INDEX_NO = getEmpNoRow(number);
                 //会員番号がなかった場合
                 if(INDEX_NO==null){
                     System.out.println("会員情報がありません");
                     return false;
                     //会員番号があった場合
                 } else {
                     knameQuery.setRange("C"+INDEX_NO);
                     knameQuery.setReturnEmpty(false);//空のセルは返さない
                     CellFeed knamefeed = service.query(knameQuery, CellFeed.class);
                     //会員番号の行番号にある会員名と入力値の比較
                     getname = knamefeed.getEntries().get(0).getPlainTextContent();
                     if(name.equals(getname)){
                         return true;
                     }
                 }

             }catch(Exception e){
                 System.out.println("照合エラー");
                 LOG.log(Level.WARNING, e.getMessage(), e);
                 return false;
             }
             System.out.println("不一致");
             return false;
         }
}
