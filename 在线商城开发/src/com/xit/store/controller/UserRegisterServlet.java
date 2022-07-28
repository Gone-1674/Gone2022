package com.xit.store.controller;

import com.xit.store.dao.userDao;
import com.xit.store.entity.user;

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
 * @Date: 2021/11/22   23:33
 * @Author: 86152
 */
public class UserRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user user=null;
        userDao dao=new userDao();
        request.setCharacterEncoding("UTF-8");
        String username=request.getParameter("username");
        String password= request.getParameter("password");
        String password2= request.getParameter("password2");


        if (username.trim().length()!=0&&password.equals(password2)){
            user=new user(null,username,password);
            int result=dao.userRegister(user);
            if (result==1){
                System.out.println("用户信息注册成功");
                response.sendRedirect("/myweb/index.jsp");
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
