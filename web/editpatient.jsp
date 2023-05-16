<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.exavalu.models.Role"%>

<%@page import="com.exavalu.models.Department"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <title>Edit Patient</title>      
        <link href="css/bootstrap.min.css" rel="stylesheet" >
        <link href="css/signin.css" rel="stylesheet">  
        <!-- Custom styles for this template -->
        <link href="css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">




    
    <!-- Custom styles for this template -->
    <link href="css/sign-in.css" rel="stylesheet">
    </head>
    
    
    
    <body class="text-center">

        <main class="form-signin w-100 m-auto">
            
            
            <c:set var="patient" value="${Patient}"/>
            
            <form action="savePatient" method="Post">
                
                 <img class="bd-placeholder-img rounded-circle" width="200" height="200" src="images/d1.jpg" alt="" width="200" height="200">
                
                 <br>
                 <br>
                 
                 <h1 class="h3 mb-3 fw-normal">Edit Employee Status</h1>
                  <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Patient ID" name="patientId" value=${patient.patientId} readonly >
                    <label for="floatingInput">Patient ID</label>
                </div>
                    
                    <br>
                    
                    
                  <div class="form-floating">
                    <!--<input type="text" class="form-control" id="floatingInput" placeholder="status" name="status" value=${patient.status}>-->
                    <!--<label for="floatingInput">Status</label>-->
                    
                    <select name="status" class="form-control" id="floatingInput" placeholder="status" name="status" value=${patient.status}>
                        <option value="pending">Pending</option>
                        <option value="accepted">Accepted</option>
                        <option value="rejected">Rejected</option>
                    </select>
                        <br><br>
                        <label for="floatingInput">Status</label>
                    
<!--                    <input type="submit" value="Submit">-->
                </div>
                
                
                <button class="w-100 btn btn-lg btn-primary" type="submit">Save</button>
                
            </form>
        </main>
                    <style>
            body {
                background-image: url('images/slider1.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center center;
                background-size: 100% 100%;
            }
        </style>
    </body>
</html>