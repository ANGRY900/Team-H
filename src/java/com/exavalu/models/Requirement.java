/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.RequirementsService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
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
public class Requirement extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public ApplicationMap getMap() {
        return map;
    }

    public void setMap(ApplicationMap map) {
        this.map = map;
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

    public String doLogRequirements() {
           sessionMap.clear();
        String result = "FAILURE";
        boolean success = RequirementsService.doLogRequirement(this);

        if (success) {
            String successMsg = "Requirements logged successfull!";
            sessionMap.put("SuccessMsg", successMsg);
            result = "SUCCESS";
        }
        else {
               Logger log = Logger.getLogger(Requirement.class.getName());
             log.error("returning Failure from Login method");
            System.out.println("returning Failure from Sign Up method");
        }

        return result;
    }
    private int requirementsId;
    private String bloodType;
    private String urgency;
    private String contactNo;
    private String requestissueDate;

    public int getRequirementsId() {
        return requirementsId;
    }

    public void setRequirementsId(int requirementsId) {
        this.requirementsId = requirementsId;
    }

    public String getBloodType() {
        return bloodType;
    }

    public void setBloodType(String bloodType) {
        this.bloodType = bloodType;
    }

    public String getUrgency() {
        return urgency;
    }

    public void setUrgency(String urgency) {
        this.urgency = urgency;
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

    /**
     * @return the requestissueDate
     */
    public String getRequestissueDate() {
        return requestissueDate;
    }

    /**
     * @param requestissueDate the requestissueDate to set
     */
    public void setRequestissueDate(String requestissueDate) {
        this.requestissueDate = requestissueDate;
    }

}
