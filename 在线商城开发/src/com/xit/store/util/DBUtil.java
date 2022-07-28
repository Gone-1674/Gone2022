package com.xit.store.util;

import java.sql.*;

/**
 * ClassName:  DBUtil
 * Package:  com.xit.store.util
 * Description:
 *
 * @Date: 2021/11/22   16:29
 * @Author: 86152
 */
public class DBUtil {                //封装数据库连接工具类
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() throws SQLException {
       Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
       return  con;
    }

    public void  close(Connection con, PreparedStatement ps){
        if (ps!=null){
            try {
                ps.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if (con!=null){
            try {
                con.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public  void cloesAll(Connection con,PreparedStatement ps,ResultSet rs){
      if (rs!=null){
          try {
              rs.close();
              close(con,ps);
          } catch (SQLException throwables) {
              throwables.printStackTrace();
          }
      }
    }

}
