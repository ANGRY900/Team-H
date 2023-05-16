package com.exavalu.models;

import com.exavalu.services.AppointmentService;
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

public class Doctor extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    private int doctorId;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String speciality;
    private String experience;
    private String schedule;
    private String fees;
    private String status;
    private int roleId;

    public String doLogin() throws Exception {
        String result = "FAILURE";

        boolean success = DoctorService.getInstance().doLogin(this);

        if (success) {
            System.out.println("returning Success from doLogin method");
            getSessionMap().put("Loggedin", this);
            List patientList = DoctorService.getInstance().getAllPatients();
            sessionMap.put("PatientList", patientList);
            System.out.println("DO LOGIN ME HAI");

            result = "SUCCESS";

        } else {
            System.out.println("returning Failure from doLogin method");
//            Logger log = Logger.getLogger(User.class.getName());
//            log.error("returning Failure from Login method");

        }

        return result;
    }

    public String doDoctorSearch() throws SQLException {
        String result = "SUCCESS";

        List doctorList1 = PatientService.getInstance().searchDoctor(this);
        sessionMap.put("DoctorList1", doctorList1);

        return result;
    }

    public String doLogout() {
        String result = "SUCCESS";
        System.out.println("returning Success from Logout method");

        getSessionMap().clear();
        return result;
    }

    public String showPatients() throws Exception {
        String result = "FAILURE";
        System.out.println("SHOW PATIENTS");
        List patientList = DoctorService.getInstance().getAllPatients();
        sessionMap.put("PatientList", patientList);
        System.out.println(patientList.size());

        if (!patientList.isEmpty()) {
            result = "SUCCESS";
        } else {
            System.out.println("not fetching patient list");

        }

        return result;
    }

    public String doGetDoctor() {
        String result = "FAILURE";
        Doctor doctor = DoctorService.getDoctor(this);
        sessionMap.put("Doctor", doctor);
        System.out.println("isnide doGetDoctor");

        System.out.println("returning Success from doGetDoctor method");
        result = "SUCCESS";

        return result;
    }

    public String deleteDoctor() throws Exception {
        String res = "FAILURE";
        boolean result = DoctorService.deleteDoctors(doctorId);
        List doctorList = PatientService.getInstance().getAllDoctors();
        if (result) {
            sessionMap.put("DoctorList", doctorList);
            res = "SUCCESS";
        }
        return res;
    }

    public String doUpdateDoctor() throws Exception {

        String result = "FAILURE";
        boolean success = DoctorService.updateDoctor(this);

        if (success) {
            String updateMsg = "updated Doctor";
            sessionMap.put("UpdateMsg", updateMsg);

            List doctorList = new ArrayList();
            doctorList = PatientService.getInstance().getAllDoctors();
            sessionMap.put("DoctorList", doctorList);

            System.out.println("returning Success from doUpdateDoctor method");
            result = "SUCCESS";

        }
        return result;
    }

    public String saveDoctor() {
        String result = "FAILURE";
        Doctor doctor = new Doctor();
        doctor.setStatus(getStatus());
        doctor.setSchedule(getSchedule());
        doctor.setSpeciality(getSpeciality());

        boolean res = DoctorService.saveDoctor(doctor, doctorId);
        if (res) {
            List doctorList = new ArrayList();
            doctorList = PatientService.getInstance().getAllDoctors();
            sessionMap.put("DoctorList", doctorList);
            result = "SUCCESS";
        } else {
            sessionMap.put("Doctor", doctor);
        }
        return result;
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
     * @return the doctorId
     */
    public int getDoctorId() {
        return doctorId;
    }

    /**
     * @param doctorId the doctorId to set
     */
    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
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
     * @return the experience
     */
    public String getExperience() {
        return experience;
    }

    /**
     * @param experience the experience to setS
     */
    public void setExperience(String experience) {
        this.experience = experience;
    }

    /**
     * @return the fees
     */
    public String getFees() {
        return fees;
    }

    /**
     * @param fees the fees to set
     */
    public void setFees(String fees) {
        this.fees = fees;
    }

    /**
     * @return the schedule
     */
    public String getSchedule() {
        return schedule;
    }

    /**
     * @param schedule the schedule to set
     */
    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    /**
     * @return the roleId
     */
    public int getRoleId() {
        return roleId;
    }

    /**
     * @param roleId the roleId to set
     */
    public void setRoleId(int roleId) {
        this.roleId = roleId;
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

    public String addNewDoctor() throws Exception {
        String res = "FAILURE";
        Doctor addDOc = new Doctor();
        addDOc.setDoctorId(doctorId);
        addDOc.setEmail(email);
        addDOc.setPassword(password);
        addDOc.setFirstName(firstName);
        addDOc.setLastName(lastName);
        addDOc.setPhoneNumber(phoneNumber);
        addDOc.setSpeciality(speciality);
        addDOc.setExperience(experience);
        addDOc.setSchedule(schedule);
        addDOc.setRoleId(roleId);
        addDOc.setFees(fees);
        addDOc.setStatus(status);

        boolean result = DoctorService.addDoctor(addDOc);
        List doctorList = PatientService.getInstance().getAllDoctors();

        if (result) {
            String successMsg = "Doctor Added Successfully";
            sessionMap.put("SuccessMsg", successMsg);
            sessionMap.put("DoctorList", doctorList);
            res = "SUCCESS";
        } else {
            String errorMsg = "Some Error Happenned";
            sessionMap.put("ErrorMsg", errorMsg);
        }
        return res;
    }

    public String doGetDoctorByAppointment() {
        String result = "FAILURE";
        Doctor ayush = AppointmentService.getDoctor(this);
        sessionMap.put("Ayush", ayush);
        System.out.println("isnide doGetDoctor");
        System.out.println(ayush);

        System.out.println("returning Success from doGetDoctor method");
        result = "SUCCESS";

        return result;
    }

}
