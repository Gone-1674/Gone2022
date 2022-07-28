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
 * @Date: 2021/11/23   16:35
 * @Author: 86152
 */
public class TenDayUserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        userDao dao=new userDao();
        String username=null,password=null;
        Cookie[] cookies=request.getCookies();   //username,password

        if (cookies!=null){
            for (Cookie cookie:cookies){
                if("username".equals(cookie.getName())){
                    username=cookie.getValue();
                }
                if ("password".equals(cookie.getName())){
                    password=cookie.getValue();
                }
            }

            Boolean flag=dao.userLogin(username,password);
            if (flag==true){                       //期间用户信息无做修改处理
                HttpSession session=request.getSession();
                session.setAttribute("user",username);
                response.sendRedirect("/myweb/index.jsp");
            }else {
             response.sendRedirect("/myweb/login.html");
            }
        }else {
          response.sendRedirect("/myweb/login.html");
        }

    }
}
