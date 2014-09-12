package org.apache.jsp.admin.BDR;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import java.io.*;
import java.sql.DriverManager;
import java.sql.Connection;
import org.json.simple.JSONObject;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.Message;
import javax.mail.internet.MimeMessage;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import java.util.Properties;

public final class birth_002dreg_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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


      out.write('\n');
      out.write('\n');

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

      out.write('\n');
      out.write('\n');

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
            

        }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>\n");
      out.write("            \n");
      out.write("        </title>\n");
      out.write("        <link rel='stylesheet' href='../../css/bootstrap.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet' href='../../css/font-awesome.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/default.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/icons.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/shortcodes.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/widgets.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/sliders.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/bootstrap-responsive.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/skin-red.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel='stylesheet'  href='../../css/style.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/mycss.css\" >\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table class=\"table table-green\">\n");
      out.write("            <tr>\n");
      out.write("                <td></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
