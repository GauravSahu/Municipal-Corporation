<%-- 
    Document   : birth-reg
    Created on : 25 Mar, 2014, 12:11:16 AM
    Author     : QWERTY
--%>

<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>

<%
                final String username = "gauravsahu27@gmail.com";
		final String password = "gauravsahu77";
                ResultSet rst1 = null;
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
        int status = 0 ;
%>

<%
        try{
                    
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("INSERT INTO `child_birth` (`child_name`, `gender`, `father_name`, `mother_name`, `date_of_birth`, `birth_place`, `hospital_name`, `ulb_id`, `mohalla_id`, `type`, `address`, `father_nationality`, `mother_nationality`, `religion`, `permanent_address`, `mobile_number`, `registeration_date`, `registeration_place`, `email_id`, `status`)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            //pstmt.setInt(1 );
            pstmt.setString(1, child_name);
            pstmt.setString(2, gender);
            pstmt.setString(3, father);
            pstmt.setString(4, mother);
            pstmt.setString(5, dob);
            pstmt.setString(6, birth_place);
            pstmt.setString(7, hospital_name);
            pstmt.setString(8, ulb_id);
            pstmt.setString(9, mohalla);
            pstmt.setString(10, hospital_type);
            pstmt.setString(11, address);
            pstmt.setString(12, father_nationality);
            pstmt.setString(13, mother_nationality);
            pstmt.setString(14, religion);
            pstmt.setString(15, p_address);
            pstmt.setString(16, mobile);
            pstmt.setString(17, reg_date);
            pstmt.setString(18, reg_place);
            pstmt.setString(19, email);
            pstmt.setInt(20, status);
            pstmt.executeUpdate();
            
                        Message message = new MimeMessage(session1);
			message.setFrom(new InternetAddress("gauravsahu27@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Birth Registration");
			message.setText("Dear User,"
				+ "\n\n Your Registration Process sucessfully executed......!!!!!  ");
                                
 
			Transport.send(message);

            
            
            
            out.println("ok");
             PreparedStatement pstmt1  = con.prepareStatement("select * from child_birth where email = ?");
             pstmt1.setString(1,email);
              rst1 = pstmt1.executeQuery();
             
             

        }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%>

<html>
    <head>
        <title>
            
        </title>
        <link rel='stylesheet' href='../../css/bootstrap.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet' href='../../css/font-awesome.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/default.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/icons.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/shortcodes.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/widgets.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/sliders.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/bootstrap-responsive.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/skin-red.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel='stylesheet'  href='../../css/style.css?ver=3.6.1' type='text/css' media='all'/>
        <link rel="stylesheet" href="../../css/mycss.css" >
    </head>
    <body>
        <div class="row-fluid">
        <div class="span3"></div>
        <div class="span6">
            <div class="box grey-box">
                <table class="table boxgray wow-pricing-table">
                    <tr>
                        <td>Registration ID</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><%=child_name%></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><%=gender%></td>
                    </tr>
                    <tr>
                        <td>Father Name</td>
                        <td><%=father%></td>
                    </tr>
                    <tr>
                        <td>Mother Name</td>
                        <td><%=child_name%></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><%=child_name%></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><%=child_name%></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                    <input type="button" class="sbutton round shadow blue small" onclick="myFunction()" value="Print">
            </div>
        </div>
                    <div class="span3"></div>
        </div>
</body>
<script>
function myFunction()
{
window.print();
}
</script>
</html>


