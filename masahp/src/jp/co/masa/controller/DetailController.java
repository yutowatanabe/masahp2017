package jp.co.masa.controller;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
/**
 * 詳細ページ遷移用コントローラー
 *
 * @author Senbus
 *
 */
public class DetailController extends Controller {

    @Override
    public Navigation run() throws Exception {
        return forward("detail.jsp");
    }
}
