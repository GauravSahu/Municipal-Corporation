<%-- 
    Document   : logout.jsp
    Created on : 23 Mar, 2014, 2:23:03 AM
    Author     : QWERTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
session.invalidate();
response.sendRedirect("index.jsp");
 %>
