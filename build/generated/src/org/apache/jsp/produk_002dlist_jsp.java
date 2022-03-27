package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class produk_002dlist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Produk Detail</title>\n");
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
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Products section -->\n");
      out.write("        <section id=\"aa-product\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"aa-product-area\">\n");
      out.write("                                <div class=\"aa-product-inner\">\n");
      out.write("                                    <!-- start prduct navigation -->\n");
      out.write("                                    <ul class=\"nav nav-tabs aa-products-tab\">\n");
      out.write("                                        <li class=\"active\"><a href=\"#sayur\" data-toggle=\"tab\">Sayur</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                    <!-- Tab panes -->\n");
      out.write("                                    <div class=\"tab-content\">\n");
      out.write("                                        <!-- Start men product category -->\n");
      out.write("                                        <div class=\"tab-pane fade in active\" id=\"sayur\">\n");
      out.write("                                            <ul class=\"aa-product-catg\">\n");
      out.write("                                                ");
 try {
                                                        String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                        Connection conn = null;
                                                        Statement statement = null;
                                                        ResultSet rs = null;
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conn = DriverManager.getConnection(hosts, "root", "");
                                                        statement = conn.createStatement();
                                                        String data = "Select * from produk where jenis = 'SAYUR' order by nama asc limit 8";
                                                        rs = statement.executeQuery(data);
                                                
      out.write("\n");
      out.write("                                                ");
while (rs.next()) {
      out.write("\n");
      out.write("\n");
      out.write("                                                <!-- start single product item -->\n");
      out.write("                                                <li>\n");
      out.write("                                                    <figure> \n");
      out.write("                                                        <a class=\"aa-product-img\" href=\"product-detail.jsp?id=");
      out.print( rs.getString("id"));
      out.write("\"><img src=\"img/");
      out.print( rs.getString("lokasi_gambar"));
      out.write("\" alt=\"polo shirt img\" width=\"250px\" height=\"300px\"></a>\n");
      out.write("                                                        <a class=\"aa-add-card-btn\" ");

                                                            String user = request.getParameter("user");
                                                            if (user == null) {
                                                           
      out.write(" <a href=\"\" data-toggle=\"modal\" data-target=\"#login-modal\">\n");
      out.write("                                                                ");
} else {  
      out.write("\n");
      out.write("                                                                <a href =\"cart.jsp?id");
      out.print( rs.getString("id") );
      out.write("\">\n");
      out.write("                                                                    ");

                                                                        }
                                                                    
      out.write("<span class=\"fa fa-shopping-cart\"></span>Masuk Keranjang</a>\n");
      out.write("                                                                <figcaption>\n");
      out.write("                                                                    <h4 class=\"aa-product-title\"><a href=\"#\">");
      out.print( rs.getString("nama"));
      out.write("</a></h4>\n");
      out.write("                                                                    <span class=\"aa-product-price\">");
      out.print( rs.getString("harga"));
      out.write('/');
      out.print( rs.getString("satuan"));
      out.write("</span><span class=\"aa-product-price\">\n");
      out.write("                                                                </figcaption>\n");
      out.write("                                                                </figure>                        \n");
      out.write("                                                                <div class=\"aa-product-hvr-content\">\n");
      out.write("                                                                    <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Tambah Ke Favourite\"><span class=\"fa fa-heart-o\"></span></a>\n");
      out.write("                                                                </div>\n");
      out.write("                                                                <!-- product badge -->\n");
      out.write("                                                                ");

                                                                    int stok = Integer.parseInt(rs.getString("stok"));
                                                                    if (stok > 10) {
                                                                
      out.write("\n");
      out.write("                                                                <span class=\"aa-badge aa-sale\" href=\"#\">Jual!</span>\n");
      out.write("                                                                ");
 } else if (stok < 10 && stok >= 1) { 
      out.write("\n");
      out.write("                                                                <span class=\"aa-badge aa-hot\" href=\"#\">Hampir Habis!</span>\n");
      out.write("                                                                ");
 } else{ 
      out.write("\n");
      out.write("                                                                <span class=\"aa-badge aa-sold-out\" href=\"#\">Habis!</span>\n");
      out.write("                                                                ");
 } 
      out.write("\n");
      out.write("                                                                </li>\n");
      out.write("\n");
      out.write("                                                                ");
 } 
      out.write("\n");
      out.write("                                                                ");

                                                                        rs.close();
                                                                        statement.close();
                                                                        conn.close();
                                                                    }
                                                                    catch (SQLException ex

                                                                    
                                                                        ) {
                                                                        out.print("Gagal Koneksi");
                                                                    }
                                                                    catch (Exception ex

                                                                    
                                                                        ) {
                                                                        out.print(ex.getMessage());
                                                                    }
                                                                
      out.write("\n");
      out.write("                                                                </ul>\n");
      out.write("                                                                <center><a class=\"aa-browse-btn\" href=\"product.jsp\">Lihat Selengkapnya <span class=\"fa fa-long-arrow-right\"></span></a></center>\n");
      out.write("\n");
      out.write("                                                                </div>\n");
      out.write("\n");
      out.write("                                                                </section>\n");
      out.write("                                                                <!-- banner section -->\n");
      out.write("                                                                <!-- <section id=\"aa-banner\">\n");
      out.write("                                                                     <div class=\"container\">\n");
      out.write("                                                                         <div class=\"row\">\n");
      out.write("                                                                             <div class=\"col-md-12\">        \n");
      out.write("                                                                                 <div class=\"row\">\n");
      out.write("                                                                                     <div class=\"aa-banner-area\">\n");
      out.write("                                                                                         <a href=\"#\"><img src=\"img/fashion-banner.jpg\" alt=\"fashion banner img\"></a>\n");
      out.write("                                                                                     </div>\n");
      out.write("                                                                                 </div>\n");
      out.write("                                                                             </div>\n");
      out.write("                                                                         </div>\n");
      out.write("                                                                     </div>\n");
      out.write("                                                                 </section>\n");
      out.write("                                                                <!-- popular section -->\n");
      out.write("                                                                <section id=\"aa-popular-category\">\n");
      out.write("                                                                    <div class=\"container\">\n");
      out.write("                                                                        <div class=\"row\">\n");
      out.write("                                                                            <div class=\"col-md-12\">\n");
      out.write("                                                                                <div class=\"row\">\n");
      out.write("                                                                                    <div class=\"aa-popular-category-area\">\n");
      out.write("                                                                                        <!-- start prduct navigation -->\n");
      out.write("\n");
      out.write("                                                                                        <!-- <li class=\"active\"><a href=\"#popular\" data-toggle=\"tab\">Popular</a></li>\n");
      out.write("                                                                                         <li><a href=\"#featured\" data-toggle=\"tab\">Featured</a></li> -->\n");
      out.write("                                                                                        <ul class=\"nav nav-tabs aa-products-tab\">\n");
      out.write("                                                                                            <li class=\"active\"><a href=\"#sayur\" data-toggle=\"tab\">Buahan</a></li>\n");
      out.write("\n");
      out.write("                                                                                        </ul>\n");
      out.write("                                                                                        <!-- Tab panes -->\n");
      out.write("                                                                                        <div class=\"tab-content\">\n");
      out.write("                                                                                            <!-- Start men popular category -->\n");
      out.write("                                                                                            <!-- start latest product category\n");
      out.write("                                                                                            Example non active\n");
      out.write("                                                                                            -->\n");
      out.write("                                                                                            <!-- <div class=\"tab-pane fade\" id=\"latest\"> -->\n");
      out.write("                                                                                            <div class=\"tab-pane fade in active\" id=\"latest\">\n");
      out.write("                                                                                                <ul class=\"aa-product-catg\">\n");
      out.write("                                                                                                    <!-- start single product item -->\n");
      out.write("                                                                                                    ");
 try {
                                                                                                            String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                                                                            Connection conn = null;
                                                                                                            Statement statement = null;
                                                                                                            ResultSet rs = null;
                                                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                                                            conn = DriverManager.getConnection(hosts, "root", "");
                                                                                                            statement = conn.createStatement();
                                                                                                            String data = "Select * from produk where jenis = 'BUAHAN' order by nama asc limit 8";
                                                                                                            rs = statement.executeQuery(data);
                                                                                                    
      out.write("\n");
      out.write("                                                                                                    ");
while (rs.next()) {
      out.write("\n");
      out.write("                                                                                                    <li>\n");
      out.write("                                                                                                        <figure>\n");
      out.write("                                                                                                            <a class=\"aa-product-img\" href=\"#\"><img src=\"img/buahan/anggur.jpg\" alt=\"polo shirt img\" width=\"250px\" height=\"300px\"></a>\n");
      out.write("                                                                                                            <a class=\"aa-add-card-btn\"href=\"#\"><span class=\"fa fa-shopping-cart\"></span>Masuk Keranjang</a>\n");
      out.write("                                                                                                            <figcaption>\n");
      out.write("                                                                                                                <h4 class=\"aa-product-title\"><a href=\"#\">Anggur</a></h4>\n");
      out.write("                                                                                                                <span class=\"aa-product-price\">Rp 30.000 /500GRAM</span><span class=\"aa-product-price\">\n");
      out.write("                                                                                                                    <!--Promo-->\n");
      out.write("                                                                                                                    <!--<del>$65.50</del></span>-->\n");
      out.write("                                                                                                            </figcaption>\n");
      out.write("                                                                                                        </figure>                        \n");
      out.write("                                                                                                        <div class=\"aa-product-hvr-content\">\n");
      out.write("                                                                                                            <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Tambah Ke Favourite\"><span class=\"fa fa-heart-o\"></span></a>\n");
      out.write("                                                                                                            <!-- <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Compare\"><span class=\"fa fa-exchange\"></span></a>-->\n");
      out.write("                                                                                                            <a href=\"#\" data-toggle2=\"tooltip\" data-placement=\"top\" title=\"Lihat Singkat\" data-toggle=\"modal\" data-target=\"#quick-view-modal\"><span class=\"fa fa-search\"></span></a>                          \n");
      out.write("                                                                                                        </div>\n");
      out.write("                                                                                                        <!-- product badge -->\n");
      out.write("                                                                                                        <span class=\"aa-badge aa-sale\" href=\"#\">Jual</span>\n");
      out.write("                                                                                                    </li>\n");
      out.write("                                                                                                    ");
 } 
      out.write("\n");
      out.write("                                                                                                    ");

                                                                                                            rs.close();
                                                                                                            statement.close();
                                                                                                            conn.close();
                                                                                                        }
                                                                                                        catch (SQLException ex

                                                                                                        
                                                                                                            ) {
                                                                                                            out.print("Gagal Koneksi");
                                                                                                        }
                                                                                                        catch (Exception ex

                                                                                                        
                                                                                                            ) {
                                                                                                            out.print(ex.getMessage());
                                                                                                        }
                                                                                                    
      out.write("\n");
      out.write("                                                                                                    <!-- start single product item -->\n");
      out.write("\n");
      out.write("                                                                                                    <!-- start single product item -->\n");
      out.write("\n");
      out.write("                                                                                                </ul>\n");
      out.write("                                                                                                <a class=\"aa-browse-btn\" href=\"product.jsp\">Lihat Selengkapnya <span class=\"fa fa-long-arrow-right\"></span></a>\n");
      out.write("                                                                                            </div>\n");
      out.write("                                                                                            <!-- / latest product category -->              \n");
      out.write("                                                                                        </div>\n");
      out.write("                                                                                    </div>\n");
      out.write("                                                                                </div> \n");
      out.write("                                                                            </div>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                </section>\n");
      out.write("                                                                <!-- / popular section -->\n");
      out.write("\n");
      out.write("                                                                <!-- jQuery library -->\n");
      out.write("                                                                <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("                                                                <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("                                                                <script src=\"js/bootstrap.js\"></script>  \n");
      out.write("                                                                <!-- SmartMenus jQuery plugin -->\n");
      out.write("                                                                <script type=\"text/javascript\" src=\"js/jquery.smartmenus.js\"></script>\n");
      out.write("                                                                <!-- SmartMenus jQuery Bootstrap Addon -->\n");
      out.write("                                                                <script type=\"text/javascript\" src=\"js/jquery.smartmenus.bootstrap.js\"></script>  \n");
      out.write("                                                                <!-- To Slider JS -->\n");
      out.write("                                                                <script src=\"js/sequence.js\"></script>\n");
      out.write("                                                                <script src=\"js/sequence-theme.modern-slide-in.js\"></script>  \n");
      out.write("                                                                <!-- Product view slider -->\n");
      out.write("                                                                <script type=\"text/javascript\" src=\"js/jquery.simpleGallery.js\"></script>\n");
      out.write("                                                                <script type=\"text/javascript\" src=\"js/jquery.simpleLens.js\"></script>\n");
      out.write("                                                                <!-- slick slider -->\n");
      out.write("                                                                <script type=\"text/javascript\" src=\"js/slick.js\"></script>\n");
      out.write("                                                                <!-- Price picker slider -->\n");
      out.write("                                                                <script type=\"text/javascript\" src=\"js/nouislider.js\"></script>\n");
      out.write("                                                                <!-- Custom js -->\n");
      out.write("                                                                <script src=\"js/custom.js\"></script> ");
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
