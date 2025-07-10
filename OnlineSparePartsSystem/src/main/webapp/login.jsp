<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="styles/login.css">

    <!-- Bootstrap Link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Link -->

    <!-- Font Awesome Cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Font Awesome Cdn -->

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- Google Fonts -->
    
    <style>
        .custom-button {
            background-color: orange;
            border: none;
            color: black;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .custom-button:hover {
            color: white;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg" id="navbar">
    <div class="container">
        <a class="navbar-brand" href="index.html" id="logo"><span>Parts</span>Universe</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span><i class="fa-solid fa-bars"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" id="home-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="login-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="signup-link" href="sinup.jsp">Signup</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-link" href="useraccount.jsp">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="packages-link" href="aboutus.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="services-link" href="faq.jsp">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="gallery-link" href="privacy.jsp">Privacy Policy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-link" href="contact.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="terms-link" href="terms.jsp">T&C</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Navbar End -->

<!-- Login form container -->
<section class="container forms">
    <div class="form login">
        <div class="form content">
            <header>Login</header>

            <form action="login" method="post" onsubmit="return validateForm()">
                <div class="error-message" id="error-message"></div>

                <div class="field input-field">
                    <input type="text" placeholder="Username" class="uid" name="username" id="username">
                </div>

                <div class="field input-field">
                    <input type="password" placeholder="Password" class="pass" name="password" id="password">
                    <i class="fa-solid fa-eye eye-icon"></i>
                </div>

                <div class="form link">
                    <a href="#" class="forgot-pass">Forgot Password?</a>
                </div>

                <div class="field button-field">
                    <button class="submit custom-button" name="submit">Login</button>
                </div>
            </form>

            <div class="form link">
                <span>Don't Have an Account? <a href="sinup.jsp" class="link signup-link">Signup</a></span>
            </div>
        </div>
    </div>
</section>

<script>
    function validateForm() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var errorMessage = document.getElementById("error-message");

        // Clear previous error messages
        errorMessage.innerHTML = '';

        // Validate username
        if (username === "") {
            errorMessage.innerHTML += "Username is required.<br>";
            return false; // Prevent form submission
        }

        // Validate password
        if (password === "") {
            errorMessage.innerHTML += "Password is required.<br>";
            return false; // Prevent form submission
        }

        return true; // Allow form submission
    }
    //eye icon 
    document.addEventListener("DOMContentLoaded", () => {
        const pwShowHide = document.querySelectorAll(".eye-icon");

        pwShowHide.forEach(eyeIcon => {
            eyeIcon.addEventListener("click", () => {
                let pwField = eyeIcon.previousElementSibling; // Get the input field before the icon

                if (pwField.type === "password") {
                    pwField.type = "text"; // Change type to text
                    eyeIcon.classList.replace("fa-eye", "fa-eye-slash"); // Change icon to eye-slash
                } else {
                    pwField.type = "password"; // Change type back to password
                    eyeIcon.classList.replace("fa-eye-slash", "fa-eye"); // Change icon back to eye
                }
            });
        });
    });
</script>

<script src="script/login.js"></script>
<script src="script/index.js"></script>
</body>
</html>
