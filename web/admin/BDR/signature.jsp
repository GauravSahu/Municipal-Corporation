<%-- 
    Document   : birth-reg
    Created on : 25 Mar, 2014, 12:11:16 AM
    Author     : QWERTY
--%>

<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Signature Birth Certificate
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="BDR-admin.jsp">Dashboard</a>
                                </li>
                                <li class="active">Signature Birth Certificate</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    <div class="col-lg-12">

                        <div class="portlet portlet-default">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Data Tables Enhanced Table</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-responsive">
                                    <div id="example-table_wrapper" class="dataTables_wrapper form-inline" role="grid">
                                        <div class="row"><div class="col-sm-6">
                                                <div id="example-table_length" class="dataTables_length"><label>
                                                        <select size="1" name="example-table_length" aria-controls="example-table">
                                                            <option value="10" selected="selected">10</option>
                                                            <option value="25">25</option>
                                                            <option value="50">50</option>
                                                            <option value="100">100</option>
                                                        </select> records per page
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="dataTables_filter" id="example-table_filter"><label>Search: <input type="text" aria-controls="example-table"></label>
                                                </div>
                                            </div>
                                        </div>
                                        
<table id="example-table" class="table table-striped table-bordered table-hover table-green dataTable" aria-describedby="example-table_info">
                        <thead>
                            <tr role="row">
                                <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" >Registration ID</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Child Name</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" >Gender</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" >Father Name</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Date of Birth</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >ULB Name</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Mohalla</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Hospital Name</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Signature</th>
                            </tr>
                        </thead>
                                        
                        <tbody role="alert" aria-live="polite" aria-relevant="all">
<%
        try{
            String ulbname = "";
            String mohallaname = "";
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("SELECT * FROM `child_birth` WHERE `status` = ?");
            pstmt.setInt(1,0);
            ResultSet rs = pstmt.executeQuery();
           
            while(rs.next()){
                        int ulb = rs.getInt("ulb_id");
                        int moh = rs.getInt("mohalla_id");
                        PreparedStatement pstmt1  = con.prepareStatement("SELECT * FROM `ulb_master` WHERE `ulb_id` = ?");
                        pstmt1.setInt(1,ulb);
                        ResultSet rs1 = pstmt1.executeQuery();
                        if(rs1.next()){
                            ulbname = rs1.getString("ulb_name");
                        }
                        PreparedStatement pstmt2  = con.prepareStatement("SELECT * FROM `mohalla_master` WHERE `mohalla_id` = ?");
                        pstmt2.setInt(1,moh);
                        ResultSet rs2 = pstmt2.executeQuery();
                        if(rs2.next()){
                           mohallaname = rs2.getString("mohalla_name");
                        }
                        
                %>
                    
                            <tr class="gradeA odd">
                                <td><%=rs.getString("child_id")%></td>
                                <td><%=rs.getString("child_name")%></td>
                                <td><%=rs.getString("gender")%></td>
                                <td><%=rs.getString("father_name")%></td>
                                <td><%=rs.getString("date_of_birth")%></td>
                                <td><% out.print(ulbname); %></td>
                                <td><% out.print(mohallaname); %></td>
                                <td><%=rs.getString("hospital_name")%></td>
                                <td>
                                    <table>
                                        <tr>
                                            <td><button id="button1<%=rs.getString("child_id")%>" onclick="sendID(<%=rs.getString("child_id")%>,1)" class="btn btn-blue btn-square">&nbsp;Sign&nbsp;&nbsp;</button></td>
                                            <td><button  onclick="sendID(<%=rs.getString("child_id")%>,0)" class="btn btn-orange btn-square">Reject</button></td>
                                        </tr> 
                                    </table>
                                </td>
                            </tr>
                       
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
 </tbody>
</table>
</div>
  <script src="js/demo/advanced-tables-demo.js"></script>