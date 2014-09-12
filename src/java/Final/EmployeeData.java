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
@Path("/edata")
public class EmployeeData {
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
          @PathParam("value1") String emp_id,
          @QueryParam("jsoncallback") @DefaultValue("jsoncallback") String jsoncallback) throws IOException

	{       
		DataBase db = new DataBase();
		Connection con = db.database();
		String query1 = "SELECT * FROM `employee_master` WHERE `emp_id` = ?";
                
		String middle = "";
               
		PreparedStatement ps = null;
		try {
                       
			int employee_id = Integer.parseInt(emp_id);
			ps = (PreparedStatement) con.prepareStatement(query1);
			ps.setInt(1, employee_id);
			ResultSet rs1 = ps.executeQuery();

			while(rs1.next()) {
                               
				int id = rs1.getInt("emp_id");
                                String name = rs1.getString("emp_name");
                                String fname = rs1.getString("emp_father_name");
                                String mname = rs1.getString("emp_mother_name");
                                String password = rs1.getString("password");
                                String dob = rs1.getString("dob"); 
                                String email = rs1.getString("email");
                                String phone = rs1.getString("phone_no");
                                String address = rs1.getString("address");
                                String city = rs1.getString("city");
                                String religion = rs1.getString("religion");
                                String gender = rs1.getString("gender");
                                String doj = rs1.getString("date_of_joinning");
                                String nationality = rs1.getString("nationality");
                                String m_status = rs1.getString("marital_status");
                                String role = rs1.getString("role");
                                String ulb_id = rs1.getString("ulb_id");
                                String department_id = rs1.getString("dept_id");
                                
                                
				JSONObject obj = new JSONObject();
				obj.put("EmployeeID",id);
                                obj.put("EmployeeName",name);
                                obj.put("FatherName", fname);
                                obj.put("MotherName", mname);
                                obj.put("Password", password);
                                obj.put("DOB", dob);
                                obj.put("Email", email);
                                obj.put("PhoneNo", phone);
                                obj.put("Address", address);
                                obj.put("City", city);
                                obj.put("Gender", gender);
                                obj.put("Religion", religion);
                                obj.put("DOJ", doj);
                                obj.put("Nationality", nationality);
                                obj.put("MaritalStatus", m_status);
                                obj.put("Role", role);
                                obj.put("ULBID", ulb_id);
                                obj.put("DepartmentID", department_id);
                               
				

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
