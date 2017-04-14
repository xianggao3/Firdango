package com.clan.firdango;

import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;

import java.util.Locale;

/**
 * Created by marvinyan on 4/14/2017.
 */
public class MyViewResolver implements ViewResolver {

    private ViewResolver tilesResolver;
    private ViewResolver jspResolver;

    public void setJspResolver(ViewResolver jspResolver) {
        this.jspResolver = jspResolver;
    }

    public void setTilesResolver(ViewResolver tilesResolver) {
        this.tilesResolver = tilesResolver;
    }

    @Override
    public View resolveViewName(String viewName, Locale locale) throws Exception {
        if (isIndex(viewName)) {
            return tilesResolver.resolveViewName(viewName, locale);
        } else {
            return jspResolver.resolveViewName(viewName, locale);
        }
    }

    private boolean isIndex(String viewName) {
        return viewName.equals("index");
    }
}