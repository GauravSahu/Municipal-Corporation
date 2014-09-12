
<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%
 
    String ulb_name = request.getParameter("ulb_name");
   
%>

     
<%
    try{
           
       
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");   
            PreparedStatement pstmt1  = con.prepareStatement("INSERT INTO `ulb_master`(`ulb_name`) VALUES  (?)");
            pstmt1.setString(1, ulb_name);
            pstmt1.executeUpdate();
            out.println("1");
       }
    catch(ClassNotFoundException e){
out.println(e);
}catch(SQLException e){
    out.println(e);

}catch(Exception e){
out.println(e);
}
%>