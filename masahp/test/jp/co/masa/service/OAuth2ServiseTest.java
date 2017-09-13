package jp.co.masa.service;

import org.slim3.tester.AppEngineTestCase;
import org.junit.Test;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

public class OAuth2ServiseTest extends AppEngineTestCase {

    private OAuth2Servise service = new OAuth2Servise();

    @Test
    public void test() throws Exception {
        assertThat(service, is(notNullValue()));
    }
}
