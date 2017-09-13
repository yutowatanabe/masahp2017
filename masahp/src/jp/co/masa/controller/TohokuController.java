package jp.co.masa.controller;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;

public class TohokuController extends Controller {

    @Override
    public Navigation run() throws Exception {
        return forward("Tohoku.jsp");
    }
}
