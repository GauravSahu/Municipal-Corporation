<%-- 
    Document   : emp_update
    Created on : 6 Apr, 2014, 11:37:35 PM
    Author     : QWERTY
--%>
<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        String emp_id = request.getParameter("emp_id");
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
            PreparedStatement pstmt  = con.prepareStatement("UPDATE `employee_master` SET `emp_name`='"+emp_name+"',`emp_father_name`='"+father+"',`emp_mother_name`='"+mother+"',`password`='"+password+"',`dob`='"+dob+"',`email`='"+email+"',`phone_no`='"+phone_no+"',`address`='"+address+"',`city`='"+city+"',`religion`='"+religion+"',`gender`='"+gender+"',`date_of_joinning`='"+doj+"',`nationality`='"+natioanality+"',`marital_status`='"+marital_status+"',`role`='"+role+"',`ulb_id`='"+ulb_id+"',`dept_id`='"+dept_id+"' WHERE `emp_id` = ?");
            pstmt.setInt(1,Integer.parseInt(emp_id));
            pstmt.executeUpdate();
            out.println("Data Sucessfully Updated .....!!!!!");
            

        }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%>
