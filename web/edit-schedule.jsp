<!DOCTYPE html>
<html lang="en">
    <jsp:include page="adminmenu.jsp"></jsp:include>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <c:set var="doctor" value="${Doctor}"/>
    <!-- edit-schedule24:07-->

    <div class="page-wrapper">
        <form action="saveSchedule" method="Post">
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Edit Schedule</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Doctor Id</label>
                                        <input type="text" class="form-control" id="floatingInput" name="doctorId" value=${doctor.doctorId}>
                                        
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Available Days</label>
                                        <select class="select" multiple>
                                            <option>Select Days</option>
                                            <option>Sunday</option>
                                            <option>Monday</option>
                                            <option>Tuesday</option>
                                            <option>Wednesday</option>
                                            <option>Thursday</option>
                                            <option>Friday</option>
                                            <option>Saturday</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
<!--                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Start Time</label>
                                        <div class="time-icon">
                                            <input type="text" class="form-control" id="datetimepicker3">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>End Time</label>
                                        <div class="time-icon">
                                            <input type="text" class="form-control" id="datetimepicker4">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Message</label>
                                <textarea cols="30" rows="4" class="form-control"></textarea>
                            </div>-->
                            <div class="form-group">
                                <label class="display-block">Schedule Status</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="product_active" value="Available" checked>
                                    <label class="form-check-label" for="product_active">
                                        Available
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="product_inactive" value="Unavailable">
                                    <label class="form-check-label" for="product_inactive">
                                        Unavailable
                                    </label>
                                </div>
                            </div>
                            <div class="m-t-20 text-center">
                                <button class="btn btn-primary submit-btn">Save</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </form>
    </div>


    <script>
        $(function () {
            $('#datetimepicker3').datetimepicker({
                format: 'LT'

            });
        });
    </script>
    <script>
        $(function () {
            $('#datetimepicker4').datetimepicker({
                format: 'LT'

            });
        });
    </script>
</body>



<!-- edit-schedule24:07-->
</html>
