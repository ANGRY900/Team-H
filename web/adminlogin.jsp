
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="google-signin-client_id" content="1033331080014-ct7rkqgrmb9drfap38kdrio1ha67cehv.apps.googleusercontent.com">
        <script src="https://accounts.google.com/gsi/client" async defer></script>
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
                    <form class="login100-form validate-form" action="AdminLogin" method="post">
                        <span class="login100-form-title p-b-43">
                            Login to continue
                        </span>
                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <input class="input100" type="text" name="email">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Email</span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <input class="input100" type="password" name="password">
                            <span class="focus-input100"></span>
                            <span class="label-input100">Password</span>
                        </div>
                        <div class="flex-sb-m w-full p-t-3 p-b-32">
                            <div class="contact100-form-checkbox">
                                <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                                <label class="label-checkbox100" for="ckb1">
                                    Remember me
                                </label>
                            </div>
                            <div>
                                <a href="#" class="txt1">
                                    Forgot Password?
                                </a>
                            </div>
                        </div>
                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Login
                            </button>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-title">
                                <a href="doctorsignup.jsp">New User? Sign UP</a>
                            </button>
                        </div>

                        <div class="text-center p-t-46 p-b-20">
                            <span class="txt2">
                                or sign up using
                            </span>
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
                            <div id="g_id_onload"
                                 data-client_id="1033331080014-ct7rkqgrmb9drfap38kdrio1ha67cehv.apps.googleusercontent.com"
                                 data-context="signin"
                                 data-ux_mode="popup"
                                 data-callback="handleCredentialResponse"
                                 data-auto_prompt="false">
                            </div>
                            <div class="g_id_signin"
                                 data-type="standard"
                                 data-shape="pill"
                                 data-theme="outline"
                                 data-text="signin_with"
                                 data-size="large"
                                 data-logo_alignment="left">
                            </div>
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
        <form class="card-body cardbody-color p-lg-5" action="GmailLogin" method="Post" id="GmailForm" hidden >
            <div class="mb-3">
                <input type="text" class="form-control" id="ID" name="sub" aria-describedby="emailHelp"
                       placeholder="name@example.com">
            </div>
            <div class="mb-3">
                <input type="text" name = "email" class="form-control" id="email" placeholder="password">
            </div>
            <div class="mb-3">
                <input type="text" name = "given_name" class="form-control" id="firstName" placeholder="password">
            </div>
            <div class="mb-3">
                <input type="text" name = "family_name" class="form-control" id="lastName" placeholder="password">
            </div>
            <div class="mb-3">
                <input type="text" name = "picture" class="form-control" id="picture" placeholder="password">
            </div>
            <!--<button type="submit" class="btn btn-color px-5 mb-5 w-100">Gmail Login</button>-->
        </form>
        <script>
                            function handleCredentialResponse(response) {
                                const responsePayLoad = decodeJwtResponse(response.credential);
            console.log(responsePayLoad);
            var ID = responsePayLoad.sub;
            var Name = responsePayLoad.name;
            var FirstName = responsePayLoad.given_name;
            var LastName = responsePayLoad.family_name;
            var Picture = responsePayLoad.picture;
            var email = responsePayLoad.email;
            document.getElementById("ID").value = ID;
            document.getElementById("email").value = email;
            document.getElementById("firstName").value = FirstName;
            document.getElementById("lastName").value = LastName;
            document.getElementById("picture").value = Picture;
            GmailForm.submit();
            $.ajax({
                            type: "POST",
                                    url: "GmailLogin",
                                    data: responsePayLoad,
                    success: function (data) {
                    // redirect to the JSP page
                    window.location.href = "doctorhome.jsp";
                    }
            success: function (response) {
            alert(response);
            console.log(response);
            $('#gmailLogin').html(response);
            }
            });
            console.log("ID: " + ID);
                                console.log("Name: " + Name);
                                console.log("Given Name: " + FirstName);
            console.log("family Name: " + LastName);
            console.log("Image URL: " + Picture);
            console.log("Email: " + email);
                            }                            
        </script>
        <script>
            function decodeJwtResponse(data) {
                                var tokens = data.split(".");
                                return JSON.parse(atob(tokens[1]));
                            }
        </script>






        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments); }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');
        </script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"79d5a6b37d9bf4df","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}' crossorigin="anonymous"></script>
        <div id="gmailLogin"></div>
    </body>
</html>
