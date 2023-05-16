
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <!--        <link rel="stylesheet" href="css/all.min.css">-->
        <!--        <link rel="stylesheet" href="css/reset-min.css">-->
        <!--        <link rel="stylesheet" href="css/algolia-min.css">
                <link rel="stylesheet" href="css/header.css">
                <link rel="stylesheet" href="css/docs.min.css">
                <link rel="stylesheet" href="css/index.css">-->
        <title>Blood Bank Management</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css"/>

        <style>
            #example_wrapper{
                width: 75%;
                display: block;
                margin: auto;
            }
            h2{
                text-align: center;
            }
            .msg_style{
                width: 25%;
                text-align: center;
                margin: auto;
            }
        </style>    
    </head>

    <body>

        <jsp:include page="menu.jsp"></jsp:include>
            <h2> :Donor List:</h2>
        <c:set var="msg" value="${SuccessMsg2}"/>
        <c:if test="${msg!=null}">
            <div class="alert alert-success msg_style" role="alert">
                <c:out value="${msg}"/>
            </div>
        </c:if>
        <table id="example" class="table table-striped border" id="table">
            <thead>
                <tr>
                    <th scope = "col">
                        Donor Name
                    </th>
                    <th scope = "col">
                        Age
                    </th>
                    <th scope = "col">
                        Gender
                    </th>
                    <th scope = "col">
                        Blood Group
                    </th>
                    <th scope = "col">
                        Health Problem
                    </th>
                    <th scope = "col">
                        Address
                    </th>
                    <th scope = "col">
                        Email
                    </th>
                    <th scope = "col">
                        Contacts
                    </th>

                    <th>
                        Action
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${dnrList}" var="dnr">
                    <tr>
                        <td>
                            ${dnr.getDonorName()}
                        </td>
                        <td>
                            ${dnr.getDonorAge()}
                        </td>
                        <td>
                            ${ dnr.getDonorgender()}
                        </td>
                        <td>
                            ${dnr.getDonorBloodgroup()}
                        </td>
                        <td>
                            ${dnr.getDonorAnyHealthproblem()}
                        </td>
                        <td>
                            ${dnr.getDonorAddress()}
                        </td>
                        <td>
                            ${dnr.getEmailAddress()}
                        </td>
                        <td>
                            ${dnr.getContactNo()}
                        </td>
                        <td> 
                            <a href=certificate.jsp?donorId=${dnr.donorId}>
                                Certificate
                            </a>  

                    </tr>
                </c:forEach>
            </tbody>

        </table>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>

</html>
