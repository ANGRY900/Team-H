
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
                        <h4 class="page-title">Prescribed Patients</h4>
                    </div>
                    <!--                    <div class="col-sm-8 col-9 text-right m-b-20">
                                            <a href="add-doctor.jsp" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Doctor</a>
                                        </div>-->
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
                                    <th>Prescription Id</th>
<!--                                    <th>Patient ID</th>-->
                                    <th>Patient Name</th>
                                    <th>Doctor Name</th>
                                    <th>Symptoms</th>
                                    <th>Tests</th>
                                    <th>Advice</th>
                                    <th>Medicine</th>
                                    <th>Dosage</th>
                                    <th>Time</th>
                                    <th>Specialty</th>

                                    <!--                                <th>Status</th>-->


                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items='${PrescriptionList}' var="prescription">
                                    <tr>
                                        <td>${prescription.prescriptionId}</td>
<!--                                        <td>${prescription.patientId}</td>-->
                                        <td>${prescription.patientName}</td>
                                        <td>${prescription.doctorName}</td>
                                        <td>${prescription.symptoms}</td>
                                        <td>${prescription.tests}</td>
                                        <td>${prescription.advice}</td>
                                        <td>${prescription.medicine}</td>
                                        <td>${prescription.dosage}</td>
                                        <td>${prescription.time}</td>
                                        <td>${prescription.speciality}</td>


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