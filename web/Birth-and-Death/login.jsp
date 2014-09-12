<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd"> 
<%
String uname = request.getParameter("inputUserID");
String pwd = request.getParameter("inputPassword");
int dept_id;

%>
<%
    try{
                    
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipalcorporation","root","");           
            PreparedStatement pstmt  = con.prepareStatement("select * from hospitalreq where u_id =? and password =?");
            pstmt.setString(1, uname);
            pstmt.setString(2, pwd);            
            ResultSet rst = pstmt.executeQuery();
            if(rst.next())
            {   
                   // session.setAttribute("title",rst.getString("title"));
                    session.setAttribute("name",uname);
                   // dept_id = rst.getInt("department_id");
                   
                        %>
                        <jsp:forward page="../admin/BDR/BDR-admin.jsp">
                                    <jsp:param name="uname" value="loggin"/>
                        </jsp:forward>
                        <% 
                  
                  
              }
            else{
                %>
                  <jsp:include page="index.jsp"></jsp:include>               
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