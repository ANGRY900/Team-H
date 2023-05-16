/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

/**
 *
 * @author sapta
 */
import com.exavalu.models.Requirement;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Aman Sharma
 */
public class RequirementsService {

    public static boolean doLogRequirement(Requirement requirement) {
        boolean result = false;
        Connection con = JDBCConnectionManager.getMySQLConnection();
        String sql = "INSERT INTO requirements (requirementsId,bloodType,urgency,contactNo,requestissueDate)" + "VALUES(? ,? ,? ,?, ?)";

        try {

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setInt(1, requirement.getRequirementsId());
            preparedStatement.setString(2, requirement.getBloodType());
            preparedStatement.setString(3, requirement.getUrgency());
            preparedStatement.setString(4, requirement.getContactNo());
            preparedStatement.setString(5, requirement.getRequestissueDate());
            System.out.println("RequirementsService :: " + preparedStatement);

            int rs = preparedStatement.executeUpdate();

            if (rs == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
