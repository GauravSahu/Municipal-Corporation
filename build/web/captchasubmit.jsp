<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="nl.captcha.Captcha"%>

<%
	Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
	request.setCharacterEncoding("UTF-8");
	String answer = request.getParameter("answer");
        String child_id = request.getParameter("child_id");
        int status = 1;
	if (captcha.isCorrect(answer)) {
            try{
                Class.forName("com.mysql.jdbc.Driver"); 
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
                PreparedStatement pstmt  = con.prepareStatement("SELECT * FROM `child_birth` WHERE `child_id` = ? and `status` = ?");
                pstmt.setInt(1 , Integer.parseInt(child_id));
                pstmt.setInt(2 , status);
                ResultSet rs = pstmt.executeQuery();
                if(rs.next()){
                    out.print("164");
                }
                else{
                    out.print("188");
                }
               
            }
            catch(Exception e){
                out.print(e);
            }
 	}
        
 %>

