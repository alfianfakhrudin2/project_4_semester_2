/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Helper;

/**
 *
 * @author Benaya
 */
public class StringHelper {
    
    public static String modifyDateIntoDatepicker(String Return_Date) {
        String[] splitted = Return_Date.split("-");
        Return_Date = splitted[1] + "/" + splitted[2] + "/" +  splitted[0] ;
        
        return Return_Date;
    }
    public static String modifyDateIntoDatepickers(String Borrow_Date) {
        String[] splitted = Borrow_Date.split("-");
        Borrow_Date = splitted[1] + "/" + splitted[2] + "/" +  splitted[0] ;
        
        return Borrow_Date;
    }
}
