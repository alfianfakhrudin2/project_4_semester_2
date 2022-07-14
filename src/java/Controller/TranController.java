/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Helper.StringHelper;
import java.sql.ResultSet;
import Query.TranQuery;
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
        map.put(1, model.getId());
        map.put(2, model.getBorrower_Name());
        map.put(3, model.getBorrow_Date());
        map.put(4, model.getReturn_Date());
        
        String sql = this.querytran.creates;
        System.out.println(map);
        return this.preparedStatement(map, sql);
    }
    public ResultSet getByName(String name) {
        String sql = this.querytran.getByName;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, StringHelper.parseLikeQuery(name));
        
        return this.getWithParameter(map, sql);
    }
    
    
    public ResultSet getById(String Books_ID) {
        String sql = this.querytran.getById;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, Books_ID);
        
        return this.getWithParameter(map, sql);
    }
    
    public boolean update(String id, TransModel model) throws ParseException {
        
        Map<Integer, Object> map = new HashMap<>();
        
        map.put(1, model.getBorrower_Name());
        map.put(2, model.getBorrow_Date());
        map.put(3, model.getReturn_Date());
        map.put(4, id);
        
        String sql = this.querytran.update;
         System.out.println(map);
        return this.preparedStatement(map, sql);
    }
    
    public boolean delete(String Books_ID) throws ParseException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, Books_ID);
        
        String sql = this.querytran.delete;
        return this.preparedStatement(map, sql);
    }
    
       

}
