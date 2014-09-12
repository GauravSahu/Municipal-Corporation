package org.apache.jsp.admin.BDR;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class BDR_002dReport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Flex Admin - Responsive Admin Theme</title>\n");
      out.write("\n");
      out.write("    <!-- PACE LOAD BAR PLUGIN - This creates the subtle load bar effect at the top of the page. -->\n");
      out.write("    <link href=\"css/plugins/pace/pace.css\" rel=\"stylesheet\">\n");
      out.write("    <script src=\"js/plugins/pace/pace.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- GLOBAL STYLES - Include these on every page. -->\n");
      out.write("    <link href=\"css/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href='../fonts.googleapis.com/css.css' rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href='../fonts.googleapis.com/css_2.css' rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href=\"icons/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- PAGE LEVEL PLUGIN STYLES -->\n");
      out.write("\n");
      out.write("    <!-- THEME STYLES - Include these on every page. -->\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/plugins.css\" rel=\"stylesheet\">\n");
      out.write(" <script src=\"js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"js/jquery-ui-1.8.17.custom.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- THEME DEMO STYLES - Use these styles for reference if needed. Otherwise they can be deleted. -->\n");
      out.write("    <link href=\"css/demo.css\" rel=\"stylesheet\">\n");
      out.write("  <script type=\"text/javascript\" src=\"d3.v3.min.js\"></script>\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"js/html5shiv.js\"></script>\n");
      out.write("      <script src=\"js/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("    <style>\n");
      out.write(".axis text {\n");
      out.write("  font: 10px sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".axis path,\n");
      out.write(".axis line {\n");
      out.write("  fill: none;\n");
      out.write("  stroke: #000;\n");
      out.write("  shape-rendering: crispEdges;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".bar {\n");
      out.write("  fill: steelblue;\n");
      out.write("  fill-opacity: .9;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".x.axis path {\n");
      out.write("  display: none;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("     function birth()\n");
      out.write("     {\n");
      out.write("        var xmlhttp;   \n");
      out.write("  \n");
      out.write("        if (window.XMLHttpRequest)\n");
      out.write("        {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("            xmlhttp=new XMLHttpRequest();\n");
      out.write("        }\n");
      out.write("        else\n");
      out.write("        {// code for IE6, IE5\n");
      out.write("            xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("        }\n");
      out.write("        xmlhttp.onreadystatechange=function()\n");
      out.write("        {\n");
      out.write("            if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"main\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"register-birth.jsp?q=\"+0,true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("    }\n");
      out.write("    function death()\n");
      out.write("     {\n");
      out.write("        var xmlhttp;   \n");
      out.write("  \n");
      out.write("        if (window.XMLHttpRequest)\n");
      out.write("        {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("            xmlhttp=new XMLHttpRequest();\n");
      out.write("        }\n");
      out.write("        else\n");
      out.write("        {// code for IE6, IE5\n");
      out.write("            xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("        }\n");
      out.write("        xmlhttp.onreadystatechange=function()\n");
      out.write("        {\n");
      out.write("            if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"main\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"register-death.jsp?q=\"+0,true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("    }\n");
      out.write("    function mohalla(str)\n");
      out.write("    {\n");
      out.write("        var xmlhttp;   \n");
      out.write("  \n");
      out.write("        if (window.XMLHttpRequest)\n");
      out.write("        {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("            xmlhttp=new XMLHttpRequest();\n");
      out.write("        }\n");
      out.write("        else\n");
      out.write("        {// code for IE6, IE5\n");
      out.write("            xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("        }\n");
      out.write(" \n");
      out.write("        xmlhttp.onreadystatechange=function()\n");
      out.write("        {\n");
      out.write("            if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"chkMohalla\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        } \n");
      out.write("        xmlhttp.open(\"GET\",\"http://localhost:8084/Final/admin/BDR/getMohalla.jsp?ulb_id=\"+str+\"\",true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("    }\n");
      out.write("    function signature()\n");
      out.write("     {\n");
      out.write("        var xmlhttp;   \n");
      out.write("  \n");
      out.write("        if (window.XMLHttpRequest)\n");
      out.write("        {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("            xmlhttp=new XMLHttpRequest();\n");
      out.write("        }\n");
      out.write("        else\n");
      out.write("        {// code for IE6, IE5\n");
      out.write("            xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("        }\n");
      out.write("        xmlhttp.onreadystatechange=function()\n");
      out.write("        {\n");
      out.write("            if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"main\").innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"GET\",\"signature.jsp?q=\"+0,true);\n");
      out.write("        xmlhttp.send();\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    function sendID(hid,action)\n");
      out.write("    {\n");
      out.write("        alert(hid);\n");
      out.write("        var xmlhttp;\n");
      out.write("        if (window.XMLHttpRequest)\n");
      out.write("        {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("            xmlhttp=new XMLHttpRequest();\n");
      out.write("        }\n");
      out.write("        else\n");
      out.write("        {// code for IE6, IE5\n");
      out.write("            xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("        }\n");
      out.write("        xmlhttp.onreadystatechange=function()\n");
      out.write("        {\n");
      out.write("            if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"button1\"+hid).innerHTML=xmlhttp.responseText;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        xmlhttp.open(\"POST\",\"sign.jsp\",true);\n");
      out.write("        xmlhttp.setRequestHeader(\"Content-type\",\"application/x-www-form-urlencoded\");\n");
      out.write("        xmlhttp.send(\"hid=\"+hid+\"&action=\"+action+\"\");\n");
      out.write("     }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
 
       String name= (String)session.getAttribute("name");
       String role= (String)session.getAttribute("role");
       String id= (String)session.getAttribute("emp_id");
      // String photo_id= (String)session.getAttribute("id");
       int index = 0;
       
       for(int i = 0; i<name.length();i++){
           if (name.charAt(i) == ' '){
                 index = i;  
          }
       }
       String fname = name.substring(0,index);
       String lname = name.substring(index,name.length());
   
      out.write("\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("        <!-- begin TOP NAVIGATION -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "DataSet/navigator.jsp", out, false);
      out.write("  \n");
      out.write("        <!-- begin SIDE NAVIGATION -->\n");
      out.write("         <nav class=\"navbar-side\" role=\"navigation\">\n");
      out.write("            <div class=\"navbar-collapse sidebar-collapse collapse\">\n");
      out.write("                <ul id=\"side\" class=\"nav navbar-nav side-nav\">\n");
      out.write("                    <!-- begin SIDE NAV USER PANEL -->\n");
      out.write("                    <li class=\"side-user hidden-xs\">\n");
      out.write("                        <img  src=\"");
out.print(id);
      out.write(".jpg\" width=\"150\" height=\"230\" alt=\"\">\n");
      out.write("                        <p class=\"welcome\">\n");
      out.write("                            <i class=\"fa fa-key\"></i> Logged in as\n");
      out.write("                        </p>\n");
      out.write("                        <p class=\"name tooltip-sidebar-logout\">\n");
      out.write("                           ");
out.print(fname);
      out.write("\n");
      out.write("                            <span class=\"last-name\">");
out.print(lname);
      out.write("</span> <a style=\"color: inherit\" class=\"logout_open\" href=\"#logout\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Logout\"><i class=\"fa fa-sign-out\"></i></a>\n");
      out.write("                        </p>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar/sidebar.jsp", out, false);
      out.write(" \n");
      out.write("            ");

                if(role.equals("admin")){
                    
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"BDR-Report.jsp\">\n");
      out.write("                            <i class=\"fa fa-windows\"></i>Analytics                        </a>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        <a href=\"#\" id=\"certificate_edit\"  >\n");
      out.write("                              <i class=\"fa fa-edit\"></i>Certificate Correction\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\" onclick=\"signature()\">\n");
      out.write("                              <i class=\"fa fa-check-square\"></i>Sign Certificate \n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    ");

                }
            
      out.write("\n");
      out.write("         </ul>\n");
      out.write("                <!-- /.side-nav -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </nav>\n");
      out.write("        <!-- /.navbar-side -->\n");
      out.write("        <!-- end SIDE NAVIGATION -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- begin MAIN PAGE CONTENT -->\n");
      out.write("        <div id=\"page-wrapper\">\n");
      out.write("\n");
      out.write("            <div id=\"main\" class=\"page-content\">\n");
      out.write("\n");
      out.write("                <!-- begin PAGE TITLE ROW -->\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"page-title\">\n");
      out.write("                            <h1>Data Analysis</h1>\n");
      out.write("                            <ol class=\"breadcrumb\">\n");
      out.write("                                <li><i class=\"fa fa-dashboard\"></i>  <a href=\"BDR-admin.jsp\">Dashboard</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"active\">Data Analysis</li>\n");
      out.write("                            </ol>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-12 -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /.row -->\n");
      out.write("                <!-- end PAGE TITLE ROW -->\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <!-- Line Chart Example -->\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"portlet portlet-default\">\n");
      out.write("                            <div class=\"portlet-heading\">\n");
      out.write("                                <div class=\"portlet-title\">\n");
      out.write("                                    <h4>Sortable Bar Chart</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"portlet-widgets\">\n");
      out.write("                                    <a href=\"javascript:;\"><i class=\"fa fa-refresh\"></i></a>\n");
      out.write("                                    <span class=\"divider\"></span>\n");
      out.write("                                    <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"flot.html#areaChart\"><i class=\"fa-chevron-down fa\"></i></a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clearfix\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div id=\"areaChart\" class=\"panel-collapse collapse in\">\n");
      out.write("                                <div class=\"portlet-body\">\n");
      out.write("                                    <div class=\"flot-chart\">\n");
      out.write("                                        <div class=\"flot-chart-content\" id=\"chart\" >\n");
      out.write("                                            \n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-12 -->\n");
      out.write("\n");
      out.write("                    <!-- Multiple Axes Example -->\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <div class=\"portlet portlet-green\">\n");
      out.write("                            <div class=\"portlet-heading\">\n");
      out.write("                                <div class=\"portlet-title\">\n");
      out.write("                                    <h4>Birth And Death Line Chart</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"portlet-widgets\">\n");
      out.write("                                    <a href=\"javascript:;\"><i class=\"fa fa-refresh\"></i></a>\n");
      out.write("                                    <span class=\"divider\"></span>\n");
      out.write("                                    <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"flot.html#lineChart\"><i class=\"fa fa-chevron-down\"></i></a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clearfix\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div id=\"lineChart\" class=\"panel-collapse collapse in\">\n");
      out.write("                                <div class=\"portlet-body\">\n");
      out.write("                                    <div class=\"flot-chart\">\n");
      out.write("                                        <div class=\"flot-chart-content\" id=\"flot-chart-multiple-axes\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-12 -->\n");
      out.write("\n");
      out.write("                    <!-- Bar Chart Example -->\n");
      out.write("                   \n");
      out.write("                    <!-- /.col-lg-6 -->\n");
      out.write("\n");
      out.write("                    <!-- Pie Chart Example -->\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"portlet portlet-orange\">\n");
      out.write("                            <div class=\"portlet-heading\">\n");
      out.write("                                <div class=\"portlet-title\">\n");
      out.write("                                    <h4>Birth Pi Chart</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"portlet-widgets\">\n");
      out.write("                                    <a href=\"javascript:;\"><i class=\"fa fa-refresh\"></i></a>\n");
      out.write("                                    <span class=\"divider\"></span>\n");
      out.write("                                    <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"flot.html#donutChart\"><i class=\"fa fa-chevron-down\"></i></a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clearfix\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div id=\"donutChart\" class=\"panel-collapse collapse in\">\n");
      out.write("                                <div class=\"portlet-body\">\n");
      out.write("                                    <div class=\"flot-chart\">\n");
      out.write("                                        <div class=\"flot-chart-content\" id=\"flot-chart-pie1\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <br><br><br><br>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-6 -->\n");
      out.write("\n");
      out.write("                    <!-- Moving Line Chart Example -->\n");
      out.write("                     <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"portlet portlet-orange\">\n");
      out.write("                            <div class=\"portlet-heading\">\n");
      out.write("                                <div class=\"portlet-title\">\n");
      out.write("                                    <h4>Death Pi Chart</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"portlet-widgets\">\n");
      out.write("                                    <a href=\"javascript:;\"><i class=\"fa fa-refresh\"></i></a>\n");
      out.write("                                    <span class=\"divider\"></span>\n");
      out.write("                                    <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"flot.html#donutChart\"><i class=\"fa fa-chevron-down\"></i></a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clearfix\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div id=\"donutChart\" class=\"panel-collapse collapse in\">\n");
      out.write("                                <div class=\"portlet-body\">\n");
      out.write("                                    <div class=\"flot-chart\">\n");
      out.write("                                        <div class=\"flot-chart-content\" id=\"flot-chart-pie\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <br><br><br><br>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-6 -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!-- /.row -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!-- /.page-content -->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- /#page-wrapper -->\n");
      out.write("        <!-- end MAIN PAGE CONTENT -->\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!-- /#wrapper -->\n");
      out.write("\n");
      out.write("    <!-- GLOBAL SCRIPTS -->\n");
      out.write("    <script src=\"../../js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/plugins/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("    <script src=\"js/plugins/popupoverlay/jquery.popupoverlay.js\"></script>\n");
      out.write("    <script src=\"js/plugins/popupoverlay/defaults.js\"></script>\n");
      out.write("    <!-- Logout Notification Box -->\n");
      out.write("    <div id=\"logout\">\n");
      out.write("        <div class=\"logout-message\">\n");
      out.write("            <img class=\"img-circle img-logout\" src=\"img/profile-pic.jpg\" alt=\"\">\n");
      out.write("            <h3>\n");
      out.write("                <i class=\"fa fa-sign-out text-green\"></i> Ready to go?\n");
      out.write("            </h3>\n");
      out.write("            <p>Select \"Logout\" below if you are ready<br> to end your current session.</p>\n");
      out.write("            <ul class=\"list-inline\">\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"login.html\" class=\"btn btn-green\">\n");
      out.write("                        <strong>Logout</strong>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <button class=\"logout_close btn btn-green\">Cancel</button>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- /#logout -->\n");
      out.write("    <!-- Logout Notification jQuery -->\n");
      out.write("    <script src=\"js/plugins/popupoverlay/logout.js\"></script>\n");
      out.write("    <!-- HISRC Retina Images -->\n");
      out.write("    <script src=\"js/plugins/hisrc/hisrc.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- PAGE LEVEL PLUGIN SCRIPTS -->\n");
      out.write("    <!-- Flot Charts -->\n");
      out.write("    <script src=\"js/plugins/flot/jquery.flot.js\"></script>\n");
      out.write("    <script src=\"js/plugins/flot/jquery.flot.tooltip.min.js\"></script>\n");
      out.write("    <script src=\"js/plugins/flot/jquery.flot.resize.js\"></script>\n");
      out.write("    <script src=\"js/plugins/flot/jquery.flot.pie.js\"></script>\n");
      out.write("    <!-- Flot Demo/Dummy Data -->\n");
      out.write("    <script src=\"js/plugins/flot/flot-demo-data.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- THEME SCRIPTS -->\n");
      out.write("    <script src=\"js/flex.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
