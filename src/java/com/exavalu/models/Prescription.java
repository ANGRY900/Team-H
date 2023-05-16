/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package com.exavalu.models;

//import com.exavalu.services.AppointmentService;
import com.exavalu.services.PrescriptionService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author anich
 */
public class Prescription extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    private String medicine;
    private String dosage;
    private String time;
    private String tests;
    private String advice;
    private String date;
    private String appointmentId;
    private String patientId;
    private String doctorId;
    private String status;
    private String symptoms;
    private String patientName;
    private String prescriptionId;
    private String emailAddress;
    private String userId;
    private String doctorName;

    private String speciality;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(String appointmentId) {
        this.appointmentId = appointmentId;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public String getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMedicine() {
        return medicine;
    }

    public void setMedicine(String medicine) {
        this.medicine = medicine;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTests() {
        return tests;
    }

    public void setTests(String tests) {
        this.tests = tests;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }

    public String doAddPrescription() {
        String result = "FALIURE";
        System.out.println("advice" + this.getAdvice());
        System.out.println(this.getTests());

        System.out.println(this.getTime());
        System.out.println(this.getDosage());

        System.out.println(this.getMedicine());
        System.out.println(this.getDoctorId());
        System.out.println(this.getAppointmentId());
        System.out.println(this.getPatientId());
        System.out.println(this.getDate());
        System.out.println(this.getUserId());

        boolean success = PrescriptionService.getInstance().addPrescription(this);

        if (success) {

            result = "SUCCESS";

        }

        return result;
    }
    
     public String showPrescription() throws Exception {
        String result = "FAILURE";
        System.out.println("SHOW PRESCRIPTION");
        List prescriptionList1 = PrescriptionService.getInstance().getAllPrescriptions();
        getSessionMap().put("PrescriptionList", prescriptionList1);
        System.out.println(prescriptionList1.size());

        if (!prescriptionList1.isEmpty()) {
            result = "SUCCESS";
        } else {
            System.out.println("not fetching prescription list");

        }

        return result;
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
     * @return the doctorName
     */
    public String getDoctorName() {
        return doctorName;
    }

    /**
     * @param doctorName the doctorName to set
     */
    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }


    /**
     * @return the prescriptionId
     */
    public String getPrescriptionId() {
        return prescriptionId;
    }

    /**
     * @param prescriptionId the prescriptionId to set
     */
    public void setPrescriptionId(String prescriptionId) {
        this.prescriptionId = prescriptionId;
    }
//    public String doPrescriptionSearch() throws SQLException {
//        String result = "SUCCESS";
//
//        ArrayList prescriptionList = PrescriptionService.getInstance().searchDoctor(this);
//        sessionMap.put("SearchPrescriptionList", searchprescriptionList);
//
//        return result;
//    }

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
}
