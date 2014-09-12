<%-- 
    Document   : login
    Created on : 23 Mar, 2014, 12:43:43 AM
    Author     : QWERTY
--%>

<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("emp_id");
    String name = request.getParameter("name");
    String d_id = request.getParameter("dept_id");
    String role = request.getParameter("role");
    String ulb_id = request.getParameter("ulb_id");
   // String ulb_id = request.getParameter("ulb_id");
 
%>
<%
      try{
                    
           
            //int dept_id = rst.getInt("dept_id");
                    int dept_id = Integer.parseInt(d_id);
                   if(dept_id == 501){
                        session.setAttribute("role",role);
                        session.setAttribute("name",name);
                        session.setAttribute("emp_id",id);
                        session.setAttribute("ulb_id",ulb_id);
                        response.sendRedirect("admin/BDR/BDR-admin.jsp");
                    }
                    if(dept_id == 502){
                        session.setAttribute("role",role);
                        session.setAttribute("name",name);
                        session.setAttribute("emp_id",id);
                        response.sendRedirect("admin/admin.jsp");
                    }
                    if(dept_id == 503){
                        response.sendRedirect("admin/GRA/GRA-admin.jsp");
                    }
                    session.setAttribute("username",name);
                    response.sendRedirect("admin/admin.jsp");
                    
           
           
        }
       catch(Exception e){
            out.println(e);
        }
        
%>
