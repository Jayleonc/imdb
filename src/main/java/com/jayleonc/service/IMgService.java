package com.jayleonc.service;

import com.jayleonc.domain.Mg;

public interface IMgService {

    void addMg(Mg mg);

    void deleteByMovieId(int mid);
}
