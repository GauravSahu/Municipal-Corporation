<%@page import="java.net.*,java.io.*,java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>

<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Leave Request Approval 
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="BDR-admin.jsp">Dashboard</a>
                                </li>
                                <li class="active">Leave Request Approval </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                   
                  <div class="col-lg-8">
                                
                                   
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover table-green dataTable">
                                                <thead>
                                                    <tr role="row">
                                                        <th class="sorting" role="columnheader">Employee&nbsp;Name</th>
                                                        <th class="sorting" role="columnheader">Leave&nbsp;Request</th>
                                                        <th class="sorting" role="columnheader">Department&nbsp;Name</th>
                                                        <th class="sorting" role="columnheader">ULB&nbsp;Name</th>
                                                        <th class="sorting" role="columnheader">Duration</th>
                                                        <th class="sorting" role="columnheader">From</th>
                                                        <th class="sorting" role="columnheader">To</th>
                                                        <th class="sorting" role="columnheader">Cause</th>
                                                        <th class="sorting" role="columnheader">Authenticate</th>
                                                    </tr>
                                                </thead>
        
      
            <%
    try{
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("select * from leave_master where status=0 ");
            ResultSet rst = pstmt.executeQuery();
           
            while(rst.next())
            {   
                    String name1 = "";
                    String dept_name = "";
                    String ulb_name = "";
                    PreparedStatement pstmt1  = con.prepareStatement("select * from employee_master where emp_id = ?");
                    pstmt1.setInt(1, rst.getInt(1));
                    ResultSet rst1 = pstmt1.executeQuery();
                    
                    PreparedStatement pstmt2  = con.prepareStatement("SELECT * FROM `department_master` WHERE `department_id`= ?");
                    pstmt2.setInt(1, rst.getInt(3));
                    ResultSet rst2 = pstmt2.executeQuery();
                    
                    PreparedStatement pstmt3  = con.prepareStatement("SELECT * FROM `ulb_master` WHERE `ulb_id` = ?");
                    pstmt3.setInt(1, rst.getInt(4));
                    ResultSet rst3 = pstmt3.executeQuery();
                    
                    while(rst1.next()){
                        name1 = rst1.getString("emp_name");
                    }
                    while(rst2.next()){
                        dept_name = rst2.getString(2);
                    }
                    while(rst3.next()){
                        ulb_name = rst3.getString("ulb_name");
                    }
                    
                    
                    
                %> <tbody>
                  <tr role="row">
                <td><%out.print(name1);%></td>
                <td><%=rst.getString(2)%></td>
                <td><%out.print(dept_name);%></td>
                <td><%out.print(ulb_name);%></td>
                <td><%=rst.getString(6)%></td>
                <td><%=rst.getString(7)%></td>
                <td><%=rst.getString(8)%></td>
                <td><%=rst.getString(5)%></td>
                <td> 
                    <table>
                        <tr>
                            <td>
                                <button class="hospital_approve btn btn-orange btn-small" id="a<%=rst.getString(1)%>">Approve</button>
                            </td>
                            <td>
                                <input type="button" class="hospital_decline btn btn-blue btn-small" id="d<%=rst.getString(1)%>" value="Decline">
                            </td>
                </tr></table>
                </td>
                 </tr>
                </tbody>
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
       
   
</table>
                                            
                                        </div>
                                  
                               
                                <!-- /.portlet -->
                            </div>
                    <!-- /.col-lg-12 -->
                        <div class="col-lg-2"></div>
                </div>
                <!-- /.row -->

            </div>
