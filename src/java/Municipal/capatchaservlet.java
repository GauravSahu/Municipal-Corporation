package Municipal;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author QWERTY
 */
public class capatchaservlet extends HttpServlet {

     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("called :: "+ request.getParameter("abc"));
        
        
        
        
        JsonObject json = new JsonObject();  
        json.addProperty("success", "1");
        response.getWriter().print(json);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
