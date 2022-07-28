package com.xit.store.controller;

import com.xit.store.dao.commodityDao;
import com.xit.store.entity.commodity;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * ClassName:  ${NAME}
 * Package:  ${PACKAGE_NAME}
 * Description:
 *
 * @Date: 2021/11/23   21:44
 * @Author: 86152
 */
public class CommodityShowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       commodityDao dao= new commodityDao();
       List<commodity> commodityList=dao.getCommodityList();

/*
       String json="{}";
       ObjectMapper om= new ObjectMapper();
       json=om.writeValueAsString(commodityList);

       response.setContentType("application/json;charset=UTF-8");
       PrintWriter out=response.getWriter();
       out.print(json);
       out.flush();
       out.close();
*/

       HttpSession session= request.getSession();
       session.setAttribute("key",commodityList);
       response.sendRedirect("/myweb/CommodityShow.jsp");

    }
}
