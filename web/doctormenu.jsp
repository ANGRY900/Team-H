<%@page import="com.exavalu.models.Doctor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Doctor Management</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta name="theme-color" content="#712cf9">

        <!-- Custom styles for this template -->
        <link href="css/header.css" rel="stylesheet">
        <!--<link href="css/carousel.css" rel="stylesheet">-->
    </head>

    <header class="p-3 text-bg-transparent border-3 border-info" style="width: 100%">
        <c:set var="User" value="${Loggedin}"/>


        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mx-auto" role="img" viewBox="0 0 24 24"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
                </a>
                <c:if test="${User==null}">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="login.jsp" class="nav-link px-2 text-white">ABOUT US</a></li>
                        <li><a href="login.jsp" class="nav-link px-2 text-white" >CONTACT US</a></li>
                        <li><a href="login.jsp" class="nav-link px-2 text-white">HELP</a></li>
                    </ul>
                </c:if>
                <c:if test="${User.roleId == '1'}">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <!--<li><a onclick="fetchContent('doctorhome.jsp','targetId')" class="nav-link px-2 text-bg-dark">Home</a></li>-->
                        <li><a onclick="fetchContent('patientdetails.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">View All Patients</a></li>
                        <li><a onclick="fetchContent('prescriptiondetails.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">View Prescribed Patients</a></li>
                        <li><a onclick="fetchContent('searchpatient.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">Search Patient</a></li>
                        <li><a onclick="fetchContent('appointmentdetail.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">View All Appointments</a></li>

                    </ul>
                </c:if>
                <c:if test="${User.roleId == '2'}">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <!--<li><a onclick="fetchContent('doctorhome.jsp','targetId')" class="nav-link px-2 text-bg-dark">Home</a></li>-->
                        <li><a onclick="fetchContent('searchpatientforpatient.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">Search My Details </a></li>
                        <li><a onclick="fetchContent('doctordetails.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">View All Doctors</a></li>
                        <!--                    <li><a onclick="fetchContent('appointment.jsp','targetId')" class="nav-link px-2 text-bg-dark">Make an Appointment</a></li>-->
                        <li><a onclick="fetchContent('searchappointment.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">Search Appointment</a></li>
                        <!--<li><a onclick="fetchContent('appointmentdetail.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">View Appointment</a></li>-->
                        <li><a onclick="fetchContent('prescriptiondetails.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">View Prescription</a></li>

                    </ul>
                </c:if>
                <c:if test="${User.roleId == '3'}">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <!--<li><a onclick="fetchContent('doctorhome.jsp','targetId')" class="nav-link px-2 text-bg-dark">Home</a></li>-->
                        <li><a onclick="fetchContent('requirementlist.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">Show Requirements</a></li>
                        <li><a onclick="fetchContent('donorsignup.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">Sign UP</a></li>
                    </ul>
                </c:if>
                <c:if test="${User.roleId == '4'}">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <!--<li><a onclick="fetchContent('doctorhome.jsp','targetId')" class="nav-link px-2 text-bg-dark">Home</a></li>-->
                        <li><a onclick="fetchContent('AdminHome.jsp', 'targetId')" class="nav-link px-2 text-bg-dark">View Admin Page</a></li>
                        <!--                    <li><a onclick="fetchContent('searchpatient.jsp','targetId')" class="nav-link px-2 text-bg-dark">Search Patient</a></li>
                                            <li><a onclick="fetchContent('doctordetails.jsp','targetId')" class="nav-link px-2 text-bg-dark">View All Doctors</a></li>
                                            <li><a onclick="fetchContent('searchdoctor.jsp','targetId')" class="nav-link px-2 text-bg-dark">Search Doctors</a></li>
                                            <li><a onclick="fetchContent('donordetails.jsp','targetId')" class="nav-link px-2 text-bg-dark">View All Donors</a></li>-->


                    </ul>
                </c:if>
                <div class="text-end">
                    <c:if test="${User==null}">

                        <a href="doctorlogin.jsp">
                            <button type="button" class="btn btn-outline-light me-2" >Login</button>
                        </a>
                        <a href="doctorsignup.jsp">
                            <button type="button" class="btn btn-warning">Sign-up</button>
                        </a>
                    </c:if>
                    <c:if test="${User!=null}">


                        <a class="nav-link px-2 text-white" href="#">
                            Welcome:<c:out value="${user.getFirstName()} ${user.getLastName()}"/></a>
                        <a href="Logout">
                            <button type="button" class="btn btn-outline-dark me-2" >Log Out</button>
                        </a>
                    </c:if>


                </div>
            </div>
        </div>
    </header>
    <script src="https://code.jquery.com/jquery-3.6.3.js" 
                        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
                crossorigin="anonymous"></script>
    <script>

                        function fetchContent(selectedId, targetId) {
//            alert(selectedId);
                            $.ajax({
                                url: selectedId,

                                success: function (responseText) {
                                    $("#" + targetId).html(responseText);
                                }
                            });
                        }



    </script>
    <body>
        <div id="targetId"></div>
    </body>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
    <script>
                        $(document).ready(function () {
                            $('#example').DataTable();
                        });
    </script>