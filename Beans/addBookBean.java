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


public class addBookBean implements Serializable {
    
      private String title;
      private String author;
      private  String publisher;
      private  String quantity;
      private String cat;

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }
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

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
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
                  
               String sql="insert into books(title, author, publisher,quantity,category)values('"+title+"','"+author+"','"+publisher+"','"+quantity+"','"+cat+"')";
        
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


