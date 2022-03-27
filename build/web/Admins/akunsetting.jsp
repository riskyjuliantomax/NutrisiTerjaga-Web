<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Admin | Akun Setting</title>

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
      <section class="wrapper site-min-height">
       <!-- <div class="row mt">
          <div class="col-lg-12">
            <div class="row content-panel">
              <div class="col-md-4 profile-text mt mb centered">
                <div class="right-divider hidden-sm hidden-xs">
                 
                </div>
              </div>
              <!-- /col-md-4 -->
              <!-- /col-md-4 -->
             <!-- <div class="col-md-4 centered">
                <div class="profile-pic">
                    <p><img src="img/user.png" class="img-circle"></p>
              </div>
              <!-- /col-md-4 -->
           <!-- </div>
            <!-- /row -->
          <!--</div>
          <!-- /col-lg-12 -->
          <div class="col-lg-12 mt">
            <div class="row content-panel">
              <div class="panel-heading">
                <ul class="nav nav-tabs nav-justified">
                  <li class="active">
                    <a data-toggle="tab" href="#edit">Akun Setting</a>
                  </li>
                </ul>
              </div>
              <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="overview" class="tab-pane active">
                    <div class="row">
                      
                  <!-- /tab-pane -->
                  <div id="edit" class="tab-pane">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Informasi Pribadi</h4>
                        <form role="form" class="form-horizontal">
                          <!--<div class="form-group">
                            <label class="col-lg-2 control-label"> Avatar</label>
                            <div class="col-lg-6">
                              <input type="file" id="exampleInputFile" class="file-pos">
                            </div>
                          </div>-->
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Nama Depan</label>
                            <div class="col-lg-4">
                                <input type="text" placeholder=" " id="c-name" class="form-control" value="Budi">
                            </div>
                             <label class="col-lg-2 control-label">Nama Belakang</label>
                             <div class="col-lg-4">
                                 <input type="text" placeholder=" " id="c-name" class="form-control" value="Yan">
                             </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-6">
                                <input type="text" placeholder=" " id="lives-in" class="form-control" value="budi@gmail.com">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Provinsi</label>
                            <div class="col-lg-6">
                                <input type="text" placeholder=" " id="country" class="form-control" value="Riau">
                            </div>
                          </div>
                           <div class="form-group">
                            <label class="col-lg-2 control-label">Kabupaten</label>
                            <div class="col-lg-4">
                                <input type="text" placeholder=" " id="country" class="form-control" value="Bengkalis">
                            </div>
                            <label class="col-lg-2 control-label">Kecamatan</label>
                            <div class="col-lg-4">
                                <input type="text" placeholder=" " id="country" class="form-control" value="Bukit Batu">
                            </div>
                          </div>
                           <div class="form-group">
                            <label class="col-lg-2 control-label">No Handphone</label>
                            <div class="col-lg-6">
                                <input type="text" placeholder=" " id="country" class="form-control" value="+6281223450687">
                            </div>
                          </div>
                          <!--<div class="form-group">
                            <label class="col-lg-2 control-label">Description</label>
                            <div class="col-lg-10">
                              <textarea rows="10" cols="30" class="form-control" id="" name=""></textarea>
                            </div>
                          </div>-->
                           <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-theme" type="submit">Save</button>
                              <a href="dashboard.jsp" class="btn btn-theme04" type="button">Cancel</a>
                            </div>
                          </div>
                        </form>
                      </div>
                    
                      <!-- /col-lg-8 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                </div>
                <!-- /tab-content -->
              </div>
              <!-- /panel-body -->
            </div>
            <!-- /col-lg-12 -->
          </div>
          <!-- /row -->
        </div>
        <!-- /container -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
   
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
  <!-- MAP SCRIPT - ALL CONFIGURATION IS PLACED HERE - VIEW OUR DOCUMENTATION FOR FURTHER INFORMATION -->
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASm3CwaK9qtcZEWYa-iQwHaGi3gcosAJc&sensor=false"></script>
  <script>
    $('.contact-map').click(function() {

      //google map in tab click initialize
      function initialize() {
        var myLatlng = new google.maps.LatLng(40.6700, -73.9400);
        var mapOptions = {
          zoom: 11,
          scrollwheel: false,
          center: myLatlng,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(document.getElementById('map'), mapOptions);
        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Dashio Admin Theme!'
        });
      }
      google.maps.event.addDomListener(window, 'click', initialize);
    });

    document.getElementById("akun_setting").classList.add('active');

  </script>
</body>

</html>
