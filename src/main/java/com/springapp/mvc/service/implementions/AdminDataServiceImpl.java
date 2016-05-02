package com.springapp.mvc.service.implementions;

import com.springapp.mvc.dao.interfaces.AdminDataDAO;
import com.springapp.mvc.domain.AdminData;
import com.springapp.mvc.service.interfaces.AdminDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminDataServiceImpl implements AdminDataService {

    @Autowired
    private AdminDataDAO adminDataDAO;

    @Transactional
    public AdminData getAdminData() {
        return adminDataDAO.getAdminData();
    }

    @Transactional
    public void renewAdminData(String email) {
        adminDataDAO.renewAdminData(email);
    }

}
