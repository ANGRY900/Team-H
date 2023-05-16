<html lang="en">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

    <!-- patients23:17-->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <title>Exavalu Health Care</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!--[if lt IE 9]>
                    <script src="assets/js/html5shiv.min.js"></script>
                    <script src="assets/js/respond.min.js"></script>
            <![endif]-->
    </head>

    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="AdminHome.jsp" class="logo">
                        <img src="assets/img/logo.png" width="35" height="35" alt=""> <span>Exavalu Health Care</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
             
<!--                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
                                <span class="status online"></span></span>
                            <span>Admin</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="profile.html">My Profile</a>
                            <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                            <a class="dropdown-item" href="settings.html">Settings</a>
                            <a class="dropdown-item" href="landingPage.jsp">Logout</a>
                        </div>
                    </li>-->
<!--                </ul>-->
                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="profile.html">My Profile</a>
                        <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                        <a class="dropdown-item" href="settings.html">Settings</a>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">Main</li>
                            <li>
                                <a href="AdminHome.jsp"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="doctors.jsp"><i class="fa fa-user-md"></i> <span>Doctors</span></a>
                            </li>
                            <li>
                                <a href="searchdoctor.jsp"><i class="fa fa-user-md"></i> <span>Search Doctors</span></a>
                            </li>
                            <li class>
                                <a href="patients.jsp"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
                            </li>
                            <li class>
                                <a href="Prescriptions.jsp"><i class="fa fa-wheelchair"></i> <span>Prescribed Patients</span></a>
                            </li>
                            <li>
                                <a href="searchpatient.jsp"><i class="fa fa-wheelchair"></i> <span>Search Patients</span></a>
                            </li>
                            <li>
                                <a href="appointments.jsp"><i class="fa fa-calendar"></i> <span>Appointments</span></a>
                            </li>
                            <li class="submenu">
                                <a href="#"><i class="fa fa-user"></i> <span> Donors & Blood Requirement </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="donors.jsp">Donor List</a></li>
                                    <li><a href="Requirements.jsp">Blood Requirement</a></li> 
                                </ul>
                            </li>
                            <li>
                                <a href="schedule.jsp"><i class="fa fa-calendar-check-o"></i> <span>Doctor Schedule</span></a>
                            </li>
                            <li class="menu-title">Extras</li>
                            <li class="submenu">
                                <a href="#"><i class="fa fa-columns"></i> <span>Pages</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="doctorlogin.jsp"> Login </a></li>
                                    <li><a href="doctorsignup.jsp"> Register </a></li>
                                    <li><a href="landingPage.jsp"> Logout </a></li>
                                </ul>
                            </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/select2.min.js"></script>
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>