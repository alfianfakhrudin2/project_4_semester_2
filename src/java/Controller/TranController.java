package Controller;

import java.sql.ResultSet;
import BooksQuery.TranQuery;


/**
 *
 * @author Hudya
 */
public class TranController extends BaseController {
      
    TranQuery querytran = new TranQuery();
    public ResultSet gets() {
        String sql = this.querytran.gets;
        return this.get(sql);
    }
   
}
