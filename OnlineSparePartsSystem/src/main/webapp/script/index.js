document.addEventListener('DOMContentLoaded', function() {
    // Get the current page URL
    var path = window.location.pathname;
    
    // Get all nav links
    var navLinks = document.querySelectorAll('.navbar-nav .nav-link');
    
    // Loop through nav links
    navLinks.forEach(function(link) {
        // If the href attribute matches the current path, add 'active' class
        if (link.getAttribute('href') === path || (path === '/' && link.getAttribute('href') === 'index.jsp')) {
            link.classList.add('active');
        }
    });
});


