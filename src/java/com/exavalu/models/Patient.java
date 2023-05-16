/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.DoctorService;
import com.exavalu.services.PatientService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
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
public class Patient extends ActionSupport implements ApplicationAware, SessionAware, Serializable {
    
     private int patientId;
    private String patientEmail;
    private String patientpassword;
    private String patientName;
    private String age;
    private String gender;
    private String phoneNumber;
    private String address;
    private int patientReportId;
    private String status;
    private String healthproblem;
    
    
    
    public String doPatientSearch() throws SQLException {
        String result = "SUCCESS";
        
        List patientList1 = DoctorService.getInstance().searchPatient(this);
        getSessionMap().put("PatientList1", patientList1);

        return result;
    }
    
    public String showPatientAppointed() throws Exception {
        String result = "FAILURE";
        System.out.println("SHOW APPOINTED PATIENTS");
        List patientList2 = DoctorService.getInstance().appointedPatient(this);
        sessionMap.put("PatientList2", patientList2);
        System.out.println(patientList2.size());

        if (patientList2 != null) {
            result = "SUCCESS";
        }else{
                    System.out.println("not fetching patient list");

        }

        return result;
    }

    public String doGetPatient(){
        String result = "FAILURE";
        Patient patient = DoctorService.getPatient(this);
        sessionMap.put("Patient", patient);
            System.out.println("isnide doGetPatient");



        

            System.out.println("returning Success from doGetPatient method");
            result = "SUCCESS";

        
        return result;
    }
    
    public String doUpdatePatient() throws Exception {

        String result = "FAILURE";
        boolean success = DoctorService.updatePatient(this);

        if (success) {
            String updateMsg = "updated Patient";
            sessionMap.put("UpdateMsg", updateMsg);
            
            List patientList = new ArrayList();
            patientList = DoctorService.getInstance().getAllPatients();
            sessionMap.put("PatientList", patientList);
            
            System.out.println("returning Success from doUpdatePatient method");
            result = "SUCCESS";

        }
        return result;
    }
    
    public String saveFnol(){
        String result = "FAILURE";
        Patient patient = new Patient();
        patient.setStatus(getStatus());
        
        boolean res = DoctorService.savePatient(patient, String.valueOf(patient.getPatientId()));
         if(res){
            List patientList = new ArrayList();
            patientList = DoctorService.getInstance().getAllPatients();
            getSessionMap().put("PatientList", patientList);
            result="SUCCESS";
        }
        else{
            getSessionMap().put("Patient", patient);
        }
        return result;
    }
    
    
    /**
     * @return the patientId
     */
    public int getPatientId() {
        return patientId;
    }

    /**
     * @return the patientEmail
     */
    public String getPatientEmail() {
        return patientEmail;
    }

    /**
     * @param patientEmail the patientEmail to set
     */
    public void setPatientEmail(String patientEmail) {
        this.patientEmail = patientEmail;
    }

    
    

    /**
     * @param patientId the patientId to set
     */
    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @param patientReportId the patientReportId to set
     */
    public void setPatientReportId(int patientReportId) {
        this.patientReportId = patientReportId;
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
     * @return the patientId
     */
    

    

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
     * @return the phoneNumber
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * @param phoneNumber the phoneNumber to set
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the patientReportId
     */
   

    
   
    

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();
    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();
    @Override
    public void setApplication(Map<String, Object> application) {
        setMap((ApplicationMap) application);
    }

    @Override
    public void setSession(Map<String, Object> session) {
        setSessionMap((SessionMap<String, Object>) (SessionMap) session);
        getSessionMap().put("Loggedin", NONE);
    }

    /**
     * @param patientpassword the patientpassword to set
     */
    public void setPatientpassword(String patientpassword) {
        this.patientpassword = patientpassword;
    }

    /**
     * @return the patientReportId
     */
    public int getPatientReportId() {
        return patientReportId;
    }

    /**
     * @return the patientpassword
     */
    public String getPatientpassword() {
        return patientpassword;
    }

    /**
     * @param age the age to set
     */
    public void setAge(String age) {
        this.age = age;
    }

    /**
     * @return the age
     */
    public String getAge() {
        return age;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the healthproblem
     */
    public String getHealthproblem() {
        return healthproblem;
    }

    /**
     * @param healthproblem the healthproblem to set
     */
    public void setHealthproblem(String healthproblem) {
        this.healthproblem = healthproblem;
    }
    
    public String showDoctors() throws Exception {
        String result = "FAILURE";
        System.out.println("SHOW DOCTORS");
        List doctorList = PatientService.getInstance().getAllDoctors();
        sessionMap.put("DoctorList", doctorList);
        System.out.println(doctorList.size());

        if (!doctorList.isEmpty()) {
            result = "SUCCESS";
            System.out.println(" fetching doctor list");
        }else{
                    System.out.println("not fetching doctor list");

        }

        return result;
    }
    
}