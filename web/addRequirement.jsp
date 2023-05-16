<!DOCTYPE html>
<html lang="en">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="adminmenu.jsp"></jsp:include>

        <!-- add-doctor24:06-->

        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Add Requirements</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <form action="AddRequirement" method="Post">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Blood </label>
                                        <select name="bloodType" class="input100">
                                            <option value="0" disabled>Blood Group</option>
                                            <option value="A+" ${requirement.getBloodType() == "A+" ? "selected" : ""}>A+</option>
                                        <option value="A-" ${requirement.getBloodType() == "A-" ? "selected" : ""}>A-</option>
                                        <option value="B+" ${requirement.getBloodType() == "B+" ? "selected" : ""}>B+</option>
                                        <option value="B-" ${requirement.getBloodType() == "B-" ? "selected" : ""}>B-</option>
                                        <option value="AB+" ${requirement.getBloodType() == "AB+" ? "selected" : ""}>AB+</option>
                                        <option value="AB-" ${requirement.getBloodType() == "AB-" ? "selected" : ""}>AB-</option>
                                        <option value="O+" ${requirement.getBloodType() == "O+" ? "selected" : ""}>O+</option>
                                        <option value="O-" ${requirement.getBloodType() == "O-" ? "selected" : ""}>O-</option>
                                    </select>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Urgency</label>
                                        <input type="text" class="input100" name="urgency" value="${requirement.getUrgency()}" required="required">
                                        <span class="focus-input100"></span>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Contact No</label>
                                        <input type="text" class="input100" name="contactNo" value="${requirement.getContactNo()}" maxlength="10" required="required">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Issue Date <span class="text-danger">*</span></label>
                                        <input type="date" class="input100" name="requestissueDate" value="${requirement.getRequestissueDate()}" required pattern="\d{2}/\d{2}/\d{4}">
                                    </div>
                                </div>

                                <div class="m-t-20 text-center">
                                    <button class="btn btn-primary submit-btn">ADD Requirement</button>
                                </div>
                            </div>
                    </form>

                </div>
            </div>
        </div>


        <!-- add-doctor24:06-->
</html>
