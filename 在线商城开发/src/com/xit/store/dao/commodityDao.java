package com.xit.store.dao;

import com.xit.store.entity.commodity;
import com.xit.store.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * ClassName:  commodityDao
 * Package:  com.xit.store.dao
 * Description:
 *
 * @Date: 2021/11/24   13:07
 * @Author: 86152
 */
public class commodityDao {

    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    DBUtil dbUtil= new DBUtil();
    int result=0;


    //商品初次添加
    public int AddCommodity(commodity comm){
        try {
            con=con= dbUtil.getConnection();
            ps=con.prepareStatement("insert  into commodity values(?,?,?,?)");

            ps.setInt(1,comm.getId());
            ps.setString(2,comm.getName());
            ps.setDouble(3,comm.getPrice());
            ps.setInt(4,comm.getCount());

           result= ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,ps);
        }
        return result;
    }


    //商品多次添加
    public void UpdateCommodityCount(Integer id,Integer count){
        try {
            con=dbUtil.getConnection();
            ps=con.prepareStatement("update  commodity set count =? where id=?");

            ps.setInt(1,count);
            ps.setInt(2,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,ps);
        }
    }


    //购物车查询
    public List<commodity> getCommodityList(){
        List commodityList=new ArrayList();
        commodity com=null;
        int id,count;
        String name,price;

        try {
            con=dbUtil.getConnection();
            ps=con.prepareStatement("select * from commodity");
            rs=ps.executeQuery();
            while (rs.next()){
              id=rs.getInt("id");
              count=rs.getInt("count");
              name=rs.getString("name");
              price=rs.getString("price");
              com=new commodity(id,name,Double.valueOf(price),count);
              commodityList.add(com);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.cloesAll(con,ps,rs);
        }
           return commodityList;

    }


   //商品删除
    public int DeleteCommodity(Integer id){
        try {
            con=dbUtil.getConnection();
            ps=con.prepareStatement("delete from commodity where id=?");
            ps.setInt(1,id);
            result=ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            dbUtil.close(con,ps);
        }
        return result;
    }


   //商品的数量查询
   public int getCommodity(Integer id){
       try {
           con=dbUtil.getConnection();
           ps=con.prepareStatement("select count from commodity where id=?");
           ps.setInt(1,id);
           rs=ps.executeQuery();
           if (rs.next()){
                result=rs.getInt("count");
           }else {

           }
       } catch (SQLException throwables) {
           throwables.printStackTrace();
       }finally {
           dbUtil.cloesAll(con,ps,rs);
       }
       return  result;
   }


   //商品的查询
   public commodity getCommodityEntity(Integer id){
       commodity com=null;

       try {
           con=dbUtil.getConnection();
           ps=con.prepareStatement("select * from commodity where id=?");
           ps.setInt(1,id);
           rs=ps.executeQuery();
           while (rs.next()){
                 int Id=rs.getInt("id");
                 String name=rs.getString("name");
                 String price=rs.getString("price");
                 int count=rs.getInt("count");
                 com=new commodity(Id,name,Double.valueOf(price),count);
           }
       } catch (SQLException throwables) {
           throwables.printStackTrace();
       }finally {
           dbUtil.cloesAll(con,ps,rs);
       }
       return  com;
   }



}
