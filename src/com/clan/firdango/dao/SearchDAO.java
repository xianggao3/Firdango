package com.clan.firdango.dao;

import com.clan.firdango.entity.Cast;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.MovieSearchResults;
import com.clan.firdango.entity.Theatre;
import com.google.gson.Gson;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.mapping.Array;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

@Repository
public class SearchDAO {
    private ArrayList<Movie> searchRes;
    private final SessionFactory sessionFactory;

    @Autowired
    public SearchDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private String sendGet(HttpServletRequest request) throws Exception {
        String queryString = request.getQueryString();
        String url = "https://api.themoviedb.org/3/search/movie?api_key=d36bee7b08bda0f0dd33ccdcd33e8685&query="+queryString;
        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();
        con.setRequestMethod("GET");

        int responseCode = con.getResponseCode();
        System.out.println("\n'GET' request to URL : " + url);

        BufferedReader in = new BufferedReader(
                new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuffer JSONresponse = new StringBuffer();

        while ((inputLine = in.readLine()) != null) {
            JSONresponse.append(inputLine);
        }
        in.close();

        return JSONresponse.toString();
    }


    @Transactional
    public List<Movie> getSearchMovieResults(Model theModel,HttpServletRequest request,String qs) throws Exception {
        Session currentSession = sessionFactory.getCurrentSession();
        System.out.println(qs);
        Query query=currentSession.createQuery("FROM Movie where title LIKE CONCAT('%',?1,'%')");
        query.setParameter("1",qs);
        List<Movie> trl=query.list();
        return trl;
    }
    @Transactional
    public List<Theatre> getSearchTheatreResults(Model theModel, HttpServletRequest request,String qs) {
        Session currentSession = sessionFactory.getCurrentSession();
        System.out.println(qs);
        Query query=currentSession.createQuery("FROM Theatre where address LIKE CONCAT('%',?1,'%') or name LIKE CONCAT('%',?1,'%') or zipcode = :qs");
        query.setParameter("1",qs);
        query.setParameter("qs",qs);
        List<Theatre> trl=query.list();
        return trl;
    }

    @Transactional
    public List<Cast> getSearchActorResults(Model theModel, HttpServletRequest request, String qs) {
        Session currentSession = sessionFactory.getCurrentSession();
        System.out.println(qs);
        Query query=currentSession.createQuery("FROM Cast where na LIKE CONCAT('%',?1,'%') or name LIKE CONCAT('%',?1,'%') or zipcode = :qs");
        query.setParameter("1",qs);
        query.setParameter("qs",qs);
        List<Cast> trl=query.list();
        return trl;
    }

   /*
   KNOWN ISSUES:
   1./search? returns error because tmdb site returns error for no results
   2./search returns results for NULL or ZERO
   3. too little movie to display will have blank card
   4. pages if lots of results?
   5. links to movies we dont have?
   6. Enter doesnt work
    */

}
