package jp.co.masa.model;

import org.slim3.tester.AppEngineTestCase;
import org.junit.Test;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

public class OAuth2Test extends AppEngineTestCase {

    private OAuth2 model = new OAuth2();

    @Test
    public void test() throws Exception {
        assertThat(model, is(notNullValue()));
    }
}
