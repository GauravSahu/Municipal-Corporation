<%-- 
    Document   : death-reg
    Created on : 27 Mar, 2014, 1:21:25 AM
    Author     : QWERTY
--%>

<%-- 
    Document   : birth-reg
    Created on : 25 Mar, 2014, 12:11:16 AM
    Author     : QWERTY
--%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
                final String username = "gauravsahu27@gmail.com";
		final String password = "gauravsahu77";
                
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session1 = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

%>

<%
        String person_name = request.getParameter("person_name");
        String father = request.getParameter("father_name");
        String mother = request.getParameter("mother_name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String dod = request.getParameter("dod");
        String death_place = request.getParameter("death_place");
        String pregnent_detail = request.getParameter("p_detail");
        String ulb_id = request.getParameter("ulbsel");
        String mohalla = request.getParameter("mohallaSel");
        String info_name = request.getParameter("info_name");
        String info_address = request.getParameter("info_address");
        String death_time = request.getParameter("time");
        String cause_id = request.getParameter("death_cause");
        String religion = request.getParameter("religion");
        String mobile = request.getParameter("info_mob");
        String reg_date = request.getParameter("reg_date");
        String reg_place = request.getParameter("registration_place");
        String email = request.getParameter("email");
        String nat = request.getParameter("nat");
        int status = 0 ;
%>

<%
        int id = 0;
        try{
                    
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("INSERT INTO `person_death`(`person_name`, `mother_name`, `father_name`, `gender`, `dob`, `date_of_death`, `death_time`, `ulb_id`, `mohalla_id`, `death_place`, `nationality`, `religion`, `pregnancy_detail`, `informent_name`, `informent_address`, `informent_mobile`, `registration_place`, `registration_date`, `cause_id`, `email`, `status`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            //pstmt.setInt(1 );
            pstmt.setString(1, person_name);
            pstmt.setString(2, mother);
            pstmt.setString(3, father);
            pstmt.setString(4, gender);
            pstmt.setString(5, dob);
            pstmt.setString(6, dod);
            pstmt.setString(7, death_time);
            pstmt.setString(8, ulb_id);
            pstmt.setString(9, mohalla);
            pstmt.setString(10, death_place);
            pstmt.setString(11, nat);
            pstmt.setString(12, religion);
            pstmt.setString(13, pregnent_detail);
            pstmt.setString(14, info_name);
            pstmt.setString(15, info_address);
            pstmt.setString(16, mobile);
            pstmt.setString(17, reg_place);
            pstmt.setString(18, reg_date);
            pstmt.setInt(19, Integer.parseInt(cause_id));
            pstmt.setString(20, email);
            pstmt.setInt(21, status);
            
            pstmt.executeUpdate();
              PreparedStatement pstmt1  = con.prepareStatement("SELECT * FROM `person_death` WHERE `person_name` = ? and `dob` = ?");
              pstmt1.setString(1, person_name);
              pstmt1.setString(2, dob);
              ResultSet rs = pstmt1.executeQuery();
              if(rs.next()){
                  id = rs.getInt(1);
              
              }
            Message message = new MimeMessage(session1);
                message.setFrom(new InternetAddress("gauravsahu27@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Death Registration");
			message.setText("Dear Citizen,"
				+ "\n\n Your Registration Process sucessfully executed......!!!!! "
                                + "your Verification ID is ="+id);
                        
                                
 
			Transport.send(message);
            
            out.println("Registration Sucessfull....!!!!");
              
            

        }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%>
