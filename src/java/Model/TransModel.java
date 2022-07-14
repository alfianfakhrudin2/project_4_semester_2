/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Benaya
 */
public class TransModel {
       
    private String id;
    private String Borrower_Name;
    private String Borrow_Date;
    private String Return_Date;
    
    

    public void setReturn_Date(String Return_Date) {
        String[] splitted = Return_Date.split("/");
        Return_Date = splitted[2] + "-" + splitted[0] + "-" + splitted[1];
        
        this.Return_Date = Return_Date;
    }

    public String getReturn_Date() {
        return Return_Date;
    }

     public void setBorrow_Date(String Borrow_Date) {
        String[] splitted = Borrow_Date.split("/");
        Borrow_Date = splitted[2] + "-" + splitted[0] + "-" + splitted[1];
        
        this.Borrow_Date = Borrow_Date;
    }

    public String getBorrow_Date() {
        return Borrow_Date;
    }

    public void setBorrower_Name(String Borrower_Name) {
        this.Borrower_Name = Borrower_Name;
    }

    public String getBorrower_Name() {
        return Borrower_Name;
    }
    
    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

}

