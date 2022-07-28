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
 * @Date: 2021/11/27   13:53
 * @Author: 86152
 */
public class GetCommodityByIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        commodityDao dao=new commodityDao();
        commodity com=dao.getCommodityEntity(Integer.valueOf(id));

        HttpSession session=request.getSession(false);
        if (session!=null){
            session.setAttribute("key",com);
            request.getRequestDispatcher("/CommodityUpdate.jsp").forward(request,response);
        }
    }
}
