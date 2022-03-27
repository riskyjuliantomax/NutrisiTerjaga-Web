package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sidebar_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"Dashboard\">\n");
      out.write("        <meta name=\"keyword\" content=\"Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina\">\n");
      out.write("        <title>Dashio - Bootstrap Admin Template</title>\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!--external css-->\n");
      out.write("        <link href=\"lib/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/zabuto_calendar.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"lib/gritter/css/jquery.gritter.css\" />\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style-responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"lib/chart-master/Chart.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--header start-->\n");
      out.write("        <header class=\"header black-bg\">\n");
      out.write("            <div class=\"sidebar-toggle-box\">\n");
      out.write("                <div class=\"fa fa-bars tooltips\" data-placement=\"right\" data-original-title=\"Toggle Navigation\"></div>\n");
      out.write("            </div>\n");
      out.write("            <!--logo start-->\n");
      out.write("            <a href=\"index.html\" class=\"logo\"><b>Nutrisi<span>Terjaga</span></b></a>\n");
      out.write("            <!--logo end-->\n");
      out.write("            <div class=\"nav notify-row\" id=\"top_menu\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"top-menu\">\n");
      out.write("                <ul class=\"nav pull-right top-menu\">\n");
      out.write("                    <li><a class=\"logout\" href=\"login.html\">Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!--header end-->\n");
      out.write("        <!-- **********************************************************************************************************************************************************\n");
      out.write("            MAIN SIDEBAR MENU\n");
      out.write("            *********************************************************************************************************************************************************** -->\n");
      out.write("        <!--sidebar start-->\n");
      out.write("        <aside>\n");
      out.write("            <div id=\"sidebar\" class=\"nav-collapse \">\n");
      out.write("                <!-- sidebar menu start-->\n");
      out.write("                <ul class=\"sidebar-menu\" id=\"nav-accordion\">\n");
      out.write("                    <p class=\"centered\"><a href=\"profile.html\"><img src=\"img/user.png\" class=\"img-circle\" width=\"80\"></a></p>\n");
      out.write("                    <h5 class=\"centered\">Budi</h5>\n");
      out.write("                    <li class=\"mt\">\n");
      out.write("                        <a  id=\"index\" href=\"Index.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Dashboard</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"forminput\" class=\"sub-menu\">\n");
      out.write("                        <a  id=\"input\" href=\"FormInput.jsp\" onclick=\"myFunction()\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Form Isi Produk</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a  id=\"index\" href=\"Index.jsp\">\n");
      out.write("                            <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                            <span>Dashboard</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\">\n");
      out.write("                            <i class=\"fa fa-desktop\"></i>\n");
      out.write("                            <span>UI Elements</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li><a href=\"general.html\">General</a></li>\n");
      out.write("                            <li><a href=\"buttons.html\">Buttons</a></li>\n");
      out.write("                            <li><a href=\"panels.html\">Panels</a></li>\n");
      out.write("                            <li><a href=\"font_awesome.html\">Font Awesome</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\">\n");
      out.write("                            <i class=\"fa fa-cogs\"></i>\n");
      out.write("                            <span>Components</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li><a href=\"grids.html\">Grids</a></li>\n");
      out.write("                            <li><a href=\"calendar.html\">Calendar</a></li>\n");
      out.write("                            <li><a href=\"gallery.html\">Gallery</a></li>\n");
      out.write("                            <li><a href=\"todo_list.html\">Todo List</a></li>\n");
      out.write("                            <li><a href=\"dropzone.html\">Dropzone File Upload</a></li>\n");
      out.write("                            <li><a href=\"inline_editor.html\">Inline Editor</a></li>\n");
      out.write("                            <li><a href=\"file_upload.html\">Multiple File Upload</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\">\n");
      out.write("                            <i class=\"fa fa-book\"></i>\n");
      out.write("                            <span>Extra Pages</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li><a href=\"blank.html\">Blank Page</a></li>\n");
      out.write("                            <li><a href=\"login.html\">Login</a></li>\n");
      out.write("                            <li><a href=\"lock_screen.html\">Lock Screen</a></li>\n");
      out.write("                            <li><a href=\"profile.html\">Profile</a></li>\n");
      out.write("                            <li><a href=\"invoice.html\">Invoice</a></li>\n");
      out.write("                            <li><a href=\"pricing_table.html\">Pricing Table</a></li>\n");
      out.write("                            <li><a href=\"faq.html\">FAQ</a></li>\n");
      out.write("                            <li><a href=\"404.html\">404 Error</a></li>\n");
      out.write("                            <li><a href=\"500.html\">500 Error</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\">\n");
      out.write("                            <i class=\"fa fa-tasks\"></i>\n");
      out.write("                            <span>Forms</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li><a href=\"form_component.html\">Form Components</a></li>\n");
      out.write("                            <li><a href=\"advanced_form_components.html\">Advanced Components</a></li>\n");
      out.write("                            <li><a href=\"form_validation.html\">Form Validation</a></li>\n");
      out.write("                            <li><a href=\"contactform.html\">Contact Form</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\">\n");
      out.write("                            <i class=\"fa fa-th\"></i>\n");
      out.write("                            <span>Data Tables</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li><a href=\"basic_table.html\">Basic Table</a></li>\n");
      out.write("                            <li><a href=\"responsive_table.html\">Responsive Table</a></li>\n");
      out.write("                            <li><a href=\"advanced_table.html\">Advanced Table</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"inbox.html\">\n");
      out.write("                            <i class=\"fa fa-envelope\"></i>\n");
      out.write("                            <span>Mail </span>\n");
      out.write("                            <span class=\"label label-theme pull-right mail-info\">2</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\">\n");
      out.write("                            <i class=\" fa fa-bar-chart-o\"></i>\n");
      out.write("                            <span>Charts</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li><a href=\"morris.html\">Morris</a></li>\n");
      out.write("                            <li><a href=\"chartjs.html\">Chartjs</a></li>\n");
      out.write("                            <li><a href=\"flot_chart.html\">Flot Charts</a></li>\n");
      out.write("                            <li><a href=\"xchart.html\">xChart</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"sub-menu\">\n");
      out.write("                        <a href=\"javascript:;\">\n");
      out.write("                            <i class=\"fa fa-comments-o\"></i>\n");
      out.write("                            <span>Chat Room</span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"sub\">\n");
      out.write("                            <li><a href=\"lobby.html\">Lobby</a></li>\n");
      out.write("                            <li><a href=\"chat_room.html\"> Chat Room</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"google_maps.html\">\n");
      out.write("                            <i class=\"fa fa-map-marker\"></i>\n");
      out.write("                            <span>Google Maps </span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <!-- sidebar menu end-->\n");
      out.write("            </div>\n");
      out.write("        </aside>\n");
      out.write("        <!--sidebar end-->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
