package com.xit.store.dao;

import com.xit.store.entity.charge;
import com.xit.store.entity.flow;
import com.xit.store.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * ClassName:  flowDao
 * Package:  com.xit.store.dao
 * Description:
 *
 * @Date: 2021/12/27   16:25
 * @Author: 86152
 */
public class flowDao {
    //流量充值
    public int doFlow(flow f) throws SQLException {
        DBUtil util=new DBUtil();
        int result=0;
        Connection con=util.getConnection();
        String sql="insert into flow values (?,?,?,now())";
        PreparedStatement ps=con.prepareStatement(sql);

        ps.setString(1,f.getTel());
        ps.setString(2,f.getArea());
        ps.setString(3,f.getFlow());
        result=ps.executeUpdate();
        util.close(con,ps);
        return result;
    }
}
