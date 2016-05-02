package com.springapp.mvc.dao.interfaces;

import com.springapp.mvc.domain.AdminData;

public interface AdminDataDAO {
    public AdminData getAdminData();
    public void renewAdminData(String email);
}
