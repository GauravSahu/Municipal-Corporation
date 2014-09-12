<%@page import="java.net.*,java.io.*,java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>

<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Hospital Request
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                                </li>
                                <li class="active">Hospital Request Approvement Panel</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    <div style="display: none; opacity: 2;" id="timer" >
                             <center><img src="../loader.gif" /></center>
                        </div>
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover table-green dataTable">
    <thead><tr role="row">
            <th class="sorting" role="columnheader">Registration&nbsp;ID</th>
            <th class="sorting" role="columnheader">Hospital&nbsp;Name</th>
            <th class="sorting" role="columnheader">Dr.Name</th>
            <th class="sorting" role="columnheader">Contact</th>
            <th class="sorting" role="columnheader">Address</th>
            <th class="sorting" role="columnheader">Status</th>
            <th class="sorting" role="columnheader">Authenticate</th>
        </tr></thead>
        
      
            <%
    try{
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("select * from hospital_master where status=0 ");
            ResultSet rst = pstmt.executeQuery();
           
            while(rst.next())
            {   
                %> <tbody>
                  <tr role="row">
                <td><%=rst.getString(1)%></td>
                <td><%=rst.getString(4)%></td>
                <td><%=rst.getString(2)%></td>
                <td><%=rst.getString(8)%></td>
                <td><%=rst.getString(5)%></td>
                <td>Registered</td>
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
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

            </div>
    <script>
 $(document).ready(function(){
$(".hospital_approve").click(function (){
        var id = $(this).attr("id");
        id = id.substring(1,id.size);
         $("#timer").fadeIn(1000);
         $(this).parent().parent().parent().parent().parent().parent().addClass("del_bb");
        $.ajax({
                 
                url: "http://localhost:8084/Final/rest/hospital-update/new/"+id,
                crossDomain:true,
                type:'post',
                dataType:'jsonp',
                jsonpCallback:'jsoncallback',
                success: function(data){
                   // alert(data.EmployeeID);
                    if(data.ActionID==123) 
                    {
                         $("#timer").fadeOut(500);
                        $(".del_bb").remove();
                    }
                  }
                        
             });
        
   });    
   
    });
 </script>