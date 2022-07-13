/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Benaya
 */
public class TransModel {
       
    private String Id;
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
    
    public void setBooks_ID(String Id) {
        this.Id = Id;
    }

    public String getBooks_ID() {
        return Id;
    }

}
