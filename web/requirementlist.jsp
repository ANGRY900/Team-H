
<%-- 
    Document   : landingPage
    Created on : 22-Dec-2022, 12:00:33 PM
    Author     : Avijit Chattopadhyay
--%>

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
        <title>Requirement</title>

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
        <body> 
  <marquee>PLEASE CONTACT US ON THE PARTICULAR MENTION CONTACT NUMBER FOR DONATING BLOOD</marquee><!-----------scrolls from left to right-----> 
 
  <marquee direction="right">YOUR ONE STEP CAN SAVE SEVERAL LIFE</marquee> 
</body>
    
            <h2> :Requirement List:</h2>
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
                                    Blood Type
                                </th>
                                <th scope = "col">
                                    Urgency
                                </th>
                               <th scope = "col">
                                    Contact Info
                                </th>
                                 <th scope = "col">
                                    Request Issue date
                                </th>
                           
                   
                </tr>
            </thead>
            <tbody>
               <c:forEach items="${ReqList}" var="req">
                                <tr>
                                    <td>
                                        ${req.getBloodType()}
                                    </td>
                                    <td>
                                        ${req.getUrgency()}
                                    </td>
                                     <td>
                                         ${req.getContactNo()}
                                    </td>
                                     <td>
                                        ${req.getRequestissueDate()}
                                    </td>
                                   
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
