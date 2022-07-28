package com.xit.store.controller;

import com.xit.store.dao.chargeDao;
import com.xit.store.entity.charge;

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
 * @Date: 2021/12/27   12:02
 * @Author: 86152
 */
public class ChargeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        chargeDao dao=new chargeDao();
        request.setCharacterEncoding("UTF-8");
        String tel=request.getParameter("tel");
        String operator=request.getParameter("area");
        String  charge=request.getParameter("flow");

        com.xit.store.entity.charge phone=new charge(tel,operator,charge);
        try {
            int result=dao.doCharge(phone);
            if (result==1){
                System.out.println("话费充值成功");
            }else {
                System.out.println("话费充值失败");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("/myweb/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
