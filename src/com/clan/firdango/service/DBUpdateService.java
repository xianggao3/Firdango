package com.clan.firdango.service;

import com.clan.firdango.entity.Movie;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.net.URL;
import java.net.URLConnection;

/**
 * Created by marvinyan on 5/14/2017.
 */
@Service
public class DBUpdateService {
    private final MovieService movieService;

    public DBUpdateService(MovieService movieService) {
        this.movieService = movieService;
    }

    public void fetchNewMovies(String url) {
        try {
            DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
            f.setNamespaceAware(false);
            f.setValidating(false);
            DocumentBuilder b = f.newDocumentBuilder();
            URLConnection urlConnection = new URL(url).openConnection();
            urlConnection.addRequestProperty("Accept", "application/xml");
            Document doc = b.parse(urlConnection.getInputStream());
            doc.getDocumentElement().normalize();
            doc.getDocumentElement().getNodeName();

            NodeList movieList = doc.getElementsByTagName("movie");
            for (int i = 0; i < movieList.getLength(); i++) {
                Element ele = (Element) movieList.item(i);
                Movie movie = new Movie();
                movie.setId(Integer.parseInt(ele.getElementsByTagName("id").item(0).getTextContent()));
                movie.setTitle(ele.getElementsByTagName("title").item(0).getTextContent());
                movie.setReleaseDate(ele.getElementsByTagName("release_date").item(0).getTextContent());
                movie.setGenre(ele.getElementsByTagName("genre").item(0).getTextContent());
                movie.setRuntime(ele.getElementsByTagName("runtime").item(0).getTextContent());
                movie.setPoster(ele.getElementsByTagName("poster").item(0).getTextContent());
                movie.setBackdrop(ele.getElementsByTagName("backdrop").item(0).getTextContent());
                movie.setTrailer(ele.getElementsByTagName("trailer").item(0).getTextContent());
                movie.setImdbId(ele.getElementsByTagName("imdb_id").item(0).getTextContent());
                movie.setRevenue(Integer.parseInt(ele.getElementsByTagName("revenue").item(0).getTextContent()));
                movie.setBudget(ele.getElementsByTagName("budget").item(0).getTextContent());
                movie.setOverview(ele.getElementsByTagName("overview").item(0).getTextContent());
                movie.setStatus(ele.getElementsByTagName("movie_status").item(0).getTextContent());
                movieService.saveMovie(movie);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
