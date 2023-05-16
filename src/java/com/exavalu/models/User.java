package com.exavalu.models;

import com.exavalu.services.AdminService;
import com.exavalu.services.AppointmentService;
import com.exavalu.services.DoctorService;
import com.exavalu.services.DonorService;
import com.exavalu.services.LoginService;
import com.exavalu.services.PatientService;
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

public class User extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    private String email;
    private String password;

    private String userName;
    private int roleId;

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

    public String doLogin() throws Exception {
        String result = "FAILURE";

        boolean success = LoginService.getInstance().doUserLogin(this);

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

            System.out.println("DO LOGIN ME HAI");
            result = "SUCCESS";

        }

        return result;
    }

//    public String doPreSignUp() throws Exception {
//        String result = "SUCCESS";
//            ArrayList countryList = UserService.getInstance().getAllCountries();
//            getSessionMap().put("CountryList", countryList);
//            return result;
//    }
//    public String getAllEmployee() throws Exception {
//        String result = "SUCCESS";
//
//        return result;
//
//    }
//
//    public String doPreSignUp() throws Exception {
//        String result = "SUCCESS";
//        ArrayList countryList = CountryService.getInstance().getAllCountry();
//
//        sessionMap.put("CountryList", countryList);
//        sessionMap.put("Emp", this);
//        if (this.countryCode != null) {
//            ArrayList stateList = StateService.getInstance().getAllState(this.countryCode);
//            sessionMap.put("ProvinceList", stateList);
//            sessionMap.put("User", this);
//            result = "STATELIST";
//        }
//        if (this.stateCode != null) {
//            ArrayList distList = DistrictService.getInstance().getAllDistrict(this.stateCode);
//            sessionMap.put("DistrictList", distList);
//            this.setStateCode(this.stateCode);
//            sessionMap.put("User", this);
//            result = "DISTRICTLIST";
//        }
//        if (this.addressLine2 != null && this.addressLine2.length() > 0 && this.addressLiinel != null && this.addressLiinel.length() > 0 && this.phoneNumber != null && this.phoneNumber.length() > 0 && this.firstName != null && this.firstName.length() > 0 && this.lastName != null && this.lastName.length() > 0 && this.email != null && this.email.length() > 0 && this.password != null && this.password.length() > 0 && this.stateCode.length() > 1 && this.countryCode.length() > 1 && this.distCode.length() > 1) {
//            boolean success = UserService.getInstance().doSignUp(this);
//
//            if (success) {
//                result = "DONE";
//                sessionMap.put("SuccessSignUp", "Successfully Registered");
//
//            }
//            System.out.println(sessionMap);
//            return result;
//        }
//        System.out.println(this.countryCode);
//        System.out.println(this.stateCode);
//        System.out.println(this.distCode);
//        System.out.println(this.email);
//
//        System.out.println(sessionMap);
//        return result;
//
//    }
    public String doLogout() {
        String result = "FAILURE";
        sessionMap.clear();
        if (sessionMap.isEmpty()) {
            result = "SUCCESS";
        }
        return result;
    }

//    public String doSignUp() {
//        String result = "FAILURE";
//        boolean success = UserService.getInstance().doSignUp(this);
//        if (success) {
//            String createmsg = "User created !";
//            getSessionMap().put("Createmsg", createmsg);
//
//            System.out.println("returning Success from doLogin method");
//            result = "SUCCESS";
//
//        } else {
//            System.out.println("returning Failure from doLogin method");
//        }
//        return result;
//    }
//
//    public String apiCall() throws Exception {
//        String result = "SUCCESS";
//        ArrayList userList = ApiService.getInstance().getAllData();
//        boolean success = LoginService.getInstance().doSignUpAll(userList);
//
//        if (success) {
//            result = "SUCCESS";
//            sessionMap.put("SuccessSignUp", "Successfully Registered");
//
//        } else {
//            sessionMap.put("FailSignUp", "Email All Ready Exsists");
//        }
//        System.out.println(sessionMap);
//        return result;
//
//    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
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

}
