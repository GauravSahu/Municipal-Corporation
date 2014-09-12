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
@Path("/login")
public class Login {
        // This method is called if TEXT_PLAIN is request
  @GET
  @Produces(MediaType.TEXT_PLAIN)
  public String sayPlainTextHello() {
    return "Hello Jersey";
  }

  @GET
	@Path("/new/{value1}/{value2}")
	
	@Produces("application/x-javascript")
	public JSONWithPadding sayJSONHello(
			@PathParam("value1") String emp_id,
			@PathParam("value2") String password,
			
			@QueryParam("jsoncallback") @DefaultValue("jsoncallback") String jsoncallback) throws IOException

	{       
		DataBase db = new DataBase();
		Connection con = db.database();
		String query1 = "SELECT * FROM `employee_master` WHERE `emp_id` = ? and `password` = ?";
                
                
		String middle = "";
               
		PreparedStatement ps = null;
                PreparedStatement ps1 = null;
		try {
                        int employee_id = Integer.parseInt(emp_id);
			ps = (PreparedStatement) con.prepareStatement(query1);
                        ps.setInt(1, employee_id);
			ps.setString(2, (password));
			ResultSet rs1 = ps.executeQuery();

                    
                        
			if(rs1.next()) {
                                String id = rs1.getString("emp_id");
				String name = rs1.getString("emp_name");
				String role = rs1.getString("role");
                                String dept_id = rs1.getString("dept_id");

				JSONObject obj = new JSONObject();
				obj.put("EmployeeID",id);
                                obj.put("EmployeeName", name);
                                obj.put("ImageName", id);
                                obj.put("data", 164);
                                obj.put("role", role);
                                obj.put("dept_id", dept_id);
				

				StringWriter out = new StringWriter();
				obj.writeJSONString(out);
				String jsonText = out.toString();
				middle = jsonText + middle;
				System.out.print(jsonText);

				System.out.print(jsonText);
                        }
                        else{
                               JSONObject obj = new JSONObject();
                                obj.put("data", 165);
                                StringWriter out = new StringWriter();
				obj.writeJSONString(out);
				String jsonText = out.toString();
				middle = jsonText + middle;
				System.out.print(jsonText);
                        }

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
                                JSONObject obj = new JSONObject();
                                obj.put("data", 166);
                                StringWriter out = new StringWriter();
				obj.writeJSONString(out);
				String jsonText = out.toString();
				middle = jsonText + middle;
				System.out.print(jsonText);
		}

		return new JSONWithPadding(middle, jsoncallback);

	}
       

    }
