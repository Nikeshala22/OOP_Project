<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>AboutUs</title>
	<link rel="stylesheet" href="styles/aboutus.css">

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
</style>
<meta charset="UTF-8">
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
                    <a class="nav-link" id="packages-link" href="aboutus.jsp">AboutUs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="services-link" href="faq.JSP">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="gallary-link" href="privacy.jsp">Privacy Policy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="about-link" href="contact.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="about-link" href="terms.jsp">T&C</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
    
    <!-- Navbar End -->
<div class="wrapper">
        <h1 style = "font-size:80px;">About Us</h1>
        <p style = "font-size:20px; color:gray; font-wight:bold;">Your Trusted Partner in Parts Universe,Learn About Us</p>
             <div class="content-box">
                <div class="card">
                    <i class="bx bx-bar-chart-alt bx-md"></i>
                    <h2 style = "font-size:30px;">Our Mission</h2>
                  <p>At Parts Universe, our mission is to provide high-quality, reliable vehicle spare parts to keep your vehicle running smoothly. We are dedicated to offering a vast selection of parts and accessories that meet the highest standards of performance and durability.</p>

                </div>
                <div class="card">
                    <i class="bx bx-laptop bx-md"></i>
                    <h2 style = "font-size:30px;">What We Do</h2>
                   <p>We specialize in offering a comprehensive range of vehicle spare parts, from engine components to electrical systems and everything in between. Whether you’re a professional mechanic or a DIY enthusiast, we have the right parts and accessories to meet your needs. Our extensive inventory and 
                   commitment to quality ensure that you get the best products for your vehicle.</p>
                         
                </div>
                <div class="card">
                    <i class='bx bx-user bx-md'></i>

                    <h2 style = "font-size:30px;">Our Values</h2>
                <p>Quality Assurance: We source our parts from reputable manufacturers and conduct rigorous quality checks to ensure reliability and performance.
				Customer Focus: Our priority is to understand and meet the needs of our customers, providing personalized support and expert advice.</p>
                         
                </div>
                <div class="card">
                    <i class="bx bx-mail-send bx-md"></i>
                    <h2 style = "font-size:30px;">Our Team</h2>
                    <p> Our team consists of automotive professionals with extensive experience in the industry. From knowledgeable customer service representatives to skilled logistics staff, we work together to provide an exceptional experience for our customers.</p>
                         
                </div>
                <div class="card">
                    <i class="bx bx-bar-chart-alt bx-md"></i>
                    <h2 style = "font-size:30px;">Looking Ahead</h2>
                    <p>As we continue to grow, we remain committed to expanding our product offerings and enhancing our services. We aim to be your go-to source for all your vehicle spare parts needs, delivering excellence in every transaction.</p>
                         
                </div>
                <div class="card">
                    <i class="bx bx-paint bx-md"></i>
                    <h2 style = "font-size:30px;">Our Commitment</h2>
                    <p> Looking ahead, we are focused on expanding our product range and continuously improving our services. We are committed to staying at the cutting edge of the automotive parts industry to better serve our customers and meet their evolving needs.</p>
                         
                </div>
             </div>
    </div>
</body>
</html>