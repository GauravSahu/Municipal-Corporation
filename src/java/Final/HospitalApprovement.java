/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Final;

/**
 *
 * @author QWERTY
 */
import com.sun.jersey.api.json.JSONWithPadding;
import java.io.IOException;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import org.json.simple.JSONObject;

/**
 *
 * @author QWERTY
 */
@Path("/hospital-update")
public class HospitalApprovement {
   
        // This method is called if TEXT_PLAIN is request
  @GET
  @Produces(MediaType.TEXT_PLAIN)
  public String sayPlainTextHello() {
    return "Hello Jersey";
  }

  @GET
	@Path("/new/{value1}/")
	
	@Produces("application/x-javascript")
	public JSONWithPadding sayJSONHello(
          @PathParam("value1") String reg_id,
          @QueryParam("jsoncallback") @DefaultValue("jsoncallback") String jsoncallback) throws IOException

                {  
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
		DataBase db = new DataBase();
		Connection con = db.database();
                Connection con1 = db.database();
		String query1 = "UPDATE `hospital_master` SET `status`= 1 WHERE `registration_id` = ?";
                String query2 = "SELECT * FROM `hospital_master` WHERE `registration_id` = ?";
		String middle = "";
               
		PreparedStatement ps = null;
                PreparedStatement ps1 = null;
		try {
                       
			int registration_id = Integer.parseInt(reg_id);
			ps = (PreparedStatement) con.prepareStatement(query1);
			ps.setInt(1, registration_id);
                        ps.executeUpdate();
                        
                        ps1 = (PreparedStatement) con1.prepareStatement(query2);
			ps1.setInt(1, registration_id);
                        ResultSet rs = ps1.executeQuery();
                        
                       if(rs.next()){
                            String email = rs.getString("email");
                            Message message = new MimeMessage(session1);
                            message.setFrom(new InternetAddress("gauravsahu27@gmail.com"));
                            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
                            message.setSubject("Hospital Registration");
                            message.setText("Dear User,"
				+ "\n\n Your Registration Process sucessfully executed......!!!!! "
                                + "Your login id is='"+registration_id+"' and password = 12345 ");
                                
 
                            Transport.send(message);
                       }
                        
                        
                        JSONObject obj = new JSONObject();
                        obj.put("ActionID", "123");
			StringWriter out = new StringWriter();
                        obj.writeJSONString(out);
			String jsonText = out.toString();
			middle = jsonText + middle;
			System.out.print(jsonText);
                        con.close();
		} catch (Exception e) {
			e.printStackTrace();
                               
		}

		return new JSONWithPadding(middle, jsoncallback);

	}
       

    }
