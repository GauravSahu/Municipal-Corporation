<%@page import="org.json.simple.JSONObject"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%
 
    String email = request.getParameter("email");
   
%>
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
    try{
           
            String pwd = "";
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");   
            PreparedStatement pstmt1  = con.prepareStatement("SELECT * FROM `employee_master` WHERE `email` = ?");
            pstmt1.setString(1, email);
            ResultSet rst = pstmt1.executeQuery();
            
            while(rst.next()){
                    pwd = rst.getString("password");
            }
            
              Message message = new MimeMessage(session1);
			message.setFrom(new InternetAddress("gauravsahu27@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Forgot Password");
			message.setText("Dear User,"
				+ "<br>\n\n Your password is ="+pwd);
                                
 
			Transport.send(message);
                        
			out.print("Sucessfully Registered.........");
                       
                      //  response.sendRedirect("index.jsp");
                       
           
       }
    catch(ClassNotFoundException e){
out.println(e);
}catch(SQLException e){
    out.println(e);

}catch(Exception e){
out.println(e);
}
%>