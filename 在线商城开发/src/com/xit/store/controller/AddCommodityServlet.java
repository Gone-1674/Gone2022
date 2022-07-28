package com.xit.store.controller;

import com.xit.store.dao.commodityDao;
import com.xit.store.entity.commodity;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * ClassName:  ${NAME}
 * Package:  ${PACKAGE_NAME}
 * Description:
 *
 * @Date: 2021/11/24   13:03
 * @Author: 86152
 */
public class AddCommodityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session= request.getSession(false);

        if (session!=null){
            String id= request.getParameter("id");
            String  name=  request.getParameter("name");
            String price=  request.getParameter("price");
            commodityDao dao= new commodityDao();

            Integer obj=(Integer) session.getAttribute(id);   //当前会话判断是否第一次添加至购物车,记录本次商品的添加状态
            if (obj==null){
                obj=0;
                int  count=dao.getCommodity(Integer.valueOf(id));      //查询库中该商品的数量状态
                if (count==0){
                    obj=1;
                    commodity comm=new commodity(Integer.valueOf(id),name,Double.valueOf(price),obj);
                    int result=dao.AddCommodity(comm);
                    if (result==1){
                        System.out.println("商品添加成功");
                        session.setAttribute(id,obj);
                    }else {
                        System.out.println("商品添加失败");
                    }
                }else {                  //count!=0
                    session.setAttribute(id,++obj);
                    dao.UpdateCommodityCount(Integer.valueOf(id),++count);
                }


            }else {          //obj!=null
                session.setAttribute(id,++obj);
                int  count=dao.getCommodity(Integer.valueOf(id));
                if (count==1){
                    dao.UpdateCommodityCount(Integer.valueOf(id),++count);
                }else {
                    if (count==0){       //用户添加后又存在删除行为
                        commodity comm=new commodity(Integer.valueOf(id),name,Double.valueOf(price),1);
                        int result=dao.AddCommodity(comm);
                        if (result==1){
                            System.out.println("商品添加成功");
                        }else {
                            System.out.println("商品添加失败");
                        }
                    }else {
                        dao.UpdateCommodityCount(Integer.valueOf(id),++count);
                    }
                }
            }
            response.sendRedirect("/myweb/Electrical_app.html");
        }else {           
            response.sendRedirect("/myweb/login.html");
        }

    }
}
