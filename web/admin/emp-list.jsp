<%-- 
    Document   : emp-list
    Created on : 4 Apr, 2014, 12:38:17 AM
    Author     : QWERTY
--%>


<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Employee Data
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                                </li>
                                <li class="active"> Employee List</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->
                  <div class="row">
                       <div class="col-lg-2"></div>
                 <div class="portlet portlet-default">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Data Tables Enhanced Table</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-responsive">
                                    <div id="example-table_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="row"><div class="col-sm-6"><div id="example-table_length" class="dataTables_length"><label><select size="1" name="example-table_length" aria-controls="example-table"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> records per page</label></div></div><div class="col-sm-6"><div class="dataTables_filter" id="example-table_filter"><label>Search: <input type="text" aria-controls="example-table"></label></div></div></div><table id="example-table" class="table table-striped table-bordered table-hover table-green dataTable" aria-describedby="example-table_info">
                                        <thead>
                                          <tr role="row">
                                              <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" >Employee&nbsp;ID</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Employee&nbsp;Name</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" >Employee&nbsp;Role</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" >Nager&nbsp;Nigam</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Conatact&nbsp;NO</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Email&nbsp;ID</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Address</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Dept.&nbsp;Name</th>
                                <th width="150px" class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Action</th>
                                
                            </tr> </thead>
                                        
                                    <tbody role="alert" aria-live="polite" aria-relevant="all">
                                        
                                        
                                        
                                        
                                    
<%
        try{
            String ulbname="";
            String deptname="";
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("select * from employee_master");
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                        int ulb = rs.getInt("ulb_id");
                        int moh = rs.getInt("dept_id");
                        PreparedStatement pstmt1  = con.prepareStatement("SELECT * FROM `ulb_master` WHERE `ulb_id` = ?");
                        pstmt1.setInt(1,ulb);
                        ResultSet rs1 = pstmt1.executeQuery();
                        if(rs1.next()){
                           ulbname  = rs1.getString("ulb_name");
                        }
                        PreparedStatement pstmt2  = con.prepareStatement("SELECT * FROM `department_master` WHERE `department_id` = ?");
                        pstmt2.setInt(1,moh);
                        ResultSet rs2 = pstmt2.executeQuery();
                        if(rs2.next()){
                           deptname = rs2.getString("department_name");
                        }
                %>
                <tr>
                    <td><%=rs.getString("emp_id") %></td>
                    <td><%=rs.getString("emp_name") %></td>
                     <td><%=rs.getString("role") %></td>
                      <td><%out.print(ulbname);%></td>
                       <td><%=rs.getString("phone_no") %></td>
                        <td><%=rs.getString("email") %></td>
                         <td><%=rs.getString("address") %></td>
                          <td><% out.print(deptname);%></td>
                          <td><button class="btn btn-orange btn-small" data-toggle="modal" data-target="#flexModal">Edit</button>&nbsp;<input type="button" class="btn btn-blue btn-square" value="Delete"></td>
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

       
                                    </tbody></table><div class="row"><div class="col-sm-6"><div class="dataTables_info" id="example-table_info">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_bootstrap"><ul class="pagination"><li class="prev disabled"><a href="#">← Previous</a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li><a href="#">4</a></li><li><a href="#">5</a></li><li class="next"><a href="#">Next → </a></li></ul></div></div></div></div>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.portlet-body -->
                        </div>               
</div>
                <!-- /.row -->

            </div>