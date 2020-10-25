package com.jayleonc.service.impl;

import com.jayleonc.dao.IGenreDao;
import com.jayleonc.domain.Genre;
import com.jayleonc.service.IGenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GenreService implements IGenreService {

    @Autowired
    IGenreDao iGenreDao;

    @Override
    public List<Genre> findAll() {
        return iGenreDao.findAll();
    }
}
