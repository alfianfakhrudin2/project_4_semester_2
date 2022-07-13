
package Controller;

import java.sql.ResultSet;
import BooksQuery.TranQuery;
import Model.TransModel;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;


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
    
    public boolean create(TransModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getBooks_ID());
        map.put(2, model.getBorrower_Name());
        map.put(3, model.getBorrow_Date());
        map.put(4, model.getReturn_Date());
        
        String sql = this.querytran.creates;
        
        return this.preparedStatement(map, sql);
    }

}

