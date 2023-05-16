/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.AppointmentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author AYUSH DUTTA
 */
public class Appointment extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    /**
     * @return the appointmentId
     */
    public int getAppointmentId() {
        return appointmentId;
    }

    /**
     * @param appointmentId the appointmentId to set
     */
    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    /**
     * @return the patientName
     */
    public String getPatientName() {
        return patientName;
    }

    /**
     * @param patientName the patientName to set
     */
    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    /**
     * @return the speciality
     */
    public String getSpeciality() {
        return speciality;
    }

    /**
     * @param speciality the speciality to set
     */
    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    /**
     * @return the age
     */
    public String getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(String age) {
        this.age = age;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the doctorId
     */
    public int getDoctorId() {
        return doctorId;
    }

    /**
     * @return the patientId
     */
    public int getPatientId() {
        return patientId;
    }

    /**
     * @param patientId the patientId to set
     */
    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    /**
     * @return the doctorId
     */
    /**
     * @param doctorId the doctorId to set
     */
    public void setDoctorId(String doctorId) {
        this.setDoctorId(doctorId);
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the doctorFirstName
     */
    /**
     * @param doctorFirstName the doctorFirstName to set
     */
    /**
     * @return the doctorLastName
     */
    /**
     * @param doctorLastName the doctorLastName to set
     */
    /**
     * @return the reportId
     */
    public String getReportId() {
        return reportId;
    }

    /**
     * @param reportId the reportId to set
     */
    public void setReportId(String reportId) {
        this.reportId = reportId;
    }
    private int appointmentId;
    private int patientId;
    private int doctorId;
    private String date;
    private String firstName;
    private String lastName;
    private String reportId;
    private String patientName;
    private String speciality;
    private String age;

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();

    @Override
    public void setApplication(Map<String, Object> application) {
        setMap((ApplicationMap) application);
    }

    @Override
    public void setSession(Map<String, Object> session) {
        setSessionMap((SessionMap<String, Object>) (SessionMap) session);
    }

    /**
     * @return the sessionMap
     */
    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    /**
     * @param sessionMap the sessionMap to set
     */
    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    /**
     * @return the map
     */
    public ApplicationMap getMap() {
        return map;
    }

    /**
     * @param map the map to set
     */
    public void setMap(ApplicationMap map) {
        this.map = map;
    }

    /**
     * @param doctorId the doctorId to set
     */
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String doPatientAppointment() {
        String result = "FAILURE";
        Doctor doctor = new Doctor();
        boolean success = AppointmentService.getInstance().doAppointment(this, String.valueOf(doctor.getDoctorId()), String.valueOf(doctor.getFirstName()), String.valueOf(doctor.getLastName()), String.valueOf(doctor.getSpeciality()));
        if (success) {
            String createmsg = "User created !";
            sessionMap.put("Createmsg", createmsg);

            System.out.println("returning Success from doLogin method");
            result = "SUCCESS";

        } else {
            System.out.println("returning Failure from doLogin method");
        }
        return result;
    }

    public String doAppointmentSearch() throws SQLException {
        String result = "SUCCESS";

        List appointmentList = AppointmentService.getInstance().searchAppointment(this);
        sessionMap.put("AppointmentList", appointmentList);

        return result;
    }
    
    public String showAppointments() throws Exception {
        String result = "FAILURE";
        System.out.println("SHOW PATIENTS");
        List appointmemtList1 = AppointmentService.getInstance().getAllAppointments();
        sessionMap.put("AppointmentList1", appointmemtList1);
        System.out.println(appointmemtList1.size());

        if (!appointmemtList1.isEmpty()) {
            result = "SUCCESS";
        } else {
            System.out.println("not fetching appointment list");

        }

        return result;
    }

}
