<%-- 
    Document   : request
    Created on : 7 Oct, 2013, 1:56:46 PM
    Author     : QWERTY
--%>

<%@page import="java.net.*,java.io.*,java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>

<select name="death_cause"  class="form-control" >
    <option   value="">-----Select Cause-----</option>
      
            <%
               
    try{
            
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("SELECT * FROM death_cause");
            ResultSet rst = pstmt.executeQuery();
          
            while(rst.next())
            {   
                %>
                <option  value="<%=rst.getString(1)%>"><%=rst.getString(2)%></option>
                <%
            } 
       }
catch(ClassNotFoundException e){
    out.println(e);
}catch(SQLException e){
    out.println(e);
}catch(Exception e){
    out.println(e);
}
    %>
       
   
</select>
