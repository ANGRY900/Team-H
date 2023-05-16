
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.exavalu.models.Doctor"%>
<%@page import="com.exavalu.models.Patient"%>
<jsp:include page="adminmenu.jsp"></jsp:include>
    <html lang="en">


        <!-- doctors23:12-->


        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Doctors</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="add-doctor.jsp" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Doctor</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-border table-striped custom-table datatable mb-0">
                                <thead>
                                <c:choose>
                                    <c:when test = "${requestScope.noData != null}">
                                        <tr>
                                            <c:out value="${requestScope.noData}"> 

                                            </c:out>
                                        </tr>
                                    </c:when>
                                </c:choose>
                                <tr>
                                    <th>Doctor Id</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Phone Number</th>
                                    <th>Doctor Email</th>
                                    <th>Specialty</th>
                                    <th>Experience</th>
                                    <th>Schedule</th>
                                    <th>Fees</th>
                                    <th>Status</th>
                                    <!--                                <th>Status</th>-->


                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items='${DoctorList}' var="doctor">
                                    <tr>
                                        <td>${doctor.doctorId}</td>
                                        <td>${doctor.firstName}</td>
                                        <td>${doctor.lastName}</td>
                                        <td>${doctor.phoneNumber}</td>
                                        <td>${doctor.email}</td>
                                        <td>${doctor.speciality}</td>
                                        <td>${doctor.experience}</td>
                                        <td>${doctor.schedule}</td>
                                        <td>${doctor.fees}</td>
                                        <td>${doctor.status}</td>

                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- doctors23:17-->
</html>