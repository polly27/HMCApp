package com.springapp.mvc.service.implementions;

import com.springapp.mvc.dao.interfaces.LatheDAO;
import com.springapp.mvc.domain.lathe.LatheEntity;
import com.springapp.mvc.domain.lathe.LatheFullEntity;
import com.springapp.mvc.domain.lathe.LatheFullTranslateEntity;
import com.springapp.mvc.domain.lathe.LatheTranslateEntity;
import com.springapp.mvc.service.interfaces.LatheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class LatheServiceImpl implements LatheService {

    @Autowired
    private LatheDAO latheDAO;

    @Transactional
    public List<LatheEntity> listLatheEntity() {
        return latheDAO.listLatheEntity();
    }

    @Transactional
    public List<LatheFullEntity> listLatheFullEntity() {
        return latheDAO.listLatheFullEntity();
    }

    @Transactional
    public List<LatheFullTranslateEntity> listLatheFullTranslateEntity() {
        return latheDAO.listLatheFullTranslateEntity();
    }

    @Transactional
    public List<LatheTranslateEntity> listLatheTranslateEntity() {
        return latheDAO.listLatheTranslateEntity();
    }

}