/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Doctor;
import com.exavalu.models.Patient;
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
public final class DoctorService {

    public static DoctorService doctorService = null;

    private DoctorService() {
    }

    public static DoctorService getInstance() {
        if (doctorService == null) {
            return new DoctorService();
        } else {
            return doctorService;
        }
    }

    public boolean doLogin(Doctor doctor) {
        boolean success = false;

        String sql = "SELECT * FROM doctorappointmentdb.users where email = ? and password = ?;";
        System.out.println(sql);
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, doctor.getEmail());
            ps.setString(2, doctor.getPassword());

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

    public List getAllPatients() {
        System.out.println("ISNIDE SERVICE");
        ArrayList patientList = new ArrayList();

        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();

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
                patient.setStatus(rs.getString("status"));
//                patient.setHealthproblem(rs.getString("healthproblem"));
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

    public List searchPatient(Patient patient) throws SQLException {
        ArrayList patientList1 = new ArrayList();

        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "SELECT * FROM doctorappointmentdb.patient WHERE patientEmail = ?;";

        PreparedStatement preparedStatement = con.prepareStatement(sql);

        preparedStatement.setString(1, patient.getPatientEmail());

        System.out.println("sql = " + preparedStatement);
        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            Patient patient1 = new Patient();
            patient1.setPatientId(Integer.parseInt(rs.getString("patientId")));
            patient1.setPatientName(rs.getString("patientName"));
            patient1.setAge(rs.getString("age"));
            patient1.setGender(rs.getString("gender"));
            patient1.setPatientReportId(Integer.parseInt(rs.getString("patientReportId")));
            patient1.setPatientEmail(rs.getString("patientEmail"));
            patient1.setAddress(rs.getString("address"));
            patient1.setPhoneNumber(rs.getString("phoneNumber"));
            patient1.setPatientpassword(rs.getString("patientpassword"));
            patient1.setStatus(rs.getString("status"));
            //patient1.setHealthproblem(rs.getString("healthproblem"));

            patientList1.add(patient1);

        }
        System.out.println("patientList1 = " + patientList1);
        return patientList1;

    }

    public static Patient getPatient(Patient patient) {

//        Claim claim = new Claim();
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "SELECT patientId,status FROM doctorappointmentdb.patient where patientId = ?;";
            System.out.println(sql);

            PreparedStatement preparedStatement = con.prepareStatement(sql);
//            preparedStatement.setString(1, employeeId);
//            preparedStatement.setString(1, patient.getPatientId());
            preparedStatement.setString(1, String.valueOf(patient.getPatientId()));

            System.out.println(patient.getPatientId());
//            preparedStatement.setString(2,fnol.getStatus());

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
//                claim.setClaimId(rs.getString("firstName"));
//                fnol.setFnolId(rs.getString("fnolId"));
                patient.setStatus(rs.getString("status"));

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("returning patient from getpatient");
        System.out.println(patient);
        return patient;

    }

    public static boolean updatePatient(Patient patient) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "UPDATE doctorappointmentdb.patient SET status = ? WHERE patientId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

//            preparedStatement.setString(1, patient.getPatientId());
            preparedStatement.setString(1, patient.getStatus());
            preparedStatement.setString(2, String.valueOf(patient.getPatientId()));

            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
                System.out.println(sql);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public static boolean savePatient(Patient patient, String patientId) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "UPDATE doctorappointmentdb.patient SET status = ? WHERE patientId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, patient.getStatus());
            preparedStatement.setString(2, String.valueOf(patient.getPatientId()));
//            preparedStatement.setString(2, patientId);
            System.out.println(preparedStatement);

            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public List appointedPatient(Patient patient) throws SQLException {
        ArrayList patientList2 = new ArrayList();

        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "SELECT * FROM doctorappointmentdb.patient where status = 'accepted';";

        PreparedStatement preparedStatement = con.prepareStatement(sql);

        preparedStatement.setString(1, patient.getStatus());

        System.out.println("sql = " + preparedStatement);
        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()) {
            Patient patient2 = new Patient();
            patient2.setPatientId(rs.getInt("patientId"));
            patient2.setPatientName(rs.getString("patientName"));
            patient2.setAge(rs.getString("age"));
            patient2.setGender(rs.getString("gender"));
            patient2.setPatientReportId(rs.getInt("patientReportId"));
            patient2.setPatientEmail(rs.getString("patientEmail"));
            patient2.setAddress(rs.getString("address"));
            patient2.setPhoneNumber(rs.getString("phoneNumber"));
            patient2.setPatientpassword(rs.getString("patientpassword"));
            patient2.setStatus(rs.getString("status"));

            patientList2.add(patient2);
        }
        System.out.println("patientList2 = " + patientList2);
        return patientList2;

    }

    public static boolean addDoctor(Doctor doctor) throws SQLException {
        boolean result = false;
        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "INSERT INTO doctorappointmentdb.doctors ( doctorId,email,password,firstName, lastName, phoneNumber, speciality, experience,  schedule, fees, status, roleId)VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        try {

            preparedStatement.setInt(1, doctor.getDoctorId());
            preparedStatement.setString(2, doctor.getEmail());
            preparedStatement.setString(3, doctor.getPassword());
            preparedStatement.setString(4, doctor.getFirstName());
            preparedStatement.setString(5, doctor.getLastName());
            preparedStatement.setString(6, doctor.getPhoneNumber());
            preparedStatement.setString(7, doctor.getSpeciality());
            preparedStatement.setString(8, doctor.getExperience());
            preparedStatement.setString(9, doctor.getSchedule());
            preparedStatement.setString(10, doctor.getFees());
            preparedStatement.setString(11, doctor.getStatus());
            preparedStatement.setInt(12, doctor.getRoleId());

            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
            }

        } 
        catch (SQLException ex) {
            ex.printStackTrace();
//            Logger logger = Logger.getLogger(EmployeeService.class.getName());
//            logger.error("An error occurred for function addAllemployees: ");
        }
        return result;
    }

    public static boolean updateDoctor(Doctor doctor) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "UPDATE doctorappointmentdb.doctors SET status = ?,schedule=?,speciality=? WHERE doctorId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

//            preparedStatement.setString(1, patient.getPatientId());
            preparedStatement.setString(1, doctor.getStatus());
            preparedStatement.setString(2, doctor.getSchedule());
            preparedStatement.setString(3, doctor.getSpeciality());
            preparedStatement.setInt(4, doctor.getDoctorId());

            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
                System.out.println(sql);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public static boolean deleteDoctors(int doctorId) {
        boolean result = false;
        try (Connection con = JDBCConnectionManager.getMySQLConnection()) {

            String sql = "Update doctorappointmentdb.doctors set isDeleted=1 WHERE doctorId = ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, doctorId);

            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public static Doctor getDoctor(Doctor doctor) {

//        Claim claim = new Claim();
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "SELECT doctorId,status,schedule,specialty FROM doctorappointmentdb.doctors where doctorId = ?;";
            System.out.println(sql);

            PreparedStatement preparedStatement = con.prepareStatement(sql);
//            preparedStatement.setString(1, employeeId);
//            preparedStatement.setString(1, patient.getPatientId());
            preparedStatement.setInt(1, doctor.getDoctorId());

            System.out.println(doctor.getDoctorId());
//            preparedStatement.setString(2,fnol.getStatus());

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
//                claim.setClaimId(rs.getString("firstName"));
//                fnol.setFnolId(rs.getString("fnolId"));
                doctor.setStatus(rs.getString("status"));
                doctor.setDoctorId(rs.getInt("doctorId"));
                doctor.setSchedule(rs.getString("schedule"));
                doctor.setSpeciality(rs.getString("speciality"));

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("returning patient from getdoctor");
        System.out.println(doctor);
        return doctor;

    }

    public static boolean saveDoctor(Doctor doctor, int doctorId) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql = "UPDATE doctorappointmentdb.doctors SET status = ?,schedule=?,speciality=? WHERE patientId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, doctor.getStatus());
            preparedStatement.setString(2, doctor.getSchedule());
            preparedStatement.setString(3, doctor.getSpeciality());

            preparedStatement.setString(4, String.valueOf(doctor.getDoctorId()));
//            preparedStatement.setString(2, patientId);
            System.out.println(preparedStatement);

            int row = preparedStatement.executeUpdate();

            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
