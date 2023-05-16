/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Requirement;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Logger;

/**
 *
 * @author sapta
 */
public class DonorService {
    public static DonorService donorService = null;
    
    public static DonorService getInstance()
    {
        if(donorService==null)
        {
            return new DonorService();
        }
        else
        {
            return donorService;
        }
    }
    
   
   
    public static List getAllRequirementList() {

        ArrayList reqList = new ArrayList();
        String sql = "SELECT  requirementsId,bloodType,urgency,contactNo,requestissueDate FROM requirements";
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Requirement req = new  Requirement();
                req.setRequirementsId(rs.getInt("requirementsId"));
                req.setBloodType(rs.getString("bloodType"));
                req.setUrgency(rs.getString("urgency"));
               req.setContactNo(rs.getString("contactNo"));
                req.setRequestissueDate(rs.getString("requestissueDate"));
                reqList.add(req);
            }

        } catch (SQLException ex) {
            Logger log = Logger.getLogger(LoginService.class.getName());
            log.error(LocalDateTime.now().format(DateTimeFormatter.ofLocalizedDateTime(FormatStyle.FULL, FormatStyle.MEDIUM)) + " " + ex.getMessage());

        }

        return reqList;
    }
//    public static boolean doFinalApprove(int donorId) {
//
//        boolean result = false;
//        try {
//            Connection con = JDBCConnectionManager.getMySQLConnection();
//            String sql = "UPDATE requirements SET isVerified = 1,WHERE requirementsId = ?";
//
//            PreparedStatement preparedStatement = con.prepareStatement(sql);
//
//            preparedStatement.setInt(1, donorId);
//
//            int row = preparedStatement.executeUpdate();
//
//            if (row == 1) {
//                result = true;
//            }
//
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
//        return result;
//    }
    
     
}