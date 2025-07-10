<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parts Universe</title>

    <link rel="stylesheet" href="styles/index.css">

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
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    list-style: none;
    scroll-behavior: smooth;
    font-family: 'Lato', sans-serif;
}
#navbar {
  background-color: #343a40;
  padding: 15px 0;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.navbar-nav .nav-link {
  color: #000000; /* Black text color */
  margin-right: 15px;
  font-weight: 500;
  transition: color 0.3s ease;
}

.navbar-nav .nav-link:hover,
.navbar-nav .nav-link.active {
  color: #ffc107; /* Yellow color on hover or when active */
}


#logo {
  color: #ffffff;
  font-size: 24px;
  font-weight: 700;
  text-transform: uppercase;
}

#logo span {
  color: #ffc107;
}

.btn-primary {
  background-color: #ffc107; /* Button background color */
  border: none; /* Remove border */
  color: #000000; /* Black text color */
  font-weight: 600; /* Bold text */
}

.btn-primary:hover {
  background-color: #e0a800; /* Darker yellow on hover */
  color: #ffffff; /* White text color on hover */
}


.navbar-toggler {
  border-color: #ffffff;
}

.navbar-toggler-icon {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='%23ffffff' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
  /* White lines for the toggle icon */
}


.navbar {
  min-height: 60px;
}
/* Home Section Start */
.home{
    width: 100%;
    height: 90vh;
    background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.2)), url(images/background.jpeg);
    background-repeat: no-repeat;
    background-size: cover;
}
.home .content{
    text-align: center;
    padding-top: 200px;
}
.home .content h5{
    color: white;
    font-size: 38px;
    font-weight: 550;
    text-shadow: 0px 1px 1px black;
}
.home .content h1{
    color: white;
    font-size: 70px;
    font-weight: 550;
    text-shadow: 0px 1px 1px black;
    margin-top: 5px;
}
.changecontent::after{
    content: ' ';
    color: #ffa500;
    text-shadow: 0px 1px 1px black;
    animation: changetext 10s infinite linear;
}
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
            <form class="d-flex" id="searchForm" onsubmit="return performSearch()">
    			<input class="form-control me-2" type="text" id="query" placeholder="Search">
    			<button class="btn custom-button" type="submit">Search</button>
			</form>
	            
        </div>
    </div>
</nav>
    
    <!-- Navbar End -->
    <!-- Home Section Start -->
    <div class="home">
        <div class="content">
            <h5>Welcome To Parts Universe</h5>
            <h1>Discover <span class="changecontent"></span></h1>
            <p>Experience Unmatched Performance with our Superior Replacement Parts!</p>
            <a href="#book">OBSERVE</a>
        </div>
    </div>
    <!-- Home Section End -->
    <!-- Section Packages Start -->
    <section class="packages" id="packages">
      <div class="container">
        
        <div class="main-txt">
          <h1><span>Brand</span>Categories</h1>
        </div>

        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/bmw.jpeg" width="200" height="200" alt="">
              <div class="card-body">
                <h3>BMW</h3>
                <p>Genuine Parts for Optimal Performance of Your BMW!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
               
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/benz.jpeg" width="200" height="200" alt="">
              <div class="card-body">
                <h3>Benz</h3>
                <p>Genuine Parts for Optimal Performance of Your Benz!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/toyota.jpeg" width="200" height="200" alt="">
              <div class="card-body">
                <h3>Toyota</h3>
                <p>Genuine Parts for Optimal Performance of Your Toyota!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/hyhundai.jpeg" width="200" height="200"alt="">
              <div class="card-body">
                <h3>Hyhundai</h3>
                <p>Genuine Parts for Optimal Performance of Your Hyhundai!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/tata.jpeg" width="200" height="200" alt="">
              <div class="card-body">
                <h3>Tata</h3>
                <p>Genuine Parts for Optimal Performance of Your Tata!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/audi.jpeg"width="200" height="200"  alt="">
              <div class="card-body">
                <h3>Audi</h3>
                <p>Genuine Parts for Optimal Performance of Your Audi!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Section Packages End -->
    <!-- Section Services Start -->
    <section class="services" id="services">
      <div class="container">

        <div class="main-txt">
          <h1><span>S</span>ervices</h1>
        </div>

        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class ="fa fa-book"></i>
              <div class="card-body">
                <h3>Spare Parts Catalog</h3>
                <p>Search by Vehicle: Allow users to search parts by entering their vehicle's make, model, and year.
                  Part Number Search: Provide a search function based on part numbers.
                  Category Browsing: Organize parts into categories (e.g., engine, brakes, transmission).
                  OEM vs. Aftermarket: Offer options for Original Equipment Manufacturer (OEM) parts and aftermarket alternatives.</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-check-circle"></i>
              <div class="card-body">
                <h3> Compatibility Check</h3>
                <p>VIN Number Lookup: Allow users to enter their Vehicle Identification Number (VIN) to automatically find compatible parts.
                  Compatibility Verification: Automatically check and display compatibility of parts with different vehicle models.</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-users"></i>
              <div class="card-body">
                <h3>Customer Support</h3>
                <p>Live Chat: Provide real-time customer support via live chat.
                  FAQs: Include a section with frequently asked questions and troubleshooting tips.
                  Return/Exchange Policy: Clearly outline return and exchange policies.</p>
              </div>
            </div>

          </div>

        </div>


        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-bell"></i>
              <div class="card-body">
                <h3>Subscription Services</h3>
                <p>Maintenance Subscription: Offer a subscription service for regular maintenance parts like oil filters and brake pads, delivered on a schedule.
                  Parts Alerts: Notify users when certain parts are back in stock or when there are new parts for their specific vehicle.</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-download"></i>
              <div class="card-body">
                <h3>Installation Guides and Tutorials</h3>
                <p>How-To Videos: Offer video tutorials for part installation.
                  Downloadable Manuals: Provide PDF manuals for more detailed guidance.
                  Expert Tips: Include expert advice on maintaining and installing parts.</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-mobile"></i>
              <div class="card-body">
                <h3>Mobile App</h3>
                <p>Mobile-Friendly Interface: Ensure the website is mobile-friendly or offer a dedicated app.
                  Push Notifications: Send alerts for deals, order updates, and new arrivals.</p>
              </div>
            </div>

          </div>
        </div>

      </div>
    </section>
    <!-- Section Services End -->
    <!-- Section Gallary Start -->
    <section class="gallary" id="gallary">
      <div class="container">

        <div class="main-txt">
          <h1><span>G</span>allary</h1>
        </div>

        <div class="row" style="margin-top: 30px;">
          <div class="col-md-4 py-3 py-md-0">
            <div class="card">
              <img src="./images/lg1.jpeg" alt="" height="230px">
            </div>
          </div>
          <div class="col-md-4 py-3 py-md-0">
            <div class="card">
              <img src="./images/g2.jpeg" alt="" height="230px">
            </div>
          </div>
          <div class="col-md-4 py-3 py-md-0">
            <div class="card">
              <img src="./images/lg3.jpeg" alt="" height="230px">
            </div>
          </div>
        </div>


        <div class="row" style="margin-top: 30px;">
          <div class="col-md-4 py-3 py-md-0">
            <div class="card">
              <img src="./images/lg4.jpeg" alt="" height="230px">
            </div>
          </div>
          <div class="col-md-4 py-3 py-md-0">
            <div class="card">
              <img src="./images/g5.jpeg" alt="" height="230px">
            </div>
          </div>
          <div class="col-md-4 py-3 py-md-0">
            <div class="card">
              <img src="./images/g6.jpeg" alt="" height="230px">
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Section Gallary End -->
    <!-- About Start -->
    <section class="about" id="about">
      <div class="container">
        <div class="main-txt">
          <h1>About <span>Us</span></h1>
        </div>
        <div class="row" style="margin-top: 50px;">
          <div class="col-md-6 py-3 py-md-0">
            <div class="card">
              <img src="./images/about.jpeg" height="500px" width="400px">
            </div>
          </div>
          <div class="col-md-6 py-3 py-md-0">
            <h2>Your Trusted Automotive Partner</h2>
            <p>Welcome to Parts Universe, your trusted partner in keeping your vehicle running smoothly and efficiently. Established in 2002, our mission has always been simple: to provide high-quality, reliable spare parts for all types of vehicles at competitive prices, backed by exceptional customer service.</p>
            <a href="aboutus.jsp" class="btn btn-primary">Read More...</a>
            
          </div>
        </div>
      </div>
    </section>
    <!-- About End -->
    <!-- Footer Start -->
    <footer id="footer">
      <h1><span>Parts</span>Universe</h1>
      <p>Maximize Your Vehicle's Potential with Our High-Quality Replacement Parts!</p>
      <div class="social-links">
        <i class="fa-brands fa-twitter"></i>
        <i class="fa-brands fa-facebook"></i>
        <i class="fa-brands fa-instagram"></i>
        <i class="fa-brands fa-youtube"></i>
        <i class="fa-brands fa-pinterest-p"></i>
      </div>
      <div class="credit">
        <p>Designed By <a href="#">SLIIT Students</a></p>
      </div>
      <div class="copyright">
        <p>&copy;Copyright SLIIT Students. All Rights Reserved</p>
      </div>
    </footer>
    <!-- Footer End -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="script/index.js"></script> 
    <script>
    function performSearch() {
        const query = document.getElementById('query').value.toLowerCase().trim();

        // Corrected mapping between search terms and URLs
        const pages = {
            'login': 'login.jsp',
            'signup': 'sinup.jsp', // Make sure this is correctly spelled
            'about': 'about.jsp',
            'faq': 'faq.jsp',
            'home': 'index.jsp',
            'profile': 'useraccount.jsp',
            'contact': 'contactus.jsp',
            't&c': 't&c.jsp',
            // Add more pages as needed
        };

        // Attempt to match the query to a page
        if (pages[query]) {
            window.location.href = pages[query];
        } else {
            alert("Page not found. Please try another search term.");
        }

        return false; // Prevent the form from submitting and reloading the page
    }
    </script>
</body>
</html>
