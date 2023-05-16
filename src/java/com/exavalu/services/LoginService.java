
package com.exavalu.services;

import com.exavalu.models.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import org.apache.log4j.Logger;

import java.sql.Connection;

import com.exavalu.utils.JDBCConnectionManager;

import com.exavalu.models.Donor;

/**
 *
 * @author sapta
 */
public final class  LoginService {
    
     public static  LoginService loginService = null;

    private LoginService() {
    }

    public static LoginService getInstance() {
        if (loginService == null) {
            return new LoginService();
        } else {
            return loginService;
        }
    }

    static Logger logger = Logger.getLogger(LoginService.class.getName());

    public boolean doUserLogin(User user) {
        boolean success = false;

        String sql = "Select * from doctorappointmentdb.users right join roles on doctorappointmentdb.roles.roleId=doctorappointmentdb.users.roleId where email=? and password=?";

        try {
            Connection con = JDBCConnectionManager.getMySQLConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());

            System.out.println("LoginService :: " + ps);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user.setRoleId(rs.getInt("roleId"));
                success = true;
            }
        } catch (SQLException ex) {
            logger.error(ex.getMessage() + LocalDateTime.now());
            System.out.println(ex.getErrorCode());
        }
        return success;
    }
    
    public boolean doDonorSignUp(Donor donor) {

        boolean result = false;
        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "INSERT INTO donordetails(donorId,donorName,donorAge,donorGender,donorBloodgroup,donorAnyHealthproblem,donorAddress,emailAddress,password,contactNo)" + "VALUES(? ,? ,? ,?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, donor.getDonorId());
            preparedStatement.setString(2, donor.getDonorName());
            preparedStatement.setInt(3, donor.getDonorAge());
            preparedStatement.setString(4, donor.getDonorgender());
            preparedStatement.setString(5, donor.getDonorBloodgroup());
            preparedStatement.setString(6, donor.getDonorAnyHealthproblem());
            preparedStatement.setString(7, donor.getDonorAddress());
            preparedStatement.setString(8, donor.getEmailAddress());
            preparedStatement.setString(9, donor.getPassword());
            preparedStatement.setString(10, donor.getContactNo());
            System.out.println("LoginService :: " + preparedStatement);

            int rs = preparedStatement.executeUpdate();

            if (rs == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

     public Donor getDonor(String emailAddress) {
        Connection con = JDBCConnectionManager.getMySQLConnection();
        Donor user = new Donor();
        try {

            String sql = "Select * from users where email=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emailAddress);

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setDonorName(rs.getString("donorName"));
                
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return user;
    }
}