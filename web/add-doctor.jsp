<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="adminmenu.jsp"></jsp:include>

    <!-- add-doctor24:06-->

            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <h4 class="page-title">Add Doctor</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <form action="AddDoctor" method="Post">
                                <div class="row">
                                     <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Doctor Id <span class="text-danger">*</span></label>
                                            <input type="number" class="form-control" id="floatingInput" placeholder="Doctor Id" name="doctorId" required autofocus>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input type="text" class="form-control" id="floatingInput" placeholder="First name" name="firstName" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input type="text" class="form-control" id="floatingInput" placeholder="Last name" name="lastName" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Phone Number <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="floatingInput" placeholder="Phone Number" name="phoneNumber" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Email <span class="text-danger">*</span></label>
                                            <input type="email" class="form-control" id="floatingInput" placeholder="Email Address" name="email" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <<input type="password" class="form-control" id="floatingInput" placeholder="Password" name="password" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label dropzone=>Specialty</label>
                                            <input type="text" class="form-control" id="floatingInput" placeholder="Specialty" name="speciality" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Experience</label>
                                            <div class="cal-icon">
                                                <input type="text" class="form-control" id="floatingInput" placeholder="Experience" name="experience" required >
                                            </div>
                                        </div>
                                    </div>
                                  
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Schedule </label>
                                            <input type="text" class="form-control" id="floatingInput" placeholder="Schedule" name="schedule" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Fees </label>
                                            <input type="text" class="form-control" id="floatingInput" placeholder="Fees" name="fees" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Avatar</label>
                                            <div class="profile-upload">
                                                <div class="upload-img">
                                                    <img alt="" src="assets/img/user.jpg">
                                                </div>
                                                <div class="upload-input">
                                                    <input type="file" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="display-block">Status</label>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" id="doctor_active" value="Available" checked>
                                        <label class="form-check-label" for="doctor_active">
                                            Available
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" id="doctor_inactive" value="Unavailable">
                                        <label class="form-check-label" for="doctor_inactive">
                                            Unavailable
                                        </label>
                                    </div>
                                </div>
                                <div class="m-t-20 text-center">
                                    <button class="btn btn-primary submit-btn">Create Doctor</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                

    <!-- add-doctor24:06-->
</html>
