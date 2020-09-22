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


public class addMemberBean implements Serializable {
    
      private String name;
      private String email;
      private  String type;
      private  String password;
      private  String LastBook;

    public String getLastBook() {
        return LastBook;
    }

    public void setLastBook(String LastBook) {
        this.LastBook = LastBook;
    }

    public String getLastBookDate() {
        return LastBookDate;
    }

    public void setLastBookDate(String LastBookDate) {
        this.LastBookDate = LastBookDate;
    }

    public String getIsHandOver() {
        return isHandOver;
    }

    public void setIsHandOver(String isHandOver) {
        this.isHandOver = isHandOver;
    }
      private String LastBookDate;
      private String isHandOver;
      private boolean state;
       

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

  

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPassword() {
        
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
                  
               String sql="insert into users(name,email,password,type,lastBTitle,lastBDate,isHandover )values('"+name+"','"+email+"','"+password+"','"+type+"',"
                       + " '"+LastBook+"', '"+LastBookDate+"', '"+isHandOver+"')";
        
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


