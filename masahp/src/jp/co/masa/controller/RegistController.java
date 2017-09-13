package jp.co.masa.controller;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;

public class RegistController extends Controller {

    @Override
    public Navigation run() throws Exception {
        return forward("Regist.jsp");
    }
}
