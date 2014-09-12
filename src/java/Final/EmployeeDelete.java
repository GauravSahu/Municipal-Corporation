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
@Path("/edataupdate")
public class EmployeeDelete {
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
          @PathParam("value1") String emp_id,
          @QueryParam("jsoncallback") @DefaultValue("jsoncallback") String jsoncallback) throws IOException

	{       
		DataBase db = new DataBase();
		Connection con = db.database();
		String query1 = "DELETE FROM `employee_master` WHERE `emp_id` = ?";
                
		String middle = "";
               
		PreparedStatement ps = null;
		try {
                       
			int employee_id = Integer.parseInt(emp_id);
			ps = (PreparedStatement) con.prepareStatement(query1);
			ps.setInt(1, employee_id);
                        ps.executeUpdate();
                        
                        JSONObject obj = new JSONObject();
                        obj.put("Action", "123");
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