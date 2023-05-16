/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.AdminService;
import com.exavalu.services.AppointmentService;
import com.exavalu.services.DoctorService;
import com.exavalu.services.DonorService;
import com.exavalu.services.PatientService;
import com.exavalu.services.PrescriptionService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author sapta
 */
public class Admin extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    private int adminId;
    private String firstname;
    private String lastname;
    private String email;
    private String password;
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();


    @Override
    public void setApplication(Map<String, Object> application) {
        System.out.println(""); 
    }

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    /**
     * @return the adminId
     */
    public int getAdminId() {
        return adminId;
    }

    /**
     * @param adminId the adminId to set
     */
    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    /**
     * @return the firstname
     */
    public String getFirstname() {
        return firstname;
    }

    /**
     * @param firstname the firstname to set
     */
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    public String showPatients1() throws Exception {
        String result = "FAILURE";
        System.out.println("SHOW PATIENTS");
        List patientList = DoctorService.getInstance().getAllPatients();
        sessionMap.put("PatientList", patientList);
        System.out.println(patientList.size());

        if (patientList != null) {
            result = "SUCCESS";
        } else {
            System.out.println("not fetching patient list");

        }

        return result;
    }

    public String showDonors() throws Exception {
        String result = "FAILURE";
        System.out.println("SHOW Donors");
        List donorList = AdminService.getInstance().getAllDonor();
        sessionMap.put("dnrList", donorList);
        System.out.println(donorList.size());

        if (!donorList.isEmpty()) {
            result = "SUCCESS";
        } else {
            System.out.println("not fetching Donor list");

        }

        return result;
    }

    public String doAdminLogin() throws Exception {
        String result = "FAILURE";

        boolean success = AdminService.getInstance().doLogin(this);

        if (success) {
            System.out.println("returning Success from doLogin method");
            sessionMap.put("Loggedin", this);
            List patientList = DoctorService.getInstance().getAllPatients();
            sessionMap.put("PatientList", patientList);
            List doctorList = PatientService.getInstance().getAllDoctors();
            sessionMap.put("DoctorList", doctorList);
            List donorList = AdminService.getInstance().getAllDonor();
            sessionMap.put("dnrList", donorList);
            List reqList = DonorService.getAllRequirementList();
            sessionMap.put("ReqList", reqList);
            List appointmemtList1 = AppointmentService.getInstance().getAllAppointments();
            sessionMap.put("AppointmentList1", appointmemtList1);
           List prescriptionList1 = PrescriptionService.getInstance().getAllPrescriptions();
            sessionMap.put("PrescriptionList", prescriptionList1);
            System.out.println("DO LOGIN ME HAI");

            result = "SUCCESS";

        } else {
            System.out.println("returning Failure from doLogin method");
//            Logger log = Logger.getLogger(User.class.getName());
//            log.error("returning Failure from Login method");

        }

        return result;
    }
}
