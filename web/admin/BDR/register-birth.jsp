<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Add Birth Data
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="BDR-admin.jsp">Dashboard</a>
                                </li>
                                <li class="active">Add New Birth Record</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    
                  <div class="col-lg-10">
                                <div class="portlet portlet-blue">
                                    <div class="portlet-heading">
                                        <div class="portlet-title">
                                         <h4>Add New Birth Record</h4>
                                        </div>
                                        <div class="portlet-widgets">
                                            <a data-toggle="collapse" data-parent="#accordion" href="basic-form-elements.html#horizontalFormExample"></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="horizontalFormExample" class="panel-collapse collapse in">
                                        <div class="portlet-body">
                                            <form class="form-horizontal" role="form" action="birth-reg.jsp" method="post">
                                                 <div class="table-responsive">   
                                                <table>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Child&nbsp;Name</label></td>
                                                        <td> <input type="text" class="form-control" name="child_name" required placeholder="Child Name"></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Father&nbsp;Name</label></td>
                                                        <td> <input type="text" class="form-control" name="father_name" required placeholder="Father Name"></td>
                                                    </tr>
                                                   
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Mother&nbsp;Name</label></td>
                                                        <td> <input type="text" class="form-control" name="mother_name" required placeholder="Mother Name"></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Gender</label></td>
                                                        <td>  <input type="radio"  name="gender"  value= 'male' required >&nbsp;&nbsp;Male&nbsp;&nbsp;<input  type="radio"  value= 'female' name="gender"  required />&nbsp;&nbsp;Female</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Date&nbsp;of&nbsp;Birth</label></td>
                                                        <td> <input type="date" class="form-control" name="dob" required placeholder="Date of Birth"></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Birth&nbsp;Place</label></td>
                                                        <td><input type="text" class="form-control" name="birth_place" required placeholder="Birth Place"></td>
                                                    </tr>
                                                     <tr>
                                                        <td><label class="col-sm-3 control-label">Hospital&nbsp;Name</label></td>
                                                        <td> <input type="text" class="form-control" name="hospital_name" required placeholder="Hospital Name"></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">ULB&nbsp;</label></td>
                                                        <td><div id="ulb"> <jsp:include page="../BDR/getULB.jsp"></jsp:include></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Mohalla</label></td>
                                                        <td> <div id="chkMohalla" >
                                                                <select class="form-control" id="mohallaSel" name="mohallaSel"  onchange="show_zone(this.value)">
                                            <option value="">--Select Mohalla--</option>                      
                                                                </select></div></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Hospital&nbsp;Type</label></td>
                                                        <td><select class="form-control" name="hospital_type">
                                                                <option value="null">-----Select------</option>
                                                                <option value="Nurshing_Home">Nurshing Home</option>
                                                                <option value="Govt_Hospital">Govt Hospital</option>
                                                                <option value="Doctor">Doctor</option>
                                                            </select></td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Address&nbsp;</label></td>
                                                        <td><textarea class="form-control" name="address" required placeholder="Address"></textarea></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Father&nbsp;Nationality</label></td>
                                                        <td><select class="form-control" name="fnat">
                                                                <option value="null">-----Select------</option>
                                                                <option value="indian">Indian</option>
                                                                <option value="foreign">Foreign</option>
                                                                
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Mother&nbsp;Nationality</label></td>
                                                        <td><select class="form-control" name="mnat">
                                                                <option value="null">-----Select------</option>
                                                                <option value="indian">Indian</option>
                                                                <option value="foreign">Foreign</option>
                                                                
                                                            </select>
                                                        </td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Religion&nbsp;</label></td>
                                                        <td> <input type="radio" name="religion" value="Hindu"  />&nbsp;&nbsp;Hindu&nbsp;<input type="radio" id="name" name="religion" value="Muslim"  />&nbsp;&nbsp;Muslim&nbsp;<input type="radio" id="name" name="religion" placeholder="Sikh"  />&nbsp;&nbsp;Sikh&nbsp;<input type="radio" id="name" name="religion" value="Christian"  />&nbsp;&nbsp;Christian<input type="radio" id="name" name="religion" value="other"  />&nbsp;&nbsp;Other</td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Permanent&nbsp;Address</label></td>
                                                        <td><textarea class="form-control" name="p_address" required placeholder="Permanent Address"></textarea></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Mobile&nbsp;No</label></td>
                                                        <td><input type="text" class="form-control" name="mobile_number" required placeholder="Mobile No"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Registration&nbsp;Date</label></td>
                                                        <td><input type="date" class="form-control" name="reg_date" required placeholder="Registration Date"></textarea></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Registration&nbsp;Place</label></td>
                                                        <td><input type="text" class="form-control" name="registration_place" required placeholder="Registration Place"></td>
                                                    </tr>
                                                     <tr>
                                                        <td><label class="col-sm-3 control-label">Email&nbsp;ID</label></td>
                                                        <td><input type="email" class="form-control" name="email" required placeholder="Email ID"></textarea></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td><button type="reset" class="btn btn-default">Reset</button></td>
                                                        <td><button  type="submit" class="btn btn-default">Submit</button></td>
                                                    </tr>
                                                </table>
                                                 </div>
                                                
                                                
                                            </form>
                                           
                                        </div>
                                    </div>
                                </div>
                                <!-- /.portlet -->
                            </div>
                    <!-- /.col-lg-12 -->
                        <div class="col-lg-2"></div>
                </div>
                <!-- /.row -->

            </div>
               