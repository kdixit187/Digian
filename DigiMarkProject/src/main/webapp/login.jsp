
<!DOCTYPE html>
<html>
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Digian</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>
<body class="sub_page">

  <div class="hero_area">
<%@ include file="header.jsp" %>
<% String nm=(String)session.getAttribute("unm");
if(nm!=null && nm!="")
{
	  session.invalidate();	
}
%>
 <!-- contact section -->

  <section class="contact_section layout_padding">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-5 col-lg-4 offset-md-1">
          <div class="form_container">
            <div class="heading_container">
            
              <h2 style="
    background-color: white; 
    border: 1px solid #ccc; /* Optional: Adds a light gray border */
    color: black; /* Optional: Sets the text color to black */
    padding: 10px 160px; /* Optional: Adds padding for better appearance */
    font-size: 17px; /* Optional: Adjusts the font size */
    cursor: pointer; /* Optional: Changes the cursor to a pointer on hover */
">
                User Login
              </h2>
            </div>
            <form action="login" method ="post">
              <div>
                <input type="text" name="unm" placeholder="User Name " />
              </div>
              <div>
                <input type="password" name="pw" placeholder="Password "/>
              </div>
              
              <div class="btn-box">
                <button type="submit" style="
    background-color: white; 
    border: 1px solid #ccc; /* Optional: Adds a light gray border */
    color: black; /* Optional: Sets the text color to black */
    padding: 10px 20px; /* Optional: Adds padding for better appearance */
    font-size: 16px; /* Optional: Adjusts the font size */
    cursor: pointer; /* Optional: Changes the cursor to a pointer on hover */
">
                  SUBMIT
                </button>
              </div>
            </form>
          </div>
        </div>
        
      </div>
    </div>
  </section>

  <!-- end contact section -->

  



  <%@ include file="footer.jsp" %>
</body>

</html>