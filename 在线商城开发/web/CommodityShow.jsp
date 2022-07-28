<%@ page import="java.util.List" %>
<%@ page import="com.xit.store.entity.commodity" %><%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2021/11/24
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CommodityShow</title>
    <style type="text/css">
        table th{
            background-color: #eaeaea;
            vertical-align: bottom;
            text-align: left;
            padding: 8px;
            border: 1px solid #dddddd
        }
        a{
            color: #0088cc;
            text-decoration: none;
            cursor: default;
        }
        table td{
            text-align: left;
            vertical-align: top;
            padding: 8px;
            border: 1px solid #dddddd
        }
        table{
            width: 50%;
            border-spacing: 0;
            border-collapse: separate;
            border-radius: 4px;
            border-left: 0;
            border: 1px solid #dddddd;
        }
    </style>
    <script src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
         $(function () {
             $(".tr").hover(function () {
               $(this).css("background-color","#AEDD81")
             },function () {
               $(this).css("background-color","#fff")
             })
             $("td a").hover(function () {
                $(this).css("color","#e1251b")
             },function () {
                $(this).css("color","#0088cc")
             })
             $(".dd").on("click",function () {
                let status=window.confirm("确认删除?")
                 if (status==true){
                     return true;
                 }else {
                     return false;
                 }

             })
         })

    </script>
</head>
   <% List<commodity>commodityList=(List<commodity>) session.getAttribute("key");%>
<body style="font-family:'Helvetica Neue',Helvetica,Arial, sans-serif;color: #333333;">
    <table border="2" align="center"  >
        <tr>
            <th>商品编号</th>
            <th>商品</th>
            <th>单价</th>
            <th>购买数量</th>
            <th>支付金额</th>
            <th>
                操作
              <a href="/myweb/Electrical_app.html" style="float: right;color: #e1251b" >返回</a>
            </th>
        </tr>
      <%
         for (commodity com:commodityList){
       %>
        <tr style="text-align: center" class="tr">
            <td><%=com.getId()%></td>
            <td><%=com.getName()%></td>
            <td><%=com.getPrice()%></td>
            <td><%=com.getCount()%></td>
            <td><%=com.getPrice()*com.getCount()%></td>
            <td>
                <a href="/myweb/commodity/delete?id=<%=com.getId()%>" class="dd">删除订单</a>
                <a href="/myweb/commodity/getById?id=<%=com.getId()%>">修改订单</a>
            </td>
        </tr>
      <%
          }
      %>

    </table>

</body>
</html>
