/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Query.InfoBooksQuery;
import java.sql.ResultSet;
/**
 *
 * @author User
 */
public class InfoBooksController extends BaseController{
    InfoBooksQuery query = new InfoBooksQuery();
    
    public ResultSet get() {
        String sql = this.query.get;
        return this.get(sql);
    }
}
