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


public class issueBookBean implements Serializable {

    private String title;
    private String author;
    private String publisher;
    private String bId;
    private String mId;
    private String issuedOn;
    private String lastDate;
    private String handOver = "No";
    private String avalibality = "No";
    private boolean state;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

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

    public String getIssuedOn() {
        return issuedOn;
    }

    public void setIssuedOn(String issuedOn) {
        this.issuedOn = issuedOn;
    }

    public String getLastDate() {
        return lastDate;
    }

    public void setLastDate(String lastDate) {
        this.lastDate = lastDate;
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
            //String sqlupdate="Update users set lastBTitle='"+title+"',lastBDate='"+issuedOn+"',isHandover='"+handOver+"' where id="+mId;
            String sqlupdateUser = "UPDATE users SET lastBTitle='" + title + "',lastBDate='" + issuedOn + "',isHandover='" + handOver + "' where id='" + mId + "'";
            String sqlupdatebook = "UPDATE books SET quantity='" + avalibality + "' where id='" + bId + "'";
            String sql = "insert into bookissue(title,publisher,bookId, memberId, issueDate, lastDate)values('" + title + "','" + publisher + "','" + bId + "','" + mId + "','" + issuedOn + "','" + lastDate + "')";

            pst = con.prepareStatement(sqlupdateUser);
            pst.execute();
            pst = con.prepareStatement(sqlupdatebook);
            pst.execute();
            pst = con.prepareStatement(sql);
            pst.execute();

            state = true;

        } catch (Exception e) {
            System.out.println("something went wrong");
            state = false;
        }

        return state;
    }

}
