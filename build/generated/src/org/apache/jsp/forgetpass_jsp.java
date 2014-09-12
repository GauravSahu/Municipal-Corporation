package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forgetpass_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en-US\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\">\n");
      out.write("<title>Municipal Corporation</title>\n");
      out.write("\n");
      out.write("<link rel='stylesheet' href='./css/bootstrap.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet' href='./css/font-awesome.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/default.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/icons.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/shortcodes.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/widgets.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/sliders.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/bootstrap-responsive.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/skin-red.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel='stylesheet'  href='./css/style.css?ver=3.6.1' type='text/css' media='all'/>\n");
      out.write("<link rel=\"stylesheet\" href=\"./css/mycss.css\" >\n");
      out.write("\n");
      out.write("<script type='text/javascript' src='./js/jquery.js?ver=1.10.2'></script>\n");
      out.write("<script type='text/javascript' src='./js/jquery-migrate.min.js?ver=1.2.1'></script>\n");
      out.write("<script type='text/javascript' src='./js/comment-reply.min.js?ver=3.6.1'></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"./lib/jquery-1.10.1.min.js\"></script>\n");
      out.write("\t<!-- Add fancyBox main JS and CSS files -->\n");
      out.write("<script type=\"text/javascript\" src=\"./source/jquery.fancybox.js?v=2.1.5\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"js/jquery.redirect.min.js\"></script>\n");
      out.write("<script src=\"lib/d3.v3.min.js\"></script>\n");
      out.write(" <script src=\"lib/colorbrewer.js\"></script>\n");
      out.write(" <script src=\"lib/topojson.js\"></script>\n");
      out.write(" <script src=\"lib/cartogram.js\"></script>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\n");
      out.write("     \n");
      out.write("\n");
      out.write("     \n");
      out.write("     \n");
      out.write("      #status {\n");
      out.write("        color: #999;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      #map-container {\n");
      out.write("        height: 400px;\n");
      out.write("        text-align: center;\n");
      out.write("        position: relative;\n");
      out.write("        margin: 20px 0;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      #map {\n");
      out.write("        display: block;\n");
      out.write("        position: absolute;\n");
      out.write("        background: #fff;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 100%;\n");
      out.write("        margin: 0;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      path.district {\n");
      out.write("        stroke: #666;\n");
      out.write("        stroke-width: .035;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      path.district:hover {\n");
      out.write("        stroke: #000;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("     \n");
      out.write("\n");
      out.write("    </style>\n");
      out.write(" \n");
      out.write("   \n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("<style type=\"text/css\" media=\"all\">\n");
      out.write(".box1 i, .fancybox2 i, .sbutton i, .intro i  {margin-right:5px;}\n");
      out.write(".boxlink i {margin-right:0px;}\n");
      out.write(".captionicons {margin-right:5px;}\n");
      out.write("input, button, select, textarea {font-family:'open_sansregular';}\n");
      out.write("</style>\n");
      out.write("<style type=\"text/css\" media=\"all\">\n");
      out.write("body.boxed { \n");
      out.write("-webkit-background-size: cover;\n");
      out.write("-moz-background-size: cover;\t\n");
      out.write("-o-background-size: cover;\t\n");
      out.write("background: url('./img/background.png') repeat top center;\t\t\n");
      out.write("background-position:center left;\t\n");
      out.write("background-attachment:fixed;}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\n");
      out.write(".top {\n");
      out.write("margin-bottom: 15px;\n");
      out.write("}\n");
      out.write(".buttondiv {\n");
      out.write("margin-top: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body class=\"home page page-id-10 page-template page-template-template-home-php boxed group-blog\">\n");
      out.write("<div class=\"body\">\n");
      out.write("\t<div id=\"page\" class=\"hfeed site\">\n");
      out.write("\t\t<!-- Navigation -->\n");
      out.write("                                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./header/header.jsp", out, false);
      out.write("\n");
      out.write("\t\t<!-- /end header -->\n");
      out.write("\t\t<div class=\"container site-content\">\n");
      out.write("\t\t\t<div class=\"row-fluid\">\n");
      out.write("\t\t\t\t<div class=\"content-area\">\n");
      out.write("\t\t\t\t\t<main id=\"main\" class=\"site-main\" role=\"main\">\n");
      out.write("\t\t\t\t\t<article id=\"post-10\" class=\"post-10 page type-page status-publish hentry\">\n");
      out.write("\t\t\t\t\t<div class=\"entry-content\">\n");
      out.write("                                              \n");
      out.write("                                            `   <div class=\"row-fluid\">\n");
      out.write("                                                \n");
      out.write("                                                <div class=\"span4\"></div>\n");
      out.write("                                                <div class=\"span4\">\n");
      out.write("                                                    <div class=\"boxgray\">\n");
      out.write("                                                        \n");
      out.write("                                                        \n");
      out.write("                                                    </div>\n");
      out.write("                                                    \n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"span4\"></div>\n");
      out.write("                                                </div>\n");
      out.write("                                          \n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- .entry-content -->\n");
      out.write("\t\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t\t\t<!-- #post-## -->\n");
      out.write("\t\t\t\t\t\t</main>\n");
      out.write("\t\t\t\t\t\t<!-- #main -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!-- #primary -->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- .row-fluid -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- .container -->\n");
      out.write("\t\t\t<!-- FOOTER BEGIN\n");
      out.write("\t================================================== -->\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./footer/footer.jsp", out, false);
      out.write("\n");
      out.write("\t\t\t<!-- FOOTER END\n");
      out.write("\t================================================== -->\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- #page -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- .body -->\n");
      out.write("        \n");
      out.write("      \n");
      out.write(" \n");
      out.write("    <script type=\"text/javascript\" src=\"myscript.js\" ></script>     \n");
      out.write("        <script type='text/javascript' src='./js/bootstrap.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/plugins.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/custom.js?ver=3.6.1'></script>\n");
      out.write("       <script type=\"text/javascript\" src=\"js/shortcode.js\"></script>\n");
      out.write("\t<script type='text/javascript' src='./js/jquery.ui.core.min.js?ver=1.10.3'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/jquery.ui.widget.min.js?ver=1.10.3'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/jquery.ui.tabs.min.js?ver=1.10.3'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/tabs.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/camera.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/carousel.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/carouselrecentportfolio.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/prettyPhoto.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/isotope.js?ver=3.6.1'></script>\n");
      out.write("\t<script type='text/javascript' src='./js/testimonial.js?ver=3.6.1'></script>\n");
      out.write("\t<script type=\"text/javascript\"></script>\n");
      out.write("\t<!--BEGIN DEMO PANEL\n");
      out.write("================================================== -->\n");
      out.write("\t</body>\n");
      out.write("\t</html>");
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
