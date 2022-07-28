package com.xit.store.dao;

import com.xit.store.entity.charge;
import com.xit.store.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * ClassName:  chargeDao
 * Package:  com.xit.store.dao
 * Description:
 *
 * @Date: 2021/12/27   14:01
 * @Author: 86152
 */
public class chargeDao {

    //话费充值
    public int doCharge(charge phone) throws SQLException {
        DBUtil util=new DBUtil();
        int result=0;
        Connection con=util.getConnection();
        String sql="insert into charge values (?,?,?,now())";
        PreparedStatement ps=con.prepareStatement(sql);

        ps.setString(1,phone.getTel());
        ps.setString(2,phone.getOperator());
        ps.setString(3,phone.getCharge());
        result=ps.executeUpdate();
        util.close(con,ps);
        return result;
    }
}
