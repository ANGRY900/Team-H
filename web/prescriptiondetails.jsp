<%-- 
    Document   : prescriptiondetails
    Created on : 14-Mar-2023, 11:43:59 am
    Author     : AYUSH DUTTA
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/product.css" rel="stylesheet">

        <title>Patient</title>
    </head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <!<!-- I want to check my session before showing any content to the user -->




    <%--<jsp:include page="doctormenu.jsp"></jsp:include>--%>

    <div id="example">
        <script>
            init({
                title: 'Large data',
                desc: 'Use `virtualScroll` to enable the virtual scroll to play with large data sets (10000 rows).',
                links: ['bootstrap-table.min.css'],
                scripts: ['bootstrap-table.min.js']
            })
        </script>





        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Patients</h4>
                    </div>
                    <!--                        <div class="col-sm-8 col-9 text-right m-b-20">
                                                <a href="add-patient.html" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Patient</a>
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
                                    <%--<c:set var="empList" value="${requestScope.EmpList}" />--%>
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

    </div>

</html>
