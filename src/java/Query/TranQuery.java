/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BooksQuery;

/**
 *
 * @author Benaya
 */
public class TranQuery {
    public String gets = "SELECT * FROM transaction";
    public String creates = "INSERT INTO transaction (id, borrower_name, " + 
            "borrow_date, return_date) VALUES (?, ?, ?, ?)";
    public String getById = "SELECT * FROM transaction where id = ?";   
    public String update = "UPDATE transaction SET borrower_name = ?, borrow_date = ?, "
            + "return_date = ? WHERE id = ?";
    public String delete = "DELETE FROM transaction WHERE id = ?";
}
