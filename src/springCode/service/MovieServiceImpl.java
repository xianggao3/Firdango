package springCode.service;

import org.springframework.stereotype.Service;

/**
 * Created by xgao3 on 4/13/2017.
 */
@Service
public class MovieServiceImpl {
    private final MovieDAO movieDAO;

    @Autowired
    public MovieServiceImpl(movieDAO movieDAO) {
        this.movieDAO = movieDAO;
    }

    @Override
    @Transactional
    public List<Movie> getFeatured() {
        return movieDAO.getUsers();
    }

}
