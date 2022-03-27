package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">    \n");
      out.write("        <title>NutrisiTerjaga</title>\n");
      out.write("\n");
      out.write("        <!-- Font awesome -->\n");
      out.write("        <link href=\"css/font-awesome.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\">   \n");
      out.write("        <!-- SmartMenus jQuery Bootstrap Addon CSS -->\n");
      out.write("        <link href=\"css/jquery.smartmenus.bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Product view slider -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/jquery.simpleLens.css\">    \n");
      out.write("        <!-- slick slider -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/slick.css\">\n");
      out.write("        <!-- price picker slider -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/nouislider.css\">\n");
      out.write("        <!-- Theme color -->\n");
      out.write("        <link id=\"switcher\" href=\"css/theme-color/green-theme.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- <link id=\"switcher\" href=\"css/theme-color/bridge-theme.css\" rel=\"stylesheet\"> -->\n");
      out.write("        <!-- Top Slider CSS -->\n");
      out.write("        <link href=\"css/sequence-theme.modern-slide-in.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("        <!-- Main style sheet -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">    \n");
      out.write("\n");
      out.write("        <!-- Google Font -->\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- wpf loader Two -->\n");
      out.write("        <div id=\"wpf-loader-two\">          \n");
      out.write("            <div class=\"wpf-loader-two-inner\">\n");
      out.write("                <span>Loading</span>\n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("        <!-- / wpf loader Two -->       \n");
      out.write("        <!-- SCROLL TOP BUTTON -->\n");
      out.write("        <a class=\"scrollToTop\" href=\"#\"><i class=\"fa fa-chevron-up\"></i></a>\n");
      out.write("        <!-- END SCROLL TOP BUTTON -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Start header section -->\n");
      out.write("        <header id=\"aa-header\">\n");
      out.write("            <!-- start header top  -->\n");
      out.write("            <div class=\"aa-header-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"aa-header-top-area\">\n");
      out.write("                                <!-- start header top left -->\n");
      out.write("\n");
      out.write("                                <!-- / header top left -->\n");
      out.write("                                <div class=\"aa-header-top-right\">\n");
      out.write("                                    <ul class=\"aa-head-top-nav-right\">\n");
      out.write("                                        <li class=\"hidden-xs\"><a href=\"wishlist.jsp\">Produk Favourite</a></li>\n");
      out.write("                                        <li class=\"hidden-xs\"><a href=\"\" data-toggle=\"modal\" data-target=\"#login-modal\">Pembayaran</a></li>\n");
      out.write("                                        <li>");

                                            String user = request.getParameter("user");
                                            if (user == null) {
                                            
      out.write("\n");
      out.write("                                            <a href=\"\" data-toggle=\"modal\" data-target=\"#login-modal\">Login</a>\n");
      out.write("                                            ");
 } else {
      out.write("\n");
      out.write("                                        <a href=\"account.jsp\">\n");
      out.write("                                            ");

                                                String name = (String) session.getAttribute("sessuser");
                                                out.print(name);
                                            
      out.write(" \n");
      out.write("                                        </a>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- / header top  -->\n");
      out.write("\n");
      out.write("            <!-- start header bottom  -->\n");
      out.write("            <div class=\"aa-header-bottom\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"aa-header-bottom-area\">\n");
      out.write("                                <!-- logo  -->\n");
      out.write("                                <div class=\"aa-logo\">\n");
      out.write("                                    <!-- Text based logo -->\n");
      out.write("                                    <a href=\"index.jsp\">\n");
      out.write("                                        <span class=\"fa fa-shopping-vegetable\"></span>\n");
      out.write("                                        <p>Nutrisi<strong>Terjaga</strong> <span>Buah dan sayur mencukupi nutrisi mu</span></p>\n");
      out.write("                                    </a>\n");
      out.write("                                    <!-- img based logo -->\n");
      out.write("                                    <!-- <a href=\"index.html\"><img src=\"img/logo.jpeg\" alt=\"logo img\" width=\"200px;\"></a> -->\n");
      out.write("                                </div>\n");
      out.write("                                <!-- / logo  -->\n");
      out.write("                                <!-- cart box -->\n");
      out.write("                                <div class=\"aa-cartbox\">\n");
      out.write("                                    <a class=\"aa-cart-link\" href=\"\" data-toggle=\"modal\" data-target=\"#login-modal\">\n");
      out.write("                                        <span class=\"fa fa-shopping-basket\"></span>\n");
      out.write("                                        <span class=\"aa-cart-title\">KERANJANG</span>\n");
      out.write("                                        <!--                                        <span class=\"aa-cart-notify\">2</span>-->\n");
      out.write("                                    </a>\n");
      out.write("                                    <!--                                    <div class=\"aa-cartbox-summary\">\n");
      out.write("                                                                            <ul>\n");
      out.write("                                                                                <li>\n");
      out.write("                                                                                    <a class=\"aa-cartbox-img\" href=\"#\"><img src=\"img/sayur/kacangpanjang.jpg\" alt=\"img\"></a>\n");
      out.write("                                                                                    <div class=\"aa-cartbox-info\">\n");
      out.write("                                                                                        <h4><a href=\"#\">Kancang Panjang</a></h4>\n");
      out.write("                                                                                        <p>1Ikat x Rp 8.500</p>\n");
      out.write("                                                                                    </div>\n");
      out.write("                                                                                    <a class=\"aa-remove-product\" href=\"#\"><span class=\"fa fa-times\"></span></a>\n");
      out.write("                                                                                </li>\n");
      out.write("                                                                                <li>\n");
      out.write("                                                                                    <a class=\"aa-cartbox-img\" href=\"#\"><img src=\"img/sayur/brokoli.jpg\" alt=\"img\"></a>\n");
      out.write("                                                                                    <div class=\"aa-cartbox-info\">\n");
      out.write("                                                                                        <h4><a href=\"#\">Brokoli</a></h4>\n");
      out.write("                                                                                        <p>1KG x Rp 13.000</p>\n");
      out.write("                                                                                    </div>\n");
      out.write("                                                                                    <a class=\"aa-remove-product\" href=\"#\"><span class=\"fa fa-times\"></span></a>\n");
      out.write("                                                                                </li>                    \n");
      out.write("                                                                                <li>\n");
      out.write("                                                                                    <span class=\"aa-cartbox-total-title\">\n");
      out.write("                                                                                        Total\n");
      out.write("                                                                                    </span>\n");
      out.write("                                                                                    <span class=\"aa-cartbox-total-price\">\n");
      out.write("                                                                                        Rp 21.500\n");
      out.write("                                                                                    </span>\n");
      out.write("                                                                                </li>\n");
      out.write("                                                                            </ul>\n");
      out.write("                                                                            <a class=\"aa-cartbox-checkout aa-primary-btn\" href=\"checkout.html\">Melakukan Pembayaran</a>\n");
      out.write("                                                                        </div>-->\n");
      out.write("                                </div>\n");
      out.write("                                <!-- / cart box -->\n");
      out.write("                                <!-- search box -->\n");
      out.write("                                <div class=\"aa-search-box\">\n");
      out.write("                                    <form action=\"\">\n");
      out.write("                                        <input type=\"text\" name=\"pencarian\" id=\"pencarian\" placeholder=\"Cari Sini Contoh : Kankung \">\n");
      out.write("                                        <button type=\"submit\"><span class=\"fa fa-search\"></span></button>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- / search box -->             \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- / header bottom  -->\n");
      out.write("        </header>\n");
      out.write("        <!-- / header section -->\n");
      out.write("        <!-- menu -->\n");
      out.write("        <section id=\"menu\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"menu-area\">\n");
      out.write("                    <!-- Navbar -->\n");
      out.write("                    <div class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                            </button>          \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"navbar-collapse collapse\">\n");
      out.write("                            <!-- Left nav -->\n");
      out.write("                            <ul class=\"nav navbar-nav\">\n");
      out.write("                                <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                <!-- \n");
      out.write("                                <li><a href=\"#\">Women <span class=\"caret\"></span></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">  \n");
      out.write("                                        <li><a href=\"#\">Kurta & Kurti</a></li>                                                                \n");
      out.write("                                        <li><a href=\"#\">Trousers</a></li>              \n");
      out.write("                                        <li><a href=\"#\">Casual</a></li>\n");
      out.write("                                        <li><a href=\"#\">Sports</a></li>\n");
      out.write("                                        <li><a href=\"#\">Formal</a></li>                \n");
      out.write("                                        <li><a href=\"#\">Sarees</a></li>\n");
      out.write("                                        <li><a href=\"#\">Shoes</a></li>\n");
      out.write("                                        <li><a href=\"#\">And more.. <span class=\"caret\"></span></a>\n");
      out.write("                                            <ul class=\"dropdown-menu\">\n");
      out.write("                                                <li><a href=\"#\">Sleep Wear</a></li>\n");
      out.write("                                                <li><a href=\"#\">Sandals</a></li>\n");
      out.write("                                                <li><a href=\"#\">Loafers</a></li>\n");
      out.write("                                                <li><a href=\"#\">And more.. <span class=\"caret\"></span></a>\n");
      out.write("                                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                                        <li><a href=\"#\">Rings</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Earrings</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Jewellery Sets</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Lockets</a></li>\n");
      out.write("                                                        <li class=\"disabled\"><a class=\"disabled\" href=\"#\">Disabled item</a></li>                       \n");
      out.write("                                                        <li><a href=\"#\">Jeans</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Polo T-Shirts</a></li>\n");
      out.write("                                                        <li><a href=\"#\">SKirts</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Jackets</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Tops</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Make Up</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Hair Care</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Perfumes</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Skin Care</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Hand Bags</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Single Bags</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Travel Bags</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Wallets & Belts</a></li>                        \n");
      out.write("                                                        <li><a href=\"#\">Sunglases</a></li>\n");
      out.write("                                                        <li><a href=\"#\">Nail</a></li>                       \n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>                   \n");
      out.write("                                            </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>-->      \n");
      out.write("                                <li><a href=\"\" data-toggle=\"modal\" data-target=\"#login-modal\">Shop</a></li>\n");
      out.write("                                <!--<li><a href=\"product.jsp\">Jenis Produk<span class=\"caret\"></span></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\">                \n");
      out.write("                                        <li><a href=\"#sayur\">Sayuran</a></li>\n");
      out.write("                                        <li><a href=\"#buahan\">Buahan</a></li>              \n");
      out.write("                                    </ul>\n");
      out.write("                                </li>-->\n");
      out.write("                                <li><a href=\"\"data-toggle=\"modal\" data-target=\"#login-modal\">Contact</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div><!--/.nav-collapse -->\n");
      out.write("                    </div>\n");
      out.write("                </div>       \n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- / menu -->\n");
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
