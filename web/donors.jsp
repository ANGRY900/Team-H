<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.exavalu.models.Admin"%>
<%@page import="com.exavalu.models.Patient"%>
<jsp:include page="adminmenu.jsp"></jsp:include>
    <!DOCTYPE html>
    <html lang="en">


        <!-- doctors23:12-->


        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <h4 class="page-title">Donors</h4>
                    </div>
<!--                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="add-doctor.jsp" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Donor</a>
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
<!--                                    <th>Donor Id</th>-->
                                    <th>Donor Name</th>
                                    <th>Age</th>
                                    <th>Gender</th>
                                    <th>Blood Group</th>
                                    <th>Health Problem</th>
                                    <th>Address</th>
                                    <th>Email</th>
                                    <th>Contact No</th>
                                    <th>Certificate</th>
                                    
                                    <!--                                <th>Status</th>-->


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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- doctors23:17-->
</html>