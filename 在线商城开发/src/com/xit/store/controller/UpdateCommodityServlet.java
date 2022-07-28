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
 * @Date: 2021/11/26   21:07
 * @Author: 86152
 */
public class UpdateCommodityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String count=request.getParameter("count");
       String id=request.getParameter("id");
       commodityDao dao=new commodityDao();
       dao.UpdateCommodityCount(Integer.valueOf(id),Integer.valueOf(count));
       request.getRequestDispatcher("/commodity/show").forward(request,response);
    }
}
