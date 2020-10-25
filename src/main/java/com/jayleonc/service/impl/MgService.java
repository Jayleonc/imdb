package com.jayleonc.service.impl;

import com.jayleonc.dao.IMgDao;
import com.jayleonc.domain.Mg;
import com.jayleonc.service.IMgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MgService implements IMgService {

    @Autowired
    IMgDao iMgDao;

    @Override
    public void deleteByMovieId(int mid) {
        iMgDao.deleteByMovieId(mid);
    }

    @Override
    public void addMg(Mg mg) {
        iMgDao.addMg(mg);
    }
}
