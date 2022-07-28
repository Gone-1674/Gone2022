package com.xit.store.controller;

import com.xit.store.dao.chargeDao;
import com.xit.store.dao.flowDao;
import com.xit.store.entity.charge;
import com.xit.store.entity.flow;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * ClassName:  ${NAME}
 * Package:  ${PACKAGE_NAME}
 * Description:
 *
 * @Date: 2021/12/27   16:27
 * @Author: 86152
 */
public class FlowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        flowDao dao=new flowDao();
        request.setCharacterEncoding("UTF-8");
        String tel=request.getParameter("tel");
        String area=request.getParameter("area");
        String  flow=request.getParameter("flow");

        com.xit.store.entity.flow f=new flow(tel,area,flow);
        try {
            int result=dao.doFlow(f);
            if (result==1){
                System.out.println("流量充值成功");
            }else {
                System.out.println("流量充值失败");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("/myweb/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
