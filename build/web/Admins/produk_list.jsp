<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Admin | Produk List</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">

        <!-- =======================================================
          Template Name: Dashio
          Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
          Author: TemplateMag.com
          License: https://templatemag.com/license/
        ======================================================= -->
    </head>

    <body>
        <section id="container">
            <%@include file="sidebar.jsp" %>
            <!-- **********************************************************************************************************************************************************
                MAIN CONTENT
                *********************************************************************************************************************************************************** -->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">

                    <!-- row -->
                    <div class="row mt">
                        <div class="col-md-12">
                            <div class="content-panel">
                                <table class="table table-striped table-advance table-hover">
                                    <h4><i class="fa fa-angle-right"></i>Table Produk</h4>
                                    <form action="#" class="pull-right mail-src-position">
                                        <div class="input-append">
                                            <input type="text" class="form-control " placeholder="Cari Mail">
                                        </div>
                                    </form>
                                    <hr>
                                    <thead>
                                        <tr>
                                            <th><i class="fa"></i>Nama</th>
                                            <th><i class="fa"></i> Harga</th>
                                            <th><i class="fa"></i> Stok</th>
                                            <th><i class=" fa fa-edit"></i> Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <form action="produk_edit.jsp">
                                            <td>
                                                <a>Kol</a>
                                            </td>
                                            <td>8000 /KG</td>
                                            <td><span class="label label-success label-mini">20</span></td>
                                            <td>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </td>
                                        </tr>
                                        </form>
                                        <tr>
                                            <td>
                                                <a href="basic_table.html#">
                                                    Kankung
                                                </a>
                                            </td>
                                            <td>1500 /Ikat </td>
                                            <td><span class="label label-warning label-mini">5</span></td>
                                            <td>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="basic_table.html#">
                                                    Kacang Panjang
                                                </a>
                                            </td>
                                            <td>10000 /KG </td>
                                            <td><span class="label label-danger label-mini">0</span></td>
                                            <td>
                                                <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </td>
                                        </tr> 
                                        </tbody>
                                </table>
                            </div>
                            <!-- /content-panel -->
                        </div>
                        <!-- /col-md-12 -->
                    </div>
                    <!-- /row -->
                </section>
            </section>
        </section>
        <!-- js placed at the end of the document so the pages load faster -->
        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
        <script src="lib/jquery.scrollTo.min.js"></script>
        <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
        <!--common script for all pages-->
        <script src="lib/common-scripts.js"></script>
        <!--script for this page-->
        <script>
            document.getElementById("list_produk").classList.add('active');
            document.getElementById("produk").classList.add('active');
            
        </script>
    </body>

</html>
