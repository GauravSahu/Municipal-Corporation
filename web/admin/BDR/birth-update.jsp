<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>

<%
        String child_id = request.getParameter("child_id");
        String child_name = request.getParameter("child_name");
        String father = request.getParameter("father_name");
        String mother = request.getParameter("mother_name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String birth_place = request.getParameter("birth_place");
        String hospital_name = request.getParameter("hospital_name");
        String ulb_id = request.getParameter("ulbsel");
        String mohalla = request.getParameter("mohallaSel");
        String hospital_type = request.getParameter("hospital_type");
        String address = request.getParameter("address");
        String father_nationality = request.getParameter("fnat");
        String mother_nationality = request.getParameter("mnat");
        String religion = request.getParameter("religion");
        String p_address = request.getParameter("p_address");
        String mobile = request.getParameter("mobile_number");
        String reg_date = request.getParameter("reg_date");
        String reg_place = request.getParameter("registration_place");
        String email = request.getParameter("email");
        String status = request.getParameter("status");
%>

<%
        try{
                    
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("UPDATE `child_birth` SET `child_id`= '"+child_id+"', `child_name`= '"+child_name+"',`gender`='"+gender+"',`father_name`='"+father+"',`mother_name`='"+mother+"',`date_of_birth`='"+dob+"',`birth_place`='"+birth_place+"',`hospital_name`='"+hospital_name+"',`ulb_id`='"+ulb_id+"',`mohalla_id`='"+mohalla+"',`type`='"+hospital_type+"',`address`='"+address+"',`father_nationality`='"+father_nationality+"',`mother_nationality`='"+mother_nationality+"',`religion`='"+religion+"',`permanent_address`='"+p_address+"',`mobile_number`='"+mobile+"',`registeration_date`='"+reg_date+"',`registeration_place`='"+reg_place+"',`email_id`='"+email+"',`status`='"+status+"' WHERE `child_id`='"+child_id+"'");
            pstmt.executeUpdate();
            out.println("ok");
            

        }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%>