
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
                        <h4 class="page-title">Requirements</h4>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="addRequirement.jsp" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-plus"></i> Add Requirement</a>
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
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- doctors23:17-->
</html>