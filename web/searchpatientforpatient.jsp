<%--  
    Document   : landingPage
    Created on : 22-Dec-2022, 12:00:33 PM
    Author     : Avijit Chattopadhyay
--%>
<%@page import="com.exavalu.models.Doctor"%>
<%@page import="com.exavalu.models.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <link href="css/header.css" rel="stylesheet">-->
        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/reset-min.css">
        <link rel="stylesheet" href="css/algolia-min.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/docs.min.css">
        <link rel="stylesheet" href="css/index.css">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta name="theme-color" content="#712cf9">

        <!-- Custom styles for this template -->
        <link href="css/header.css" rel="stylesheet">

        <title>Employee Management</title>
    </head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <!<!-- I want to check my session before showing any content to the user -->




    <%--<jsp:include page="menu.jsp"></jsp:include>--%>

    <div id="example">
        <script>
            init({
                title: 'Large data',
                desc: 'Use `virtualScroll` to enable the virtual scroll to play with large data sets (10000 rows).',
                links: ['bootstrap-table.min.css'],
                scripts: ['bootstrap-table.min.js']
            })
        </script>
        <!-- search-->
        <form class="form-inline"action="SearchPatientForPatient" method="get">
            <div class="container" >
                <div class="row">
                    <div >
                        <input class="form-control" type="text" placeholder="Enter Patient Email" name="patientEmail">
                   

                   
                        <button type="submit" class="form-control btn btn-primary mb-2">Search</button>
                     </div>
                    <br>
                    <br>
                    <br>

                    </form>            
                    <!--search end-->


                    <div class="bootstrap-table bootstrap5">
                        <div class="fixed-table-toolbar"><div class="bs-bars float-left">

                            </div><div class="columns columns-right btn-group float-right"><div class="keep-open btn-group" title="Columns">
                                    <div class="dropdown-menu dropdown-menu-right" style=""><label class="dropdown-item dropdown-item-marker"><input type="checkbox" data-field="id" value="0" checked="checked"> <span>ID</span></label><label class="dropdown-item dropdown-item-marker"><input type="checkbox" data-field="name" value="1" checked="checked"> <span>Item Name</span></label><label class="dropdown-item dropdown-item-marker"><input type="checkbox" data-field="price" value="2" checked="checked"> <span>Item Price</span></label></div></div></div></div>

                        <div class="fixed-table-container fixed-height" style="height: 542px; padding-bottom: 50.5px;">

                            <div class="fixed-table-body">
                                <table id="table" data-height="400" data-virtual-scroll="true" class="table table-bordered table-hover" style="margin-top: -9.5px;">
                                    <thead>
                                        <c:choose>
                                            <c:when test = "${requestScope.noData != null}">
                                                <tr>
                                                    <td colspan="5">
                                                        <h2 style="border:2px solid rgb(255, 99, 71); background-color:rgba(255, 99, 71, 0.5); font-size:15px;">
                                                            <c:out value="${requestScope.noData}"> </c:out>
                                                            </h2>
                                                        </td>
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
                                           


                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%--<c:set var="empList" value="${requestScope.EmpList}" />--%>
                                        <c:forEach items='${PatientList1}' var="patient">
                                            <tr>
             <!--                                    <td>${patient.patientId}</td>-->
                                                <td>${patient.patientName}</td>
                                                <td>${patient.age}</td>
                                                <td>${patient.gender}</td>
                                                <td>${patient.phoneNumber}</td>
                                                <td>${patient.address}</td>
                                                <td>${patient.patientReportId}</td>
                                                <td>${patient.patientEmail}</td>


                                                
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                                <div class="fixed-table-footer" style="display: none;"></div>
                            </div>
                            <div class="fixed-table-pagination" style="display: none;"></div>
                        </div>
                        <div class="clearfix"></div>

                        <script>
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
                        </script>
                    </div>
                </div>

                </html>
