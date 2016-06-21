package com.springapp.mvc.dao.interfaces;

import com.springapp.mvc.domain.lathe.LatheFullEntity;
import com.springapp.mvc.domain.lathe.LatheLangFullEntity;
import com.springapp.mvc.domain.lathe.LatheLangShortEntity;
import com.springapp.mvc.domain.lathe.LatheShortEntity;

public interface LatheDAO {
    public void addLatheShort(LatheShortEntity latheShortEntity);
    public void addLatheFull(LatheFullEntity latheFullEntity);
    public void addLatheLangShort(LatheLangShortEntity latheLangShortEntity);
    public void addLatheLangFull(LatheLangFullEntity latheLangFullEntity);
}
