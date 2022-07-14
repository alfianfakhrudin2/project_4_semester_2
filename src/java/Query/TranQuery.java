/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author Alfian
 */

public class TranQuery {
public String getByName = "SELECT * FROM product where name LIKE ?";
    public String gets = "SELECT * FROM transaction";
    public String creates = "INSERT INTO transaction (id, borrower_name, " + 
            "borrow_date, return_date) VALUES (?, ?, ?, ?)";
    public String getById = "SELECT * FROM transaction where id = ?";   
    public String update = "UPDATE transaction SET borrower_name = ?, borrow_date = ?, "
            + "return_date = ? WHERE id = ?";
    public String delete = "DELETE FROM transaction WHERE id = ?";
}
