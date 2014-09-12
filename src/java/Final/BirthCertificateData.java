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
@Path("/BirthCertificateData")
public class BirthCertificateData {
        // This method is called if TEXT_PLAIN is request
  @GET
  @Produces(MediaType.TEXT_PLAIN)
  public String sayPlainTextHello() {
    return "Hello Jersey";
  }

  @GET
	@Path("/new/{value1}")
	
	@Produces("application/x-javascript")
	public JSONWithPadding sayJSONHello(
          @PathParam("value1") String birth_id,
          @QueryParam("jsoncallback") @DefaultValue("jsoncallback") String jsoncallback) throws IOException

	{       
		DataBase db = new DataBase();
		Connection con = db.database();
		String query1 = "SELECT * FROM `child_birth` WHERE `child_id` = ?";
                
		String middle = "";
               
		PreparedStatement ps = null;
		try {
                       
			int child_id = Integer.parseInt(birth_id);
			ps = (PreparedStatement) con.prepareStatement(query1);
			ps.setInt(1, child_id);
			ResultSet rs1 = ps.executeQuery();

			while(rs1.next()) {
                               
				int id = rs1.getInt("child_id");
                                String name = rs1.getString("child_name");
                                String fname = rs1.getString("father_name");
                                String mname = rs1.getString("mother_name");
                                String dob = rs1.getString("date_of_birth");
                                String birth_place = rs1.getString("birth_place");
                                String email = rs1.getString("email_id");
                                String hospital_name = rs1.getString("hospital_name");
                                String phone = rs1.getString("mobile_number");
                                String address = rs1.getString("address");
                                String religion = rs1.getString("religion");
                                String gender = rs1.getString("gender");
                                String type = rs1.getString("type");
                                String fnationality = rs1.getString("father_nationality");
                                String mnationality = rs1.getString("mother_nationality");
                                String permanent_address = rs1.getString("permanent_address");
                                String ulb_id = rs1.getString("ulb_id");
                                String mohalla_id = rs1.getString("mohalla_id");
                                String registeration_date = rs1.getString("registeration_date");
                                String registeration_place = rs1.getString("registeration_place");
                                String status = rs1.getString("status");
                                
                                
				JSONObject obj = new JSONObject();
				obj.put("ChildID",id);
                                obj.put("ChildName",name);
                                obj.put("FatherName", fname);
                                obj.put("MotherName", mname);
                                obj.put("BirthPlace", birth_place);
                                obj.put("HospitalName", hospital_name);
                                obj.put("DOB", dob);
                                obj.put("Email", email);
                                obj.put("PhoneNo", phone);
                                obj.put("Address", address);
                                obj.put("Type", type);
                                obj.put("Gender", gender);
                                obj.put("Religion", religion);
                                obj.put("Fathernationality", fnationality);
                                obj.put("Mothernationality", mnationality);
                                obj.put("ULBID", ulb_id);
                                obj.put("MohallaId", mohalla_id);
                                obj.put("RegisterationDate", registeration_date);
                                obj.put("PermanentAddress", permanent_address);
                                obj.put("RegisterationPlace", registeration_place);
                                obj.put("Status", status);
                               
				

				StringWriter out = new StringWriter();
				obj.writeJSONString(out);
				String jsonText = out.toString();
				middle = jsonText + middle;
				System.out.print(jsonText);

			}
                       

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
                               
		}

		return new JSONWithPadding(middle, jsoncallback);

	}
       

    }
