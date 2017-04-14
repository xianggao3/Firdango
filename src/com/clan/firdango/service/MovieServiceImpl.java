package com.clan.firdango.service;

import com.clan.firdango.dao.MovieDAO;
import com.clan.firdango.entity.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by xgao3 on 4/13/2017.
 */
@Service
public class MovieServiceImpl implements MovieService{
    private final MovieDAO movieDAO;

    @Autowired
    public MovieServiceImpl(MovieDAO movieDAO) {
        this.movieDAO = movieDAO;
    }

    @Override
    @Transactional
    public List<Movie> getFeatured() {
        return movieDAO.getFeatured();
    }

}
