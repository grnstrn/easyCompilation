package ru.com.springtest.repos;

import org.springframework.data.repository.CrudRepository;
import ru.com.springtest.domain.Film;
import ru.com.springtest.domain.User;

import java.util.List;

public interface FilmRepo extends CrudRepository<Film, Long> {
    List<Film> findByTag(String tag);


}
