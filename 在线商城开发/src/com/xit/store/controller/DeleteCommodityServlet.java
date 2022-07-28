package com.xit.store.controller;

import com.xit.store.dao.commodityDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ClassName:  ${NAME}
 * Package:  ${PACKAGE_NAME}
 * Description:
 *
 * @Date: 2021/11/25   19:11
 * @Author: 86152
 */
public class DeleteCommodityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String id= request.getParameter("id");
       commodityDao dao=new commodityDao();
       int result=dao.DeleteCommodity(Integer.valueOf(id));
       if (result==1){
           System.out.println("商品删除成功");
       }else {
           System.out.println("商品删除失败");
       }

       request.getRequestDispatcher("/commodity/show").forward(request,response);
    }
}
