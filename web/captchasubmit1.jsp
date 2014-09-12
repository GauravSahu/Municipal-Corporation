<%@ page import="nl.captcha.Captcha"%>
<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%
	
        Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
	request.setCharacterEncoding("UTF-8");
	String answer = request.getParameter("answer");
        String child_id = request.getParameter("child_id");
        int status  = 1;
	if (captcha.isCorrect(answer)) {
            
            try{
                Class.forName("com.mysql.jdbc.Driver"); 
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
                PreparedStatement pstmt  = con.prepareStatement("SELECT * FROM `child_birth` WHERE `child_id` = ? and `status` = ?");
                pstmt.setInt(1 , Integer.parseInt(child_id));
                pstmt.setInt(2 , status);
                ResultSet rs = pstmt.executeQuery();
                if(rs.next()){
                    response.sendRedirect("Birtn");
                }
                else{
                    out.print("164");
                }
            }
            catch(Exception e){
                out.print(e);
            }
 	} else {
            out.print("In Correct Captcha Code !");
 	}
 %>


