/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.DonorService;
import com.exavalu.services.LoginService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author sapta
 */
 
public class Donor extends ActionSupport implements ApplicationAware, SessionAware, Serializable {   
    private int donorId;
    private String donorName;
   
    private int donorAge;
    private String donorgender;
    private String donorBloodgroup;
    private String donorAnyHealthproblem;
    private String donorAddress;
    private String emailAddress;
    private String password;
    private String contactNo;
    private String certificate;
    private String roleId;
/**
     * @return the donorId
     */
    public int getDonorId() {
        return donorId;
    }

    /**
     * @param donorId the donorId to set
     */
    public void setDonorId(int donorId) {
        this.donorId = donorId;
    }

    /**
     * @return the donorName
     */
    public String getDonorName() {
        return donorName;
    }

    /**
     * @param donorName the donorName to set
     */
    public void setDonorName(String donorName) {
        this.donorName = donorName;
    }

    /**
     * @return the donorAge
     */
    public int getDonorAge() {
        return donorAge;
    }

    /**
     * @param donorAge the donorAge to set
     */
    public void setDonorAge(int donorAge) {
        this.donorAge = donorAge;
    }

    /**
     * @return the donorgender
     */
    public String getDonorgender() {
        return donorgender;
    }

    /**
     * @param donorgender the donorgender to set
     */
    public void setDonorgender(String donorgender) {
        this.donorgender = donorgender;
    }

    /**
     * @return the donorBloodgroup
     */
    public String getDonorBloodgroup() {
        return donorBloodgroup;
    }

    /**
     * @param donorBloodgroup the donorBloodgroup to set
     */
    public void setDonorBloodgroup(String donorBloodgroup) {
        this.donorBloodgroup = donorBloodgroup;
    }

    /**
     * @return the donorAnyHealthproblem
     */
    public String getDonorAnyHealthproblem() {
        return donorAnyHealthproblem;
    }

    /**
     * @param donorAnyHealthproblem the donorAnyHealthproblem to set
     */
    public void setDonorAnyHealthproblem(String donorAnyHealthproblem) {
        this.donorAnyHealthproblem = donorAnyHealthproblem;
    }

    /**
     * @return the donorAddress
     */
    public String getDonorAddress() {
        return donorAddress;
    }

    /**
     * @param donorAddress the donorAddress to set
     */
    public void setDonorAddress(String donorAddress) {
        this.donorAddress = donorAddress;
    }

    /**
     * @return the emailAddress
     */
    public String getEmailAddress() {
        return emailAddress;
    }

    /**
     * @param emailAddress the emailAddress to set
     */
    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
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

    /**
     * @return the contactNo
     */
    public String getContactNo() {
        return contactNo;
    }

    /**
     * @param contactNo the contactNo to set
     */
    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

   private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }
    
       public String getAllRequirementList() {
        String result = "FAILURE";

        List reqList = DonorService.getAllRequirementList();
        if (reqList!=null) {
            sessionMap.put("ReqList", reqList);
            result = "SUCCESS";
        }
       
       else {
               Logger log = Logger.getLogger(org.apache.catalina.User.class.getName());
             log.error("returning Failure from Update method");
           // System.out.println("returning Failure from Login method");
        }

        

        return result;
    }
     
    //    public String doLogin() throws Exception {
    //     getSessionMap().clear();
    //     String result = "FAILURE";

    //     boolean success = LoginService.getInstance().doLogin(this);
    //     System.out.println(success);
    //     if (success) {
    //         System.out.println("returning Success from doLogin method");
    //         getSessionMap().put("LoggedIn", this);

    //         Donor user = LoginService.getInstance().getDonor(this.getEmailAddress());
    //         getSessionMap().put("USER", user);
    //          ArrayList reqList  = DonorService.getInstance().getAllRequirementList();
    //         getSessionMap().put("ReqList", reqList );
    //         result = "SUCCESS";
        
           
    //     }
    //      else {
    //            Logger log = Logger.getLogger(Donor.class.getName());
    //          log.error("returning Failure from Login method");
    //         System.out.println("returning Failure from Login method");
    //     }
    //     return result;
    // }

    public String doLogout() throws Exception {
        getSessionMap().clear();
        return "SUCCESS";
    }

    public String doSignUp() throws Exception {
        getSessionMap().clear();
        String result = "FAILURE";

         boolean success = LoginService.getInstance().doDonorSignUp(this);

        if (success) {
            System.out.println("returning Success from doSignUp method");
            String successMsg = "Now Login with your Email Id and PassWord";
            getSessionMap().put("SuccessMsg", successMsg);
            result = "SUCCESS";
        }  else {
               Logger log = Logger.getLogger(Donor.class.getName());
             log.error("returning Failure from Login method");
            System.out.println("returning Failure from Sign Up method");
        }

        return result;
    }

    /**
     * @return the roleId
     */
    public String getRoleId() {
        return roleId;
    }

    /**
     * @param roleId the roleId to set
     */
    public void setRoleId(String roleId) {
        this.roleId = roleId;
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
     * @return the certificate
     */
    public String getCertificate() {
        return certificate;
    }

    /**
     * @param certificate the certificate to set
     */
    public void setCertificate(String certificate) {
        this.certificate = certificate;
    }

}