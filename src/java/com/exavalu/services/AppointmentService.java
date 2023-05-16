/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Appointment;
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
 * @author AYUSH DUTTA
 */




public class AppointmentService {

//    private AppointmentService() {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    public boolean doAppointment(Appointment user, String idDoctor, String doctorFirstName, String doctorLastName, String speciality) {

        String sql = "INSERT INTO doctorappointmentdb.appointment(patientId,firstName,lastName,date,patientName,age,speciality)\n"
                + "VALUES(? ,? ,? ,? ,?,?,?);";

        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user.getPatientId());

            ps.setString(2, user.getFirstName());

            ps.setString(3, user.getLastName());
//            ps.setString(4, String.valueOf(user.getDoctorId()));

            ps.setString(4, user.getDate());

            ps.setString(5, user.getPatientName());
            ps.setString(6, user.getAge());
            ps.setString(7, user.getSpeciality());

            System.out.println("appointment :: " + ps);

            ps.executeUpdate();
            return true;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return false;
    }
    public static AppointmentService appointmentService = null;

    public static AppointmentService getInstance() {
        if (appointmentService == null) {
            return new AppointmentService();
        } else {
            return appointmentService;
        }
    }

    public static Doctor getDoctor(Doctor doc) {

//        Claim claim = new Claim();
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "SELECT doctorId,firstName,lastName,speciality FROM doctorappointmentdb.doctors where doctorId = ?;";
            System.out.println(sql);

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, String.valueOf(doc.getDoctorId()));

            System.out.println(doc.getDoctorId());

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                doc.setFirstName(rs.getString("firstName"));
                doc.setLastName(rs.getString("lastName"));
                doc.setSpeciality(rs.getString("speciality"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("returning doctor from getdoctor");
        System.out.println(doc);
        System.out.println(doc.getFirstName());
        System.out.println(doc.getLastName());
        return doc;

    }

    public List searchAppointment(Appointment appointment) throws SQLException {
        ArrayList appointmentList = new ArrayList();

        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "SELECT * FROM doctorappointmentdb.appointment WHERE patientId = ?;";

        PreparedStatement preparedStatement = con.prepareStatement(sql);

        preparedStatement.setInt(1, appointment.getPatientId());

        System.out.println("sql = " + preparedStatement);
        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            Appointment appointment1 = new Appointment();
            appointment1.setPatientId(Integer.parseInt(rs.getString("patientId")));
            appointment1.setPatientName(rs.getString("patientName"));
            appointment1.setAge(rs.getString("age"));
            appointment1.setFirstName(rs.getString("firstName"));
            appointment1.setLastName(rs.getString("lastName"));
            appointment1.setDate(rs.getString("date"));
            appointment1.setAppointmentId(Integer.parseInt(rs.getString("appointmentId")));
            appointment1.setSpeciality(rs.getString("speciality"));

            appointmentList.add(appointment1);

        }
        System.out.println("patientList1 = " + appointmentList);
        return appointmentList;

    }

    public List getAllAppointments() {
        System.out.println("ISNIDE SERVICE");
        ArrayList appointmemtList1 = new ArrayList();

        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();

            String sql = "SELECT * FROM doctorappointmentdb.appointment";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("ISNIDE while");
                Appointment appointment2 = new Appointment();
                appointment2.setPatientId(Integer.parseInt(rs.getString("patientId")));
                appointment2.setPatientName(rs.getString("patientName"));
                appointment2.setAge(rs.getString("age"));
                appointment2.setFirstName(rs.getString("firstName"));
                appointment2.setLastName(rs.getString("lastName"));
                appointment2.setDate(rs.getString("date"));
                appointment2.setAppointmentId(Integer.parseInt(rs.getString("appointmentId")));
                appointment2.setSpeciality(rs.getString("speciality"));

                appointmemtList1.add(appointment2);

                System.out.println(appointmemtList1.size());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(appointmemtList1.size());
        System.out.println(appointmemtList1);
        return appointmemtList1;
    }
    
    
    
}
