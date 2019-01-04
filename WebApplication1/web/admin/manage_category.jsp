<%-- 
    Document   : manage_category
    Created on : Dec 20, 2018, 4:28:22 PM
    Author     : AnhDuc
--%>

<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lí danh mục</title>
        
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        
        <%
        
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Category> listCategory = categoryDAO.getCategory();

        %>
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>
            <div id="rightContent">
                <h3>Quản lí danh mục sách</h3>
                <br>
                <a href="${root}/admin/insert_category.jsp">Thêm danh mục sách</a>
                <br><br>
                <table class="data">
                    <tr class="data">
                        <th class="data" width="30px">STT</th>
                        <th class="data">Mã danh mục</th>
                        <th class="data">Tên danh mục</th>
                        <th class="data" width="90px">Chức năng</th>
                    </tr>
                    
                    <%
                        int count = 0;
                        for (Category category: listCategory){
                            count+=1;
                    %>
                    
                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%=category.getCategoryID()%></td>
                        <td class="data"><%=category.getCategoryName()%></td>
                        <td class="data" width="90px">
                            <center>
                                <a href="${root}/admin/update_category.jsp?command=update&categoryID=<%=category.getCategoryID()%>">Sửa</a>&nbsp;&nbsp; |&nbsp;&nbsp;
                                <a href="/WebApplication1/ManagerCategoryServlet?command=delete&categoryID=<%=category.getCategoryID()%>">Xóa</a>
                            </center>
                        </td>
                    </tr>
                    
                    <%
                    }
                    %>
                    
                </table>
            </div>
            <div class="clear"></div>
            <jsp:include page="footer.jsp"></jsp:include>

        </div>
        
    </body>
</html>
