
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
                    <form class="login100-form validate-form" action="AddRequirement" method="post">
                        <span class="login100-form-title p-b-43">
                            Add Blood Requirement
                        </span>
                        <div class="wrap-input100 validate-input" >


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
                            <span class="label-input100">Blood Group</span><br>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="urgency">
                            <input type="text" class="input100" name="urgency" value="${requirement.getUrgency()}" required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Urgency</span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="contactNo">
                            <input type="text" class="input100" name="contactNo" value="${requirement.getContactNo()}" maxlength="10" required="required">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Contact No</span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="dd/mm/yy">
                            <input type="date" class="input100" name="requestissueDate" value="${requirement.getRequestissueDate()}" required pattern="\d{2}/\d{2}/\d{4}">
                                   <span class="validity"></span>

                        </div>


                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Submit
                            </button>

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
