<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Doctor Appointment and Blood Bank Management</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta name="theme-color" content="#712cf9">

        <!-- Custom styles for this template -->
        <link href="css/header.css" rel="stylesheet">


        <!--<link href="css/carousel.css" rel="stylesheet">-->

    </head>
    <header class="p-3 text-bg-dark">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                <div style="padding: 10px">
<!--                    <a href="landingPage.jsp">
                        <img src="https://www.outlookindia.com/outlookmoney/public/uploads/article/gallery/9f5518fc9b70672aaba65aa3af600c32.jpg" width="150" height="100"></img>
                    </a>-->
                </div>
                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                    <c:if test="${User==null}">
                        <li id="menulinks"><a href="#carInsurancePlans" class="nav-link px-2 text-white">About us</a></li>
                        <li id="menulinks"><a href="#buyInsurancePolicy" class="nav-link px-2 text-white">Contact us</a></li>
                        <li id="menulinks"><a href="#aboutUs" class="nav-link px-2 text-white">Help?</a></li>

                    </c:if>

                    <c:if test="${User.roleId == '1'}">
                        <li id="menulinks"><a href="firstnoticeofloss.jsp" class="nav-link px-2 text-white">Doctors' Details</a></li>
                        <li id="menulinks"><a href="firstnoticeofloss.jsp" class="nav-link px-2 text-white">Patients' Details</a></li>
                        <li id="menulinks"><a href="firstnoticeofloss.jsp" class="nav-link px-2 text-white">Donors' Details</a></li>
                        <li id="menulinks"><a href="firstnoticeofloss.jsp" class="nav-link px-2 text-white">Blood Requirement</a></li>
                        <li id="menulinks"><a href="firstnoticeofloss.jsp" class="nav-link px-2 text-white">Accepted donor</a></li>
                       
                    </c:if>

                    <c:if test="${User.roleId == '2'}">
                        <li id="menulinks"><a href="ViewLoggedFNOL" class="nav-link px-2 text-white">Patients' details</a></li>
                        <li id="menulinks"><a href="landingPage.jsp?#aboutUs" class="nav-link px-2 text-white">Checkup list</a></li>
                          <li id="menulinks"><a href="landingPage.jsp?#aboutUs" class="nav-link px-2 text-white">Contact us</a></li>
                        </c:if>
                        <c:if test="${User.roleId == '3'}">
                        <li id="menulinks"><a href="PendingFNOLverification" class="nav-link px-2 text-white">Doctors' details</a></li>
                          <li id="menulinks"><a href="landingPage.jsp?#aboutUs" class="nav-link px-2 text-white">Checkup list</a></li>
                        <li id="menulinks"><a href="landingPage.jsp?#aboutUs" class="nav-link px-2 text-white">contact us</a></li>
                        <!--                        <li><a href="#" class="nav-link px-2 text-white">Claim verification</a></li>
                                                <li><a href="#" class="nav-link px-2 text-white">policy verification(Insurance Master)</a></li>
                                                <li><a href="#" class="nav-link px-2 text-white">DMV verification</a></li>-->
                    </c:if>
 <c:if test="${User.roleId == '4'}">
                        <li id="menulinks"><a href="PendingFNOLverification" class="nav-link px-2 text-white">Show blood requirement</a></li>
                 
                        <li id="menulinks"><a href="landingPage.jsp?#aboutUs" class="nav-link px-2 text-white">contact us</a></li>
                        <!--                        <li><a href="#" class="nav-link px-2 text-white">Claim verification</a></li>
                                                <li><a href="#" class="nav-link px-2 text-white">policy verification(Insurance Master)</a></li>
                                                <li><a href="#" class="nav-link px-2 text-white">DMV verification</a></li>-->
                    </c:if>


                    <c:if test="${User!=null}">
                        <li id="menulinks"><a class="nav-link px-2 text-white text-capitalize text-opacity-75">
                                welcome: ${User.firstName}  ${User.lastName}
                            </a></li>
                        </c:if>
                </ul>


                <c:if test="${User==null}">
                    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                        <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
                    </form>
                </c:if>
                <div class="text-end">
                    <% if (request.getSession().getAttribute("User") == null) {%>

                    <a href="doctorlogin.jsp">
                        <button type="button" class="btn btn-outline-light me-2" >Login</button>
                    </a>
                    <a href="doctorsignup.jsp">
                        <button type="button" class="btn btn-warning">Sign-up</button>
                    </a>
                    <%
                    } else {%>

                    <a href="Logout">
                        <button type="button" class="btn btn-outline-light me-2" >Log Out</button>
                    </a>
                    <%
                        }
                    %>


                </div>
            </div>
        </div>
            </header>