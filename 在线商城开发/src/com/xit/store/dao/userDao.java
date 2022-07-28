package com.xit.store.dao;

import com.xit.store.entity.user;
import com.xit.store.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * ClassName:  userDao
 * Package:  com.xit.store.dao
 * Description:
 *
 * @Date: 2021/11/22   16:43
 * @Author: 86152
 */
public class userDao {              //和用户信息相关的操作细节
    DBUtil dbUtil=new DBUtil();
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    int result=0;
    boolean flag=false;


    //用户登录
    public boolean userLogin(String username,String password){
        try {
            con=dbUtil.getConnection();
            ps=con.prepareStatement("select * from user where username=? and password=?");
            ps.setString(1,username);
            ps.setString(2,password);
            rs=ps.executeQuery();
            if (rs.next()){
                flag=true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.cloesAll(con,ps,rs);
        }
           return flag;
    }


    //用户注册
    public int userRegister(user user){
        try {
            con=dbUtil.getConnection();
            ps=con.prepareStatement("insert into user values (null,?,?)");
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPassword());
            result=ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,ps);
        }
        return  result;
    }
}

