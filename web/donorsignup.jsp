
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login V18</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" type="image/png" href="images/icons/favicon.ico" />

        <link rel="stylesheet" type="text/css" href="css/dl1.css">

        <link rel="stylesheet" type="text/css" href="css/dl2.css">

        <link rel="stylesheet" type="text/css" href="css/dl3.css">

        <link rel="stylesheet" type="text/css" href="css/dl4.css">

        <link rel="stylesheet" type="text/css" href="css/all.min_1.css">

        <link rel="stylesheet" type="text/css" href="css/all.min.css">

        <link rel="stylesheet" type="text/css" href="css/hamburgers.min.css">

        <link rel="stylesheet" type="text/css" href="css/dl6.css">

        <link rel="stylesheet" type="text/css" href="css/dl7.css">

        <link rel="stylesheet" type="text/css" href="css/dl8.css">

        <link rel="stylesheet" type="text/css" href="css/util.css">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">

        <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" integrity="sha384-3AB7yXWz4OeoZcPbieVW64vVXEwADiYyAEhwilzWsLw+9FgqpyjjStpPnpBO8o8S" crossorigin="anonymous">-->

        <link rel="stylesheet" type="text/css" href="css/main.css">

        <meta name="robots" content="noindex, follow">
        <script nonce="159842db-a769-4e48-b725-a8e7af0b096e">(function(w, d){!function(f, g, h, i){f[h] = f[h] || {}; f[h].executed = []; f.zaraz = {deferred:[], listeners:[]}; f.zaraz.q = []; f.zaraz._f = function(j){return function(){var k = Array.prototype.slice.call(arguments); f.zaraz.q.push({m:j, a:k})}}; for (const l of["track", "set", "debug"])f.zaraz[l] = f.zaraz._f(l); f.zaraz.init = () => {var m = g.getElementsByTagName(i)[0], n = g.createElement(i), o = g.getElementsByTagName("title")[0]; o && (f[h].t = g.getElementsByTagName("title")[0].text); f[h].x = Math.random(); f[h].w = f.screen.width; f[h].h = f.screen.height; f[h].j = f.innerHeight; f[h].e = f.innerWidth; f[h].l = f.location.href; f[h].r = g.referrer; f[h].k = f.screen.colorDepth; f[h].n = g.characterSet; f[h].o = (new Date).getTimezoneOffset(); if (f.dataLayer)for (const s of Object.entries(Object.entries(dataLayer).reduce(((t, u) => ({...t[1], ...u[1]})))))zaraz.set(s[0], s[1], {scope:"page"}); f[h].q = []; for (; f.zaraz.q.length; ){const v = f.zaraz.q.shift(); f[h].q.push(v)}n.defer = !0; for (const w of[localStorage, sessionStorage])Object.keys(w || {}).filter((y => y.startsWith("_zaraz_"))).forEach((x => {try{f[h]["z_" + x.slice(7)] = JSON.parse(w.getItem(x))} catch {f[h]["z_" + x.slice(7)] = w.getItem(x)}})); n.referrerPolicy = "origin"; n.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(f[h]))); m.parentNode.insertBefore(n, m)}; ["complete", "interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded", zaraz.init)}(w, d, "zarazData", "script"); })(window, document);</script></head>
    <body style="background-color: #666666;">
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <form class="login100-form validate-form" action="SignUp" method="post">
                        <span class="login100-form-title p-b-43">
                            Sign up to continue
                        </span>
                        <!--                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                                                    <input class="input100" type="text" name="emailAddress">
                                                    <span class="focus-input100"></span>
                                                    <span class="label-input100">Email</span>
                                                </div>
                                                <div class="wrap-input100 validate-input" data-validate="Password is required">
                                                    <input class="input100" type="password" name="password">
                                                    <span class="focus-input100"></span>
                                                    <span class="label-input100">Password</span>
                                                </div>-->
                        <div class="wrap-input100 validate-input" data-validate="Full Name">
                            <input type="text" class="input100" name="donorName" value="${Donor.getDonorName()}"  required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Full name</span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Age">
                            <input type="text" class="input100" name="donorAge" value="${Donor.getDonorAge()}" required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Age</span>
                        </div>
                        <!--                            <div class="wrap-input100 validate-input" data-validate="Age">
                                                    <input type="text" class="input100" name="gender" value="${Donor.getDonorAge()}" required="required">
                                                    <span class="focus-input100"></span>
                                                    <span class="label-input100">Gender</span>
                                                </div>-->
                        <div class="wrap-input50 validate-input" >
                            <p>Select Gender</p>
                            <input type="radio" id="donorgender" name="donorgender" value="Male">
                            <label for="donorgender">Male</label>
                            <input type="radio" id="donorgender" name="donorgender" value="Female">
                            <label for="donorgender">Female</label>
                            <input type="radio" id="donorgender" name="donorgender" value="Transgender">
                            <label for="donorgender">Transgender</label>

                            <!--<span class="label-input100">Gender</span>-->
                        </div>
                        <div class="wrap-input100 validate-input" >

                            <p>Select Blood Group</p>
                            <select name="donorBloodgroup" class="input100">
                                <option value="0" disabled>Select a Blood Group</option>
                                <option value="A+" ${Donor.getDonorBloodgroup() == "A+" ? "selected" : ""}>A+</option>
                                <option value="A-" ${Donor.getDonorBloodgroup() == "A-" ? "selected" : ""}>A-</option>
                                <option value="B+" ${Donor.getDonorBloodgroup() == "B+" ? "selected" : ""}>B+</option>
                                <option value="B-" ${Donor.getDonorBloodgroup() == "B-" ? "selected" : ""}>B-</option>
                                <option value="AB+" ${Donor.getDonorBloodgroup() == "AB+" ? "selected" : ""}>AB+</option>
                                <option value="AB-" ${Donor.getDonorBloodgroup() == "AB-" ? "selected" : ""}>AB-</option>
                                <option value="O+" ${Donor.getDonorBloodgroup() == "O+" ? "selected" : ""}>O+</option>
                                <option value="O-" ${Donor.getDonorBloodgroup() == "O-" ? "selected" : ""}>O-</option>
                            </select>

                        </div>
                        <!--                </div>
                        -->                <div class="wrap-input50 validate-input" >
                            <p>Any Health Problem?</p> 

                            <input type="radio" id="donorAnyHealthproblem" name="donorAnyHealthproblem" value="yes">
                            <label for="donorAnyHealthproblem">yes</label>
                            <input type="radio" id="donorAnyHealthproblem" name="donorAnyHealthproblem" value="no">
                            <label for="donorAnyHealthproblem">no</label>
                            <!--<span class="label-input100">Any Health problem</span>-->
                        </div><!--
                        -->                <div class="wrap-input100 validate-input" data-validate="Address">
                            <input type="text" class="input100" name="donorAddress" value="${Donor.getDonorAddress()}" required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Address</span>
                        </div><!--
                        -->                <div class="wrap-input100 validate-input" data-validate="name@example.com">
                            <input type="email" class="input100" name="emailAddress" value="${Donor.getEmailAddress()}" required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Email</span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="X1@afg">
                            <input type="password" class="input100" name="password" value="${Donor.getPassword()}" minlength="8" required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Password</span>
                        </div><!--
                        -->                <div class="wrap-input100 validate-input" data-validate="contactNo">
                            <input type="text" class="input100" name="contactNo" value="${Donor. getContactNo()}" required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Contact No</span>
                        </div>

                        <!--                <div class="flex-sb-m w-full p-t-3 p-b-32">
                                            <div class="contact100-form-checkbox">
                                                <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                                                <label class="label-checkbox100" for="ckb1">
                                                    Remember me
                                                </label>
                                            </div>
                        
                                        </div>-->

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Sign Up
                            </button>
                        </div>
                        <div class="text-center p-t-46 p-b-20">
                            <span class="txt2">
                                or sign up using
                            </span>
                        </div>
                        <div class="flex-sb-m w-full p-t-3 p-b-32">
                            <div class="contact100-form-checkbox">
                                <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                                <label class="label-checkbox100" for="ckb1">
                                    Remember me
                                </label>
                            </div>

                        </div>


                        <div class="login100-form-social flex-c-m">
                            <a href="https://www.facebook.com/" class="login100-form-social-item flex-c-m bg1 m-r-5" src>
                                <i class="fa-brands fa-facebook-f"></i>
                                <!--<i class="fa fa-facebook" aria-hidden="true"></i>-->
                            </a>
                            <a href="https://twitter.com/" class="login100-form-social-item flex-c-m bg2 m-r-5">
                                <i class="fa-brands fa-twitter"></i>
                                <!--<i class="fa fa-twitter" aria-hidden="true"></i>-->
                            </a>
                        </div>
                    </form>
                    <div class="login100-more" style="background-image: url('images/d1.jpg');">
                    </div>
                </div>
            </div>
        </div>

        <script src="js/dl1.js"></script>

        <script src="js/dl2.js"></script>

        <script src="js/dl3.js"></script>
        <script src="js/dl4.js"></script>

        <script src="js/dl5.js"></script>

        <script src="js/dl6.js"></script>
        <script src="js/dl7.js"></script>
        <script src="js/dl8.js"></script>
        <script src="js/dl9.js"></script>
        <script src="js/dl10.js"></script>





        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments); }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');
        </script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"79d5a6b37d9bf4df","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}' crossorigin="anonymous"></script>
    </body>
</html>
