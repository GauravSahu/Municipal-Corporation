
         
                        <div class="clearfix"></div>
                    </li>
                    <!-- end SIDE NAV USER PANEL -->
                    <!-- begin SIDE NAV SEARCH -->
                    <li class="nav-search">
                        <form role="form">
                            <input type="search" class="form-control" placeholder="Search...">
                            <button class="btn">
                                <i class="fa fa-search"></i>
                            </button>
                        </form>
                    </li>
                    <!-- end SIDE NAV SEARCH -->
                    <!-- begin DASHBOARD LINK -->
                    <li>
                        <a href="../BDR/BDR-admin.jsp" class="active" onclick="userprofile()">
                            <i class="fa fa-dashboard"></i> Dashboard
                        </a>
                    </li>
                    <!-- end DASHBOARD LINK -->
                    <!-- begin CHARTS DROPDOWN -->
                    <li class="panel">
                        <a  href="javascript:;" onclick="birth()" data-parent="#side"  data-target="#charts">
                            <i class="fa fa-user"></i> Register New Birth 
                        </a>
                        
                    </li>
                    <!-- end CHARTS DROPDOWN -->
                    <!-- begin FORMS DROPDOWN -->
                    <li class="panel">
                        <a href="javascript:;" onclick="death()" data-parent="#side" data-toggle="collapse" class="accordion-toggle" data-target="#forms">
                            <i class="fa fa-user"></i> Register New Death 
                        </a>
                    </li>
                     <li class="panel">
                        <a href="javascript:;" id="leave_request" data-parent="#side" data-toggle="collapse" class="accordion-toggle" data-target="#forms">
                            <i class="fa fa-user"></i> Leave Request 
                        </a>
                    </li>
                   
                      