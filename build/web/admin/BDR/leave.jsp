 <%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection" contentType="text/html" pageEncoding="UTF-8"%>
     
<%
             String id = (String)session.getAttribute("emp_id");
      
       int ulb_id = 108;
            String cause = request.getParameter("cause");
            String from = request.getParameter("from");
            String to = request.getParameter("to");
            String duration = request.getParameter("duration");
            int dept_id = 501;
%>
<%
    try{
           
            
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");   
            PreparedStatement pstmt1  = con.prepareStatement("INSERT INTO `leave_master`(`emp_id`,  `dept_id`, `ulb_id`, `cause`, `duration`, `from`, `to`) VALUES (?,?,?,?,?,?,?)");
            pstmt1.setString(1, id);
            pstmt1.setInt(2, dept_id);
            pstmt1.setInt(3, ulb_id);
            pstmt1.setString(4, cause);
             pstmt1.setString(5, duration);
            pstmt1.setString(6, from);
            pstmt1.setString(7, to);
            
            pstmt1.executeUpdate();
            
            out.print("Done");
                       
                       
           
       }
    catch(ClassNotFoundException e){
out.println(e);
}catch(SQLException e){
    out.println(e);

}catch(Exception e){
out.println(e);
}
%>