
<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Add New Employee
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                                </li>
                                <li class="active">Add New Employee</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    <div class="col-lg-2"></div>
                  <div class="col-lg-8">
                                <div class="portlet portlet-blue">
                                    <div class="portlet-heading">
                                        <div class="portlet-title">
                                            <h4>Add New Employee</h4>
                                        </div>
                                        <div class="portlet-widgets">
                                            <a data-toggle="collapse" data-parent="#accordion" href="basic-form-elements.html#horizontalFormExample"><i class="fa fa-chevron-down"></i></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="horizontalFormExample" class="panel-collapse collapse in">
                                        <div class="portlet-body">
                                            <form class="form-horizontal" role="form" action="add-emp.jsp" method="post">
                                                
                                                <div class="form-group">
                                                    <label  class="col-sm-3 control-label">Employee Name</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" name="name" required placeholder="Employee Name">
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label  class="col-sm-3 control-label">Father Name</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" name="father_name" required placeholder="Father Name">
                                                    </div>
                                                </div>
                                                
                                                 <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Mother Name</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" name="mother_name" required placeholder="Mother Name">
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Password</label>
                                                    <div class="col-sm-6">
                                                        <input type="password" class="form-control" name="password" required placeholder="Password">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Date of Birth</label>
                                                    <div class="col-sm-6">
                                                        <input type="date" class="form-control" name="dob" required placeholder="Date of Birth">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Email</label>
                                                    <div class="col-sm-6">
                                                        <input type="email" class="form-control" name="email" required placeholder="Email">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Phone No</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" name="phone_no" required placeholder="Phone Number">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">City</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" name="City" required placeholder="City">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Address</label>
                                                    <div class="col-sm-6">
                                                        <textarea name="address" class="form-control" required placeholder="Address" ></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Religon</label>
                                                    <div class="col-sm-6">
                                                     <input type="radio" name="religion" value="Hindu"  />&nbsp;&nbsp;Hindu&nbsp;<input type="radio" id="name" name="religion" value="Muslim"  />&nbsp;&nbsp;Muslim&nbsp;<input type="radio" id="name" name="religion" placeholder="Sikh"  />&nbsp;&nbsp;Sikh&nbsp;<input type="radio" id="name" name="religion" value="Christian"  />&nbsp;&nbsp;Christian<input type="radio" id="name" name="religion" value="other"  />&nbsp;&nbsp;Other
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Gender</label>
                                                    <div class="col-sm-6">
                                                    <input type="radio"  name="gender"  value= 'male' required >&nbsp;&nbsp;Male&nbsp;&nbsp;<input  type="radio"  value= 'female' name="gender"  required />&nbsp;&nbsp;Female
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Date of Joining</label>
                                                     <div class="col-sm-6">
                                                         <input type="date" name="doj" required class="form-control" >
                                                     </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Nationality</label>
                                                     <div class="col-sm-6">
                                                         <select class="form-control" name="nat">
                                                             <option value="Null">---select---</option>
                                                             <option value="Null">Indian</option>
                                                             <option value="Null">Other</option>
                                                         </select>
                                                     </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Marital Status</label>
                                                     <div class="col-sm-6">
                                                         <input type="radio"  name="marital"  value= 'single' required >&nbsp;&nbsp;Single&nbsp;&nbsp;<input  type="radio"  value= 'married' name="marital"  required />&nbsp;&nbsp;Married
                                                     </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Role</label>
                                                     <div class="col-sm-6">
                                                         <select class="form-control" name="role" required>
                                                             <option value="null">---select---</option>
                                                             <option value="admin">Admin</option>
                                                             <option value="manager">Manager</option>
                                                             <option value="manager">Head of Department</option>
                                                         </select>
                                                     </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">ULB NAME</label>
                                                    <div class="col-sm-6">
                                                       <select name="ulbsel" class="form-control" id="ulbselid" onchange="mohalla(this.value)" onselect="mohalla(this.value)" >
                    <option value="">----Select City----</option>
                    
                         <option value="101">Agra</option>
                         
                         <option value="102">Aligarh</option>
                         
                         <option value="103">Allahabad</option>
                         
                         <option value="104">Bareilly</option>
                         
                         <option value="105">Ghaziabad</option>
                         
                         <option value="106">Gorakhpur</option>
                         
                         <option value="107">Jhansi</option>
                         
                         <option value="108">Kanpur</option>
                         
                         <option value="109">Lucknow</option>
                         
                         <option value="110">Meerut</option>
                         
                         <option value="111">Moradabad</option>
                         
                         <option value="112">Saharanpur</option>
                         
                         <option value="113">Varanasi</option>
                         
                    </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                     <label  class="col-sm-3 control-label">Department NAME</label>
                                                    <div   class="col-sm-6">
                                                        <select name="dept_id" class="form-control" >
                                                            <option value="null">----select----</option>
                                                            <option value="501">Birth And Death</option>
                                                            <option value="502">Admin</option>
                                                            <option value="503">Grievance</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-3 col-sm-6">
                                                        <button type="submit" class="btn btn-default">Submit</button>
                                                    </div>
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
               
