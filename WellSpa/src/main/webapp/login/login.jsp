<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Admin Login</title>
  <link href="" rel="stylesheet">
  <link rel="stylesheet" href="style.css" />
</head>
<body>

  <div id="login_div" class="main-div">
    <h3>Admin Web login </h3>
    <input type="email" placeholder="Email..." id="email_field" />
    <input type="password" placeholder="Password..." id="password_field" />

    <button onclick="login()">Login to Account</button>
  </div>

  <div id="user_div" class="loggedin-div">
    <h3>Welcome User</h3>
    <p id="user_para">Welcome to Firebase web login Example. You're currently logged in.</p>
    <button onclick="logout()">Logout</button>
  </div>



<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>
<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyDMY-75epQwXGF5ISe4ZcDeSG77Mf9VoIo",
    authDomain: "wellspa-b3fb7.firebaseapp.com",
    databaseURL: "https://wellspa-b3fb7.firebaseio.com",
    projectId: "wellspa-b3fb7",
    storageBucket: "wellspa-b3fb7.appspot.com",
    messagingSenderId: "1064895841665",
    appId: "1:1064895841665:web:5731fbfb9d816451061480",
    measurementId: "G-Z4MEJ2CL3Q"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
  <script src="index.js"></script>

</body>
</html>
