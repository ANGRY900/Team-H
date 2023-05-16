<%-- 
    Document   : schedule
    Created on : Mar 7, 2023, 10:42:31 AM
    Author     : sapta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="adminmenu.jsp"></jsp:include>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Schedule</title>
        </head>
        <body>
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-sm-4 col-3">
                            <h4 class="page-title">Schedule</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-border table-striped custom-table mb-0">
                                    <thead>
                                        <tr>
                                            <th>Doctor Id</th>
                                            <th>First Name</th>
                                            <th>Department</th>
                                            <th>Available Days</th>
                                            <!--                                            <th>Status</th>-->
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        <c:forEach items='${DoctorList}' var="doctor">
                                            <td>${doctor.doctorId}</td>
                                            <td>${doctor.firstName}</td>
                                            <td>${doctor.speciality}</td>
                                            <td>${doctor.schedule}</td>
                                            <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="EditDoctorSchedule?doctortId=${doctor.doctorId}"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_schedule"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </c:forEach>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
