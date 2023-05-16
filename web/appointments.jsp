<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <jsp:include page="adminmenu.jsp"></jsp:include>
        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Appointed Patients</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="add-patient.html" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Patient</a>
                    </div>
                </div>
                <form action="AppointedPatient" method="Get">
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

                                <th>Appointment ID</th>
                                <th>Patient ID</th>
                                <th>Patient Name</th>
                                <th>Patient Age</th>
                                <th>Date</th>
                                <th>Doctor First Name </th>
                                <th>Doctor Last Name</th>   
                                <th>Speciality</th>
                                </thead>
                                <tbody>
                                    <c:forEach items='${AppointmentList1}' var="appointmentList">
                                        <tr>
                                            <td>${appointmentList.appointmentId}</td>
                                            <td>${appointmentList.patientId}</td>
                                            <td>${appointmentList.patientName}</td>
                                            <td>${appointmentList.age}</td>
                                            <td>${appointmentList.date}</td>
                                            <td>${appointmentList.firstName}</td>
                                            <td>${appointmentList.lastName}</td>
                                            <td>${appointmentList.speciality}</td>




                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>


    <!-- patients23:19-->
</html>