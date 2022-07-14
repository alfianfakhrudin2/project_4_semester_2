/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

/**
 *
 * @author user
 */
public class StringHelper {
    
    public static String parseLikeQuery(String query) {
        return "%" + query + "%";
    }
    
    
    public static String modifyDateIntoDatepicker(String return_date) {
        String[] splitted = return_date.split("-");
        return_date = splitted[1] + "/" + splitted[2] + "/" +  splitted[0] ;
        
        return return_date;
    }
    public static String modifyDateIntoDatepickers(String Borrow_Date) {
        String[] splitted = Borrow_Date.split("-");
        Borrow_Date = splitted[1] + "/" + splitted[2] + "/" +  splitted[0] ;
        
        return Borrow_Date;
    }
}
