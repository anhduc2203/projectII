<%-- 
    Document   : insert_category
    Created on : Dec 20, 2018, 5:12:11 PM
    Author     : AnhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật danh mục</title>
        
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        
        <%
            String error = "";
            if (request.getParameter("error") != null){
                error = (String) request.getParameter("error");
            }
        
        %>
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>
            
            <div id="rightContent">
                <h3>Cập nhật danh mục sách</h3>
                <form action="/WebApplication1/ManagerCategoryServlet" method="post">
                <table width="95%">
                    <tr>
                        <td style="float: right"><b>Danh mục sách</b></td>
                        <td><input type="text" class="sedang" name="tenDanhMuc"><%=error%></td>
                    </tr>
                    <tr><td></td><td>
                            <input type="hidden" name="command" value="update">
                            <input type="hidden" name="categoryID" value="<%=request.getParameter("categoryID")%>">
                            <input type="submit" class="button" value="Lưu">
                        </td></tr>
                </table>
                </form>
            </div>
            
            <div class="clear"></div>
            <jsp:include page="footer.jsp"></jsp:include>

        </div>
        
    </body>
</html>
