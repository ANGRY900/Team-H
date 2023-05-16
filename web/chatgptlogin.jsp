<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Page</title>
	<!-- Social media integration libraries -->
	<script src="https://cdn.jsdelivr.net/npm/@widgetbot/crate@3/dist/crate.full.min.js"></script>
	<script src="https://connect.facebook.net/en_US/sdk.js"></script>
	<script src="https://platform.twitter.com/widgets.js"></script>
</head>
<body>
	<h1>Login Page</h1>
	<form method="post" action="login.jsp">
		<label for="username">Username:</label>
		<input type="text" name="username" id="username"><br><br>
		<label for="password">Password:</label>
		<input type="password" name="password" id="password"><br><br>
		<input type="submit" value="Login">
	</form>
	<!-- Social media integration buttons -->
	<div>
		<h3>Login with social media:</h3>
		<div>
			<button onclick="handleFacebookLogin()">Login with Facebook</button>
			<button onclick="handleTwitterLogin()">Login with Twitter</button>
			<div class="crate-discord" data-server="YourDiscordServerID" data-channel="YourDiscordChannelID"></div>
		</div>
	</div>
	<!-- Social media integration scripts -->
	<script>
		// Facebook login script
		window.fbAsyncInit = function() {
			FB.init({
				appId      : 'YourFacebookAppID',
				cookie     : true,
				xfbml      : true,
				version    : 'v11.0'
			});
			FB.AppEvents.logPageView();   
		};

		function handleFacebookLogin() {
			FB.login(function(response) {
				if (response.authResponse) {
					console.log('Welcome!  Fetching your information.... ');
					FB.api('/me', function(response) {
						console.log('Good to see you, ' + response.name + '.');
					});
				} else {
					console.log('User cancelled login or did not fully authorize.');
				}
			});
		}

		// Twitter login script
		function handleTwitterLogin() {
			twttr.widgets.createSignInButton(
				(document.getElementById("twitter-login")),
				{
					size: "medium",
					authComplete: function(authToken, screenName, userId) {
						console.log('Welcome!  Fetching your information.... ');
						console.log('Good to see you, ' + screenName + '.');
					},
					signInUrl: "https://yourwebsite.com/twitter_login"
				}
			);
		}

		// Discord login script
		var crate = new Crate({
			server: 'YourDiscordServerID',
			channel: 'YourDiscordChannelID',
			color: '#7289DA',
			// You can get your Discord bot token from the Discord Developer Portal
			token: 'YourDiscordBotToken'
		});
		crate.render('.crate-discord');
	</script>
</body>
</html>
