/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Prescription;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rohit Nandy
 */
public final class PrescriptionService {

    public static PrescriptionService prescriptionService = null;

    private PrescriptionService() {
    }

    public static PrescriptionService getInstance() {
        if (prescriptionService == null) {
            return new PrescriptionService();
        } else {
            return prescriptionService;
        }
    }

    public static boolean addPrescription(Prescription prescription) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "INSERT INTO doctorappointmentdb.prescription\n"
                    + "(patientName,doctorName,symptoms, tests, advice, medicine,dosage,time,speciality)\n"
                    + "VALUES(? ,? ,? ,?,?,?,?,?,?);";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, prescription.getPatientName());
            preparedStatement.setString(2, prescription.getDoctorName());
            preparedStatement.setString(3, prescription.getSymptoms());
            preparedStatement.setString(4, prescription.getTests());
            preparedStatement.setString(5, prescription.getAdvice());
            preparedStatement.setString(6, prescription.getMedicine());
            preparedStatement.setString(7, prescription.getDosage());
            preparedStatement.setString(8, prescription.getTime());
            preparedStatement.setString(9, prescription.getSpeciality());

//            preparedStatement.setString(11, emp.getEmployesId());
            System.out.println(sql);
            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;

    }

    public List getAllPrescriptions() {
        System.out.println("ISNIDE SERVICE");
        ArrayList prescriptionList1 = new ArrayList();

        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();

            String sql = "SELECT * FROM doctorappointmentdb.prescription";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("ISNIDE while");
                Prescription prescription1 = new Prescription();
                prescription1.setPrescriptionId(rs.getString("prescriptionId"));
                prescription1.setPatientId(rs.getString("patientId"));
                prescription1.setPatientName(rs.getString("patientName"));
                prescription1.setDoctorName(rs.getString("doctorName"));
                prescription1.setSymptoms(rs.getString("symptoms"));
                prescription1.setTests(rs.getString("tests"));
                prescription1.setAdvice(rs.getString("advice"));
                prescription1.setMedicine(rs.getString("medicine"));
                prescription1.setDosage(rs.getString("dosage"));
                prescription1.setTime(rs.getString("time"));
                prescription1.setSpeciality(rs.getString("speciality"));

                prescriptionList1.add(prescription1);

                System.out.println(prescriptionList1.size());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(prescriptionList1.size());
        System.out.println(prescriptionList1);
        return prescriptionList1;
    }

}
