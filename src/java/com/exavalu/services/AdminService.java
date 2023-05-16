/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Admin;
import com.exavalu.models.Donor;
import com.exavalu.models.Patient;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public final class AdminService {


    public static AdminService adminService = null;

    private AdminService() {
    }

    public static AdminService getInstance() {
        if (adminService == null) {
            return new AdminService();
        } else {
            return adminService;
        }
    }

    public List<String> getAllPatients() {

        System.out.println("ISNIDE SERVICE");
        ArrayList patientList = new ArrayList();        
        try { Connection con = JDBCConnectionManager.getMySQLConnection();

            String sql = "SELECT * from  doctorappointmentdb.patient";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("ISNIDE while");
                Patient patient = new Patient();
                patient.setPatientId(Integer.parseInt(rs.getString("patientId")));
                patient.setPatientName(rs.getString("patientName"));
                patient.setAge(rs.getString("age"));
                patient.setGender(rs.getString("gender"));
                patient.setPatientReportId(Integer.parseInt(rs.getString("patientReportId")));
                patient.setPatientEmail(rs.getString("patientEmail"));
                patient.setAddress(rs.getString("address"));
                patient.setPhoneNumber(rs.getString("phoneNumber"));
                patient.setPatientpassword(rs.getString("patientpassword"));
                patientList.add(patient);
                System.out.println(patientList.size());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(patientList.size());
        System.out.println(patientList);
        return patientList;
    }


   

    public  List<String> getAllDonor() {
        ArrayList dnrList = new ArrayList();
        String sql = "SELECT * FROM doctorappointmentdb.donordetails";
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Donor dnr = new Donor();

                dnr.setDonorId(rs.getInt("donorId"));
                dnr.setDonorName(rs.getString("donorName"));
                dnr.setDonorAge(rs.getInt("donorAge"));
                dnr.setDonorgender(rs.getString("donorGender"));
                dnr.setDonorBloodgroup(rs.getString("donorBloodgroup"));
                dnr.setDonorAnyHealthproblem(rs.getString("donorAnyHealthproblem"));
                dnr.setDonorAddress(rs.getString("donorAddress"));
                dnr.setEmailAddress(rs.getString("emailAddress"));
                dnr.setPassword(rs.getString("password"));
                dnr.setContactNo(rs.getString("contactNo"));
                dnrList.add(dnr);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.err.println("Total rows:" + dnrList.size());
        return dnrList;
    }

//    public static List<String> getAllHospitals() {
//
//        
//
//        return null;
//
//        
//
//    }
    
     public boolean doLogin(Admin admin) {
        boolean success = false;

        String sql = "SELECT * FROM doctorappointmentdb.users where email = ? and password = ?;";
        System.out.println(sql);
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, admin.getEmail());
            ps.setString(2, admin.getPassword());

            System.out.println("LoginService :: " + ps);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
//                doctor.setEmail(rs.getString("emailAddress"));
//                doctor.setFirstName(rs.getString("firstName"));
//                doctor.setLastName(rs.getString("lastName"));
//                doctor.setRoleId(Integer.parseInt(rs.getString("roleId")));
                success = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return success;
    }
}
