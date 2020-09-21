/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ukdmp Kasun
 */
public class removeBookBean implements Serializable {

    private String bId;
 
    private boolean state;



    public String getbId() {
        return bId;
    }

    public void setbId(String bId) {
        this.bId = bId;
    }

   

    public boolean validate() {

        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
        } catch (Exception e) {
            System.out.println("Connection error");
        }

        try {
         
            String sqldelete = "DELETE FROM books where id='" + bId + "'";


            pst = con.prepareStatement(sqldelete);
            pst.execute();
            state = true;

        } catch (Exception e) {
            System.out.println("something went wrong");
            state = false;
        }

        return state;
    }

}

