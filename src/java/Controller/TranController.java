/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import java.sql.ResultSet;
import Query.TranQuery;
/**
 *
 * @author User
 */
public class TranController extends BaseController {
      
    TranQuery querytran = new TranQuery();
    public ResultSet gets() {
        String sql = this.querytran.gets;
        return this.get(sql);
    }
   
}
