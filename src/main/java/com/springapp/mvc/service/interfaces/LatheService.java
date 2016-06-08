package com.springapp.mvc.service.interfaces;

import com.springapp.mvc.domain.lathe.LatheEntity;
import com.springapp.mvc.domain.lathe.LatheFullEntity;
import com.springapp.mvc.domain.lathe.LatheFullTranslateEntity;
import com.springapp.mvc.domain.lathe.LatheTranslateEntity;

import java.util.List;

public interface LatheService {
    public List<LatheEntity> listLatheEntity();
    public List<LatheFullEntity> listLatheFullEntity();
    public List<LatheFullTranslateEntity> listLatheFullTranslateEntity();
    public List<LatheTranslateEntity> listLatheTranslateEntity();
}
