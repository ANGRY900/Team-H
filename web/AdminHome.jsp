
<!DOCTYPE html>
<html lang="en">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="adminmenu.jsp"></jsp:include>


        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
                            <span class="dash-widget-bg1"><i class="fa fa-stethoscope" aria-hidden="true"></i></span>
                            <div class="dash-widget-info text-right">
                                <h3>18</h3>
                                <span class="widget-title1">Doctors <i class="fa fa-check" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
                            <span class="dash-widget-bg2"><i class="fa fa-user-o"></i></span>
                            <div class="dash-widget-info text-right">
                                <h3>500</h3>
                                <span class="widget-title2">Patients <i class="fa fa-check" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
                            <span class="dash-widget-bg3"><i class="fa fa-user-md" aria-hidden="true"></i></span>
                            <div class="dash-widget-info text-right">
                                <h3>9</h3>
                                <span class="widget-title3">Accepted <i class="fa fa-check" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
                            <span class="dash-widget-bg4"><i class="fa fa-heartbeat" aria-hidden="true"></i></span>
                            <div class="dash-widget-info text-right">
                                <h3>496</h3>
                                <span class="widget-title4">Pending <i class="fa fa-check" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="chart-title">
                                    <h4>Patient Total</h4>
                                    <span class="float-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 15% Higher than Last Month</span>
                                </div>	
                                <canvas id="linegraph"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="chart-title">
                                    <h4>Patients In</h4>
                                    <div class="float-right">
                                        <ul class="chat-user-total">
                                            <li><i class="fa fa-circle current-users" aria-hidden="true"></i>ICU</li>
                                            <li><i class="fa fa-circle old-users" aria-hidden="true"></i> OPD</li>
                                        </ul>
                                    </div>
                                </div>	
                                <canvas id="bargraph"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-8 col-xl-8">
                    <c:choose>
                        <c:when test = "${requestScope.noData != null}">
                            <tr>
                                <c:out value="${requestScope.noData}"> 

                                </c:out>
                            </tr>
                        </c:when>
                    </c:choose>
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title d-inline-block">Upcoming Appointments</h4> <a href="appointments.jsp" class="btn btn-primary float-right">View all</a>
                        </div>
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table mb-0">
                                    <thead class="d-none">
                                        <tr>
                                            <th>Appointment ID</th>
                                            <th>Patient ID</th>
                                            <th>Patient Name</th>
                                            <th>Patient Age</th>
                                            <th>Date</th>
                                            <th>Doctor First Name </th>
                                            <th>Doctor Last Name</th>   
                                            <th>Specialty</th>
                                            <!--                                            <th>Edit Status</th>-->-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items='${AppointmentList1}' var="appointmentList">
                                            <tr>
                                                <td>${appointmentList.appointmentId}</td>
                                                <td>${appointmentList.patientId}</td>
                                                <td>${appointmentList.patientName}</td>
                                                <td>${appointmentList.date}</td>
                                                <td>${appointmentList.firstName}</td>
                                                <td>${appointmentList.lastName}</td>
                                                <td>${appointmentList.speciality}</td>



                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 col-xl-4">
                    <c:choose>
                        <c:when test = "${requestScope.noData != null}">
                            <tr>
                                <c:out value="${requestScope.noData}"> 

                                </c:out>
                            </tr>
                        </c:when>
                    </c:choose>
                    <div class="card member-panel">
                        <div class="card-header bg-white">
                            <h4 class="card-title mb-0">Doctors</h4>
                        </div>
                        <div class="card-body">
                            <table class="table mb-0 new-patient-table">
                                <tbody>
                                    <c:forEach items='${DoctorList}' var="doctor">
                                        <tr> 
                                            <td>${doctor.doctorId}</td>
                                            <td>${doctor.firstName}</td>
                                            <td>${doctor.lastName}</td>
                                            <td>${doctor.phoneNumber}</td>
                                            <td>${doctor.email}</td>
                                            <td>${doctor.speciality}</td>
                                            <td>${doctor.experience}</td>
                                            <td>${doctor.schedule}</td>
                                            <td>${doctor.fees}</td>
                                        </tr>

                                    </c:forEach>
                                </tbody>
                            </table>


                        </div>
                        <div class="card-footer text-center bg-white">
                            <a href="doctors.jsp" class="text-muted">View all Doctors</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8 col-xl-8">
                    <c:choose>
                        <c:when test = "${requestScope.noData != null}">
                            <tr>
                                <c:out value="${requestScope.noData}"> 
                                </c:out>
                            </tr>
                        </c:when>
                    </c:choose>
                    <div class="card member-panel">
                        <div class="card-header">
                            <h4 class="card-title d-inline-block">New Patients </h4> <a href="patients.jsp" class="btn btn-primary float-right">View all</a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table mb-0 new-patient-table">
                                    <tbody>
                                        <c:forEach items='${PatientList}' var="patient">
                                            <tr>
                                                <td>${patient.patientId}</td>
                                                <td>${patient.patientName}</td>
                                                <td>${patient.age}</td>
                                                <td>${patient.gender}</td>
                                                <td>${patient.phoneNumber}</td>
                                                <td>${patient.address}</td>
                                                <td>${patient.patientReportId}</td>
                                                <td>${patient.patientEmail}</td>
                                                <td>${patient.status}</td>
                                                <td>${patient.healthproblem}</td>

<!--                                                <td><button class="btn btn-primary btn-primary-one float-right"><a href="EditPatientStatus?patientId=${patient.patientId}">Edit Status</a></td>-->
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 col-xl-4">
                    <div class="hospital-barchart">
                        <h4 class="card-title d-inline-block">Hospital Management</h4>
                    </div>
                    <div class="bar-chart">
                        <div class="legend">
                            <div class="item">
                                <h4>Level1</h4>
                            </div>

                            <div class="item">
                                <h4>Level2</h4>
                            </div>
                            <div class="item text-right">
                                <h4>Level3</h4>
                            </div>
                            <div class="item text-right">
                                <h4>Level4</h4>
                            </div>
                        </div>
                        <div class="chart clearfix">
                            <div class="item">
                                <div class="bar">
                                    <span class="percent">16%</span>
                                    <div class="item-progress" data-percent="16">
                                        <span class="title">OPD Patient</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="bar">
                                    <span class="percent">71%</span>
                                    <div class="item-progress" data-percent="71">
                                        <span class="title">New Patient</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="bar">
                                    <span class="percent">82%</span>
                                    <div class="item-progress" data-percent="82">
                                        <span class="title">Laboratory Test</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="bar">
                                    <span class="percent">67%</span>
                                    <div class="item-progress" data-percent="67">
                                        <span class="title">Treatment</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="bar">
                                    <span class="percent">30%</span>									
                                    <div class="item-progress" data-percent="30">
                                        <span class="title">Discharge</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="topnav-dropdown-footer">
            <a href="chat.html">See all messages</a>
        </div>
    </div>
</div>
</div>
</div>
<div class="sidebar-overlay" data-reff=""></div>
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.slimscroll.js"></script>
<script src="assets/js/Chart.bundle.js"></script>
<script src="assets/js/chart.js"></script>
<script src="assets/js/app.js"></script>

</body>


<!-- index22:59-->
</html>