<%-- 
    Document   : landingPage
    Created on : 22-Dec-2022, 12:00:33 PM
    Author     : Avijit Chattopadhyay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <link href="css/header.css" rel="stylesheet">-->
        <!--        <link rel="stylesheet" href="css/all.min.css">
                <link rel="stylesheet" href="css/reset-min.css">
                <link rel="stylesheet" href="css/algolia-min.css">
                <link rel="stylesheet" href="css/header.css">
                <link rel="stylesheet" href="css/docs.min.css">
                <link rel="stylesheet" href="css/index.css">-->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/product.css" rel="stylesheet">

        <title>Patient</title>
        <style>
            #example_wrapper{
                width: 95%;
                display: block;
                margin: auto;
            }
        </style>
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

        <!--            <script>
        
        
                        function fetchEmployee(employeeId) {
                            $.ajax({
                                url: 'ShowAllEmployees',
                                method: 'GET',
                                data: {id: employeeId},
                                dataType: 'json',
                                success: function (data) {
                                    // Do something with the retrieved employee data
                                    console.log(data);
                                },
                                error: function (jqXHR, textStatus, errorThrown) {
                                    // Handle any errors that occur during the AJAX request
                                    console.error(textStatus, errorThrown);
                                }
                            });
                        }
        
                    </script>-->



        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">

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
                                        <!--                                <th>Patient Id</th>-->
                                        <th>Patient Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                        <th>Phone Number</th>
                                        <th>Address</th>
                                        <th>Patient Report Id</th>
                                        <th>Patient Email</th>
                                        <th>Status</th>
                                        <th>Edit Status</th>
                                        <th>Prescribe</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <%--<c:set var="empList" value="${requestScope.EmpList}" />--%>
                                    <c:forEach items='${PatientList}' var="patient">
                                        <tr>
       <!--                                    <td>${patient.patientId}</td>-->
                                            <td>${patient.patientName}</td>
                                            <td>${patient.age}</td>
                                            <td>${patient.gender}</td>
                                            <td>${patient.phoneNumber}</td>
                                            <td>${patient.address}</td>
                                            <td>${patient.patientReportId}</td>
                                            <td>${patient.patientEmail}</td>
                                            <td>${patient.status}</td>


                                            <td><a class="btn btn-warning btn-sm active" role="button" aria-pressed="true" href="EditPatientStatus?patientId=${patient.patientId}">Edit Status</a></td>

                                            <!--<td><a href="prescription.jsp">Prescribe</a></td>-->

                                            <td><c:if test="${patient.status.equalsIgnoreCase('accepted')}">
                                                    <a class="btn btn-primary btn-sm active" role="button" aria-pressed="true" href="newprescription.jsp?patientId=${patient.patientId}">Prescribe</a>
                                                </c:if></td>

                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--            <div class="form-floating">
                        <select name="stateCode" class="form-select" id="stateCode" onchange="fetchContent('stateCode', 'distCode')" required name="stateCode">
                            <option value="">Select State</option>
        
                        </select>
                    </div>-->

        <!--            <script>
                        var $table = $('#table')
                        var total = 0
        
                        function getData(number, isAppend) {
                            if (!isAppend) {
                                total = 0
                            }
                            var data = []
                            for (var i = total; i < total + number; i++) {
                                data.push({
                                    'id': i,
                                    'name': 'Item ' + i,
                                    'price': '$' + i
                                })
                            }
                            if (isAppend) {
                                total += number
                            } else {
                                total = number
                            }
                            $('#total').text(total)
                            return data
                        }
        
                        function mounted() {
                            $table.bootstrapTable({data: getData(20)})
        
                            $('#load').click(function () {
                                $table.bootstrapTable('load', getData(10000))
                            })
        
                            $('#append').click(function () {
                                $table.bootstrapTable('append', getData(10000, true))
                            })
                        }
                    </script>-->
    </div>

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>


    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>

</html>
