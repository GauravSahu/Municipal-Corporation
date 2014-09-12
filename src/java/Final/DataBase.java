/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Final;

/**
 *
 * @author QWERTY
 */
import Municipal.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class DataBase {

        public Connection database() {
		String url="jdbc:mysql://localhost:3306/municipal";
		
		String userName = "root";
		String password = "";
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName, password);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
        public static void main(String[] args) {
		/*
		 * Dbase d=new Dbase(); Connection con = d.dbase(); if(con!=null)
		 * System.out.println("Connected to the database"); else
		 * System.out.println("Not Connected to the database");
		 */
	}

}
