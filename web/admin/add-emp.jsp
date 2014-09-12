<%-- 
    Document   : birth-reg
    Created on : 25 Mar, 2014, 12:11:16 AM
    Author     : QWERTY
--%>

<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        String emp_name = request.getParameter("name");
        String father = request.getParameter("father_name");
        String mother = request.getParameter("mother_name");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String email = request.getParameter("email");
        String phone_no = request.getParameter("phone_no");
        String city = request.getParameter("City");
        String address = request.getParameter("address");
        String religion = request.getParameter("religion");
        String gender = request.getParameter("gender");
        String doj = request.getParameter("doj");
        String natioanality = request.getParameter("nat");
        String marital_status = request.getParameter("marital");
        String role = request.getParameter("role");
        String ulb_id = request.getParameter("ulbsel");
        String dept_id = request.getParameter("dept_id");
        
        int status = 0 ;
%>

<%
        try{
                    
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("INSERT INTO `employee_master`(`emp_name`, `emp_father_name`, `emp_mother_name`, `password`, `dob`, `email`, `phone_no`, `address`, `city`, `religion`, `gender`, `date_of_joinning`, `nationality`, `marital_status`, `role`,`ulb_id`, `dept_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            //pstmt.setInt(1 );
            pstmt.setString(1, emp_name);
            pstmt.setString(2, father);
            pstmt.setString(3, mother);
            pstmt.setString(4, password);
            pstmt.setString(5, dob);
            pstmt.setString(6, email);
            pstmt.setString(7, phone_no);
            pstmt.setString(8, address);
            pstmt.setString(9, city);
            pstmt.setString(10, religion);
            pstmt.setString(11, gender);
            pstmt.setString(12, doj);
            pstmt.setString(13, natioanality);
            pstmt.setString(14, marital_status);
            pstmt.setString(15, role);
            pstmt.setString(16, ulb_id);
            pstmt.setString(17, dept_id);
            pstmt.executeUpdate();
            %>
you have been registered
<jsp:include page="admin.jsp"/>
<%
            

        }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%>