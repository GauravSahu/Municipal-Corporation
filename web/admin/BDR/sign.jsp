
<%@page import="java.sql.*,java.sql.ResultSet,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
    </head>
    <body>
        
        
        <%
            
            int  hid = Integer.parseInt(request.getParameter("hid"));
            String action =  request.getParameter("action");
            if(action.equals("1")){
            
    try{    
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("UPDATE `child_birth` SET `status`= 1 WHERE `child_id` = ?");
            pstmt.setInt(1, hid);
            pstmt.executeUpdate();           
            out.println("Signed");
        }
        catch(ClassNotFoundException e){
                out.println(e);
        }catch(SQLException e){
                out.println(e);
        }catch(Exception e){
                out.println(e);
}
            }
else{
out.println("Rejected");
    }
%>



    </body>
</html>
