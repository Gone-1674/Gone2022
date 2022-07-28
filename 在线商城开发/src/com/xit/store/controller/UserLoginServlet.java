package com.xit.store.controller;

import com.xit.store.dao.userDao;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * ClassName:  ${NAME}
 * Package:  ${PACKAGE_NAME}
 * Description:
 *
 * @Date: 2021/11/22   16:52
 * @Author: 86152
 */
public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*      request.setCharacterEncoding("UTF-8");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String status=request.getParameter("status");

        userDao dao= new userDao();
        boolean result=dao.userLogin(username,password);
        if (result==true){
           HttpSession session= request.getSession();
            if ("ok".equals(status)&&status!=null){
               Cookie cookie1= new Cookie("username",username);
               Cookie cookie2= new Cookie("password",password);

               cookie1.setMaxAge(1*60);
               cookie2.setMaxAge(1*60);
               cookie1.setPath(request.getContextPath());
               cookie2.setPath(request.getContextPath());

               response.addCookie(cookie1);
               response.addCookie(cookie2);
            }
            response.sendRedirect("/myweb/index.html");
        }else {
            response.sendRedirect("/myweb/login.html");
        }*/



        request.setCharacterEncoding("UTF-8");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String status=request.getParameter("status");

        userDao dao= new userDao();
        boolean result=dao.userLogin(username,password);
        if (result==true){
           HttpSession session= request.getSession();
            if ("ok".equals(status)&&status!=null){
               Cookie cookie1= new Cookie("username",username);
               Cookie cookie2= new Cookie("password",password);

               cookie1.setMaxAge(1*60*60*10);
               cookie2.setMaxAge(1*60*60*10);
               cookie1.setPath(request.getContextPath());
               cookie2.setPath(request.getContextPath());

               response.addCookie(cookie1);
               response.addCookie(cookie2);
            }
            session.setAttribute("user",username);           //存储当前用户的姓名
            response.sendRedirect("/myweb/index.jsp");
        }else {
            response.sendRedirect("/myweb/login.html");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
