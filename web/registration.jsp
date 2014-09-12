<%-- 
    Document   : registeration
    Created on : 3 Oct, 2013, 5:39:40 PM
    Author     : QWERTY
--%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection" contentType="text/html" pageEncoding="UTF-8"%>
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
            
            String doctorname = request.getParameter("docname");
            String doctoraddress = request.getParameter("docaddress");
            String name = request.getParameter("hospitalname");
            String haddress = request.getParameter("hospitaladdress");
            String contact = request.getParameter("mobile");
            String reg_number = request.getParameter("regno");
            String ulb_id = request.getParameter("ulbsel");
            String htype = request.getParameter("htype");
            String email = request.getParameter("email");
            String pwd = "12345";
            int status = 0;
            String role = "hospital";
            int dept_id = 501;
%>
<%
    try{
            String middle = "";
            String counter="";
            String z = "";
            int id;
            int ccntr;
            
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");   
            PreparedStatement pstmt1  = con.prepareStatement("SELECT cntr FROM countr WHERE 1");
            ResultSet rst = pstmt1.executeQuery();
            while( rst.next()){
                counter = rst.getString("cntr");   
            }
            String s = counter;
            int len = counter.length();
           
            id = Integer.parseInt(s);
            ccntr = Integer.parseInt(counter) + 1;
 
           
            PreparedStatement pstmt2  = con.prepareStatement("UPDATE countr SET cntr= "+ccntr+" WHERE 1");
            pstmt2.executeUpdate();
            PreparedStatement pstmt  = con.prepareStatement("INSERT INTO hospital_master(`registration_id`, `doctor_name`, `doctor_address`, `hospital_name`, `hospital_address`, `ulb_id`, `type`, `mobile_no`, `email`, `status`, `role`,`dept_id`,`u_id`, `password`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pstmt.setString(1, reg_number);
            pstmt.setString(2, doctorname);
            pstmt.setString(3, doctoraddress);
            pstmt.setString(4, name);
            pstmt.setString(5, haddress);
            pstmt.setString(6, ulb_id);
            pstmt.setString(7, htype);
            pstmt.setString(8, contact);
            pstmt.setString(9, email);
            pstmt.setInt(10, status);
            pstmt.setString(11, role);
            pstmt.setInt(12, dept_id);
            pstmt.setInt(13, id);
            pstmt.setString(14, pwd);
            pstmt.executeUpdate();
            
            
                        Message message = new MimeMessage(session1);
			message.setFrom(new InternetAddress("gauravsahu27@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Hospital Registration");
			message.setText("Dear User,"
				+ "\n\n Your Registration Process sucessfully executed......!!!!!  ");
                                
 
			Transport.send(message);
                        
			out.print("Sucessfully Registered.........");
                       
                        response.sendRedirect("index.jsp");
                       
           
       }
    catch(ClassNotFoundException e){
out.println(e);
}catch(SQLException e){
    out.println(e);

}catch(Exception e){
out.println(e);
}
%>
   