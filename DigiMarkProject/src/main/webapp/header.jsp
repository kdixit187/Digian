<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <title>Digian</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
  <!-- header section starts -->
  <header class="header_section">
    <div class="container-fluid">
      <nav class="navbar navbar-expand-lg custom_nav-container">
        <a class="navbar-brand" href="index.jsp">
          <span>Digian</span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="service.jsp">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp">Contact Us</a>
            </li>
             <%
  String user=(String)session.getAttribute("unm");
 if(user =="" || user==null)
 { %>
                <li class="nav-item">
                  <a class="nav-link" href="reg.jsp">New User</a>
                </li>
               
	           <li class="nav-item">
                  <a class="nav-link" href="login.jsp">Login</a>
                </li>
          <% } else {%>    
                <li class="nav-item">
                  <a class="nav-link" href="login.jsp">Logout</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="update.jsp">Update</a>
                </li>
              <% } %>
          </ul>
          <div class="quote_btn-container">
            <a href="" class="quote_btn">Get A Quote</a>
          </div>
        </div>
      </nav>
    </div>
  </header>
  <!-- end header section -->

  <!-- Include jQuery, Popper.js, and Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
