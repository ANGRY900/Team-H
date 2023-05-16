/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Doctor;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sapta
 */
public final class PatientService {

    public static PatientService patientService = null;

    private PatientService() {
    }

    public static PatientService getInstance() {
        if (patientService == null) {
            return new PatientService();
        } else {
            return patientService;
        }
    }

    public List getAllDoctors() {
        System.out.println("ISNIDE GET ALL DOC SERVICE");
        ArrayList doctorList = new ArrayList();

        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();

            String sql = "SELECT * from  doctorappointmentdb.doctors";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("ISNIDE while doc");
                Doctor doc = new Doctor();
                doc.setDoctorId(Integer.parseInt(rs.getString("doctorId")));
                doc.setFirstName(rs.getString("firstName"));
                doc.setLastName(rs.getString("lastName"));
                doc.setPhoneNumber(rs.getString("phoneNumber"));
                doc.setEmail(rs.getString("email"));
                doc.setSchedule(rs.getString("schedule"));
                doc.setSpeciality(rs.getString("speciality"));
                doc.setFees(rs.getString("fees"));
                doc.setExperience(rs.getString("experience"));
                doc.setStatus(rs.getString("status"));
                doctorList.add(doc);
                System.out.println(doctorList.size());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(doctorList.size());
        System.out.println(doctorList);
        return doctorList;
    }

    public List searchDoctor(Doctor doctor) throws SQLException {
        ArrayList doctorList1 = new ArrayList();

        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "SELECT * FROM doctorappointmentdb.doctors WHERE email = ?;";

        PreparedStatement preparedStatement = con.prepareStatement(sql);

        preparedStatement.setString(1, doctor.getEmail());

        System.out.println("sql = " + preparedStatement);
        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            Doctor doctor1 = new Doctor();
            doctor1.setDoctorId(Integer.parseInt(rs.getString("doctorId")));
            doctor1.setEmail(rs.getString("email"));
            doctor1.setFirstName(rs.getString("firstName"));
            doctor1.setLastName(rs.getString("lastName"));
            doctor1.setPhoneNumber(rs.getString("phoneNumber"));
            doctor1.setExperience(rs.getString("experience"));
            doctor1.setSchedule(rs.getString("schedule"));
            doctor1.setFees(rs.getString("fees"));
            doctor1.setStatus(rs.getString("status"));
            doctor1.setSpeciality(rs.getString("speciality"));

            doctorList1.add(doctor1);

        }
        System.out.println("doctorList1 = " + doctorList1);
        return doctorList1;

    }

}
