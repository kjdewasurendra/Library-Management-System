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


public class recivedBean implements Serializable {

    private String bId;
    private String mId;
    private String Id;
    private String handOver = "Yes";
    private String avalibality = "Available";
    private boolean state;

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }
bnvaKWJHegukhawjiuh
    ABWJHBAHJBJHbef
    ABEFJHBSDF
 
    
    public String getbId() {
        return bId;
    }

    public void setbId(String bId) {
        this.bId = bId;
    }

    public String getmId() {
        return mId;
    }

    public void setmId(String mId) {
        this.mId = mId;
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
            String sqlupdateUser = "UPDATE users SET isHandover='" + handOver + "' where id='" + mId + "'";
            String sqlupdatebook = "UPDATE books SET quantity='" + avalibality + "' where id='" + bId + "'";
            String sqldelete = "DELETE FROM bookissue where id='" + Id + "'";

            pst = con.prepareStatement(sqlupdateUser);
            pst.execute();
            pst = con.prepareStatement(sqlupdatebook);
            pst.execute();
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
