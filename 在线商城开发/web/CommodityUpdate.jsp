<%@ page import="com.xit.store.entity.commodity" %><%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2021/11/26
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CommodityUpdate</title>
    <%
        commodity com=(commodity) session.getAttribute("key");
    %>
     <style type="text/css">
         table{
           border-spacing: 0;
           border-radius: 7px;
           border: 1px solid #dddddd;
         }
         th{
            width: 100px;
            padding: 8px;
            background-color:#eaeaea ;
            border: 1px solid #dddddd;
            text-align: left;
         }
         td{
             border: 1px solid #dddddd;
             padding: 8px;
         }
         .t{
             width: 300px;
             height: 32px;
             text-align: center;
             border: 0px;
             outline: none;
         }
         .dd{
             width: 100px;
             height: 40px;
             background-color: rgb(240, 55, 38);
             color: rgb(245, 245, 242);
             font-size: 15px;
             border-radius: 7px;
         }
     </style>
</head>
<body>
     <form action="/myweb/commodity/update">
         <table border="2" align="center"   >
             <tr>
                 <th>商品编号</th>
                 <td><input type="text" class="t" value="<%=com.getId()%>" name="id" readonly></td>
             </tr>
             <tr>
                 <th>商品</th>
                 <td><input type="text" class="t" value="<%=com.getName()%>" readonly></td>
             </tr>
             <tr>
                 <th>单价</th>
                 <td><input type="text" class="t" value="<%=com.getPrice()%>" readonly></td>
             </tr>
             <tr>
                 <th>购买数量</th>
                 <td><input type="text" class="t" value="<%=com.getCount()%>" name="count"></td>
             </tr>
             <tr align="center" >
                 <td colspan="2">
                     <input type="submit" value="修改" class="dd" >
                     <input type="submit"  value="返回" class="dd" onclick="window.history.go(-1)">
                 </td>
             </tr>
         </table>
     </form>


</body>
</html>
