<%-- 
    Document   : appointment
    Created on : 24-Feb-2023, 12:44:06 pm
    Author     : AYUSH DUTTA
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Doctor's Appointment</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- Custom CSS -->
        <!--	<style>
                        body {
                                background-image: url("images/Home.png");
                                background-size: cover;
                                background-position: center center;
                        }
                        
                        .navbar {
                                background-color: #007bff;
                        }
                        
                        .nav-link {
                                color: #fff !important;
                        }
                </style>-->
    </head>
    <body>
        <!--	<nav class="navbar navbar-expand-lg navbar-dark">
                        <div class="container">
                                <a class="navbar-brand" href="#">Doctor's Appointment</a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                        <ul class="navbar-nav ml-auto">
                                                <li class="nav-item">
                                                        <a class="nav-link" href="patientLandingPage.jsp">Home</a>
                                                </li>
                                                <li class="nav-item">
                                                        <a class="nav-link" href="landingPage.jsp">Logout</a>
                                                </li>
                                        </ul>
                                </div>
                        </div>
                </nav>-->
    <tag background="D:\docMgmtStstm\tillprescription\DoctorAppointmentAndBloodBankMgmt\web\images\app_bg.jpg">  

        <div class="container my-4">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            Book Appointment
                        </div>
                        <div class="card-body">
                            <c:set var="ayush" value="${Ayush}"/>

                            <form action="bookAppointment" method="post">
                                <!--                                                    <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInput" placeholder="doctor ID" name="doctorId" value=${ayush.doctorId}  >
                                                    <label for="floatingInput">Doctor ID</label>
                                                </div>-->

                                <div class="form-group">
                                    <label for="doctorId">Doctor ID</label>
                                    <input type="text" name="doctorId" id="doctorId" class="form-control" value=${ayush.doctorId} readonly>

                                </div>

                                <div class="form-group">
                                    <label for="doctorFirstName">Doc First Name</label>
                                    <input type="text" name="firstName" id="doctorFirstName" class="form-control" value=${ayush.firstName} readonly >
                                </div>
                                <div class="form-group">
                                    <label for="doctorLastName">Doc Last Name</label>
                                    <input type="text" name="lastName" id="doctorLastName" class="form-control" value=${ayush.lastName} readonly >
                                </div>
                                <div class="form-group">
                                    <label for="doctorLastName">Doc Speciality </label>
                                    <input type="text" name="speciality" id="speciality" class="form-control" value=${ayush.speciality} readonly >
                                </div>
                                <div class="form-group">
                                    <label for="patientID">Patient ID</label>
                                    <input type="text" name="patientId" id="patientID" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="reportID">Patient Name</label>
                                    <input type="text" name="patientName" id="patientName" class="form-control">
                                </div>
                                <!--                                                        <div class="form-group">
                                                                                                <label for="reportID">Patient Age</label>
                                                                                                <input type="text" name="age" id="age" class="form-control">
                                                                                        </div>-->
                                <div>
                                    <label for="dob">Date of Birth:</label>
                                    <input type="date" id="dob" name="dob" onchange="calculateAge()">
                                    <br>
                                    <label for="age">Age:</label>
                                    <input type="number" id="age" name="age" readonly>
                                    <script>
                                        function calculateAge() {
                                            let dob = document.getElementById("dob").value;
                                            let ageInput = document.getElementById("age");
                                            let age = calculateAgeFromDateOfBirth(dob);
                                            ageInput.value = age;
                                        }

                                        function calculateAgeFromDateOfBirth(dob) {
                                            let today = new Date();
                                            let birthDate = new Date(dob);
                                            let age = today.getFullYear() - birthDate.getFullYear();
                                            let monthDiff = today.getMonth() - birthDate.getMonth();
                                            if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
                                                age--;
                                            }
                                            return age;
                                        }
                                    </script>
                                </div>



                                <!--							<div class="form-group">
                                                                                                <label for="doctor">Doctor</label>
                                                                                                <select name="doctor" id="Doctor ID" class="form-control">
                                                                                                        <option value="">-- Select Doctor --</option>
                                                                                                        <option value="doctor1">Doctor 1</option>
                                                                                                        <option value="doctor2">Doctor 2</option>
                                                                                                        <option value="doctor3">Doctor 3</option>
                                                                                                </select>
                                                                                        </div>-->
                                <div class="form-group">
                                    <label for="date">Appointment Date</label>
                                    <input type="date" name="date" id="date" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary">Book Appointment</button>
                            </form>
                        </div>
                    </div>
                </div>

