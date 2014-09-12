/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Final;

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
@Path("/death-cause")
public class DeathCause {
        // This method is called if TEXT_PLAIN is request
  @GET
  @Produces(MediaType.TEXT_PLAIN)
  public String sayPlainTextHello() {
    return "Hello Jersey";
  }

  @GET
	@Path("/cause/")
	
	@Produces("application/x-javascript")
	public JSONWithPadding sayJSONHello(@QueryParam("jsoncallback") @DefaultValue("jsoncallback") String jsoncallback) throws IOException

	{       
		DataBase db = new DataBase();
		Connection con = db.database();
		String query1 = "SELECT * FROM `death_cause`";
                
		String middle = "";
               
		PreparedStatement ps = null;
		try {
                       
			ps = (PreparedStatement) con.prepareStatement(query1);
			
			

			ResultSet rs1 = ps.executeQuery();

			while(rs1.next()) {
                                String id = rs1.getString("cause_id");
				String name = rs1.getString("cause_name");
				

				JSONObject obj = new JSONObject();
				obj.put("CauseID",id);
                                obj.put("CauseName",name);
                               
				

				StringWriter out = new StringWriter();
				obj.writeJSONString(out);
				String jsonText = out.toString();
				middle = jsonText + middle;
				//System.out.print(jsonText);

			}
                       

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
                               
		}

		return new JSONWithPadding(middle, jsoncallback);

	}
       

    }
