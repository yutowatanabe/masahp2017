package jp.co.masa.service;

import jp.co.masa.meta.OAuth2Meta;
import jp.co.masa.model.OAuth2;

import org.slim3.datastore.Datastore;


public class OAuth2Servise {

    public OAuth2 getOAuth2(String domain){

        OAuth2Meta om = new OAuth2Meta();

        return Datastore.query(om).filter(om.domain.equal(domain)).asSingle();

    }
}
