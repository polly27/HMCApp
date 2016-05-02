package com.springapp.mvc.service.interfaces;

import com.springapp.mvc.domain.AdminData;

public interface AdminDataService {
    public AdminData getAdminData();
    public void renewAdminData(String email);
}
