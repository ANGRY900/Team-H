<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="adminmenu.jsp"></jsp:include>
<html>

            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-sm-4 col-3">
                            <h4 class="page-title">Patients</h4>
                        </div>
                        <div class="col-sm-8 col-9 text-right m-b-20">
                            <a href="add-patient.html" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Patient</a>
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
                                            <th>Patient ID</th>
                                            <th>Patient Name</th>
                                            <th>Age</th>
                                            <th>Gender</th>
                                            <th>Phone Number</th>
                                            <th>Address</th>
                                            <th>Patient Report Id</th>
                                            <th>Patient Email</th>
                                            <th>Status</th>
                                            <th>Health Problem</th>
                                            
                                            <th>Edit Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items='${PatientList}' var="patient">
                                            <tr>
                                                <td>${patient.patientId}</td>
                                                <td>${patient.patientName}</td>
                                                <td>${patient.age}</td>
                                                <td>${patient.gender}</td>
                                                <td>${patient.phoneNumber}</td>
                                                <td>${patient.address}</td>
                                                <td>${patient.patientReportId}</td>
                                                <td>${patient.patientEmail}</td>
                                                <td>${patient.status}</td>
                                                <td>${patient.healthproblem}</td>
                                                


                                                <td><button class="btn btn-primary btn-primary-one float-right"><a href="EditPatientStatus?patientId=${patient.patientId}">Edit Status</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


    <!-- patients23:19-->
</html>