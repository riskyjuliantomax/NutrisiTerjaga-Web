<%-- 
    Document   : mail_sidebar
    Created on : Dec 2, 2020, 9:05:11 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Dashio - Bootstrap Admin Template</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="lib/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" />
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
        <section id="main-content">
            <section class="wrapper">
                <!-- page start-->
                <div class="row mt">
                    <div class="col-sm-3">
                        <section class="panel">
                            <div class="panel-body">
                                <a href="mail_membuat.jsp" class="btn btn-compose">
                                    <i class="fa fa-pencil"></i> Buat Mail
                                </a>
                                <ul class="nav nav-pills nav-stacked mail-nav">
                                    <li id="mailmasuk"><a href="mail.jsp"> <i class="fa fa-inbox"></i>Mail Masuk <span
                                                class="label label-theme pull-right inbox-notification">3</span></a></li>
                                                <li id="mailkirim"><a href="mail_proses.jsp"> <i class="fa fa-envelope-o"></i>Status Mail</a></li>
                                </ul>
                            </div>
                        </section>
                    </div>
 
