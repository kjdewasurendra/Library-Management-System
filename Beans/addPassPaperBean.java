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


public class addPassPaperBean implements Serializable {
    
      private String title;
      private String subject;
      private  String publisher;
      private  String year;
      private boolean state;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
       

    
    public boolean validate(){
        
            Connection con=null;
              PreparedStatement pst=null;
              ResultSet rs=null;
              
              try{
           
             Class.forName("com.mysql.jdbc.Driver");
             con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
             }
             catch(Exception e){
                 System.out.println("Connection error");
             }
              
              try{
                  
               String sql="insert into passpapers(title, publisher, year,subject)values('"+title+"','"+publisher+"','"+year+"','"+subject+"')";
        
               pst=con.prepareStatement(sql);
               pst.execute();
                
               state=true;
                  
              }
              catch(Exception e){
                  System.out.println("something went wrong");
                  state=false;
              }
        
        return state;
    }

    
   
   
    
}


