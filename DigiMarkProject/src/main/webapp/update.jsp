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

<body>

  <div class="hero_area"> 
  
<%@ include file="header.jsp" %>
  <!-- contact section -->
<section class="contact_section layout_padding">
    <div class="contact_bg_box">
      <div class="img-box">
        <img src="images/contact-bg.jpg" alt="">
      </div>
    </div>
   <div class="container">
      <div class="heading_container heading_center">
        <h2>
        Update Registration
        </h2>
      </div>
      <div class="">
        <div class="row">
          <div class="col-md-7 mx-auto">
            <form action="CustReg" method="post">
              <div class="contact_form-container">
                <div>
                  <div>
                   <input type="text" name="cname" value="<%=(String)session.getAttribute("cname") %>" />
                  </div>
                  <div>
                  <input type="text" name="cadd" value="<%=(String)session.getAttribute("cadd") %>" />
                  </div>
                  <div>
                <input type="text" name="mob" value="<%=(Integer)session.getAttribute("mob") %>" />
                  </div>
                  <div>
                 <input type="text" name="unm" value="<%=(String)session.getAttribute("unm") %>" />
                  </div>
                  <div>
               <input type="password" name="pw" value="<%=(String)session.getAttribute("pw") %>"  />
                  </div>
                 
                  <div class="btn-box ">
                    <button type="submit" style="
    background-color: white; 
    border: 1px solid #ccc; /* Optional: Adds a light gray border */
    color: black; /* Optional: Sets the text color to black */
    padding: 10px 20px; /* Optional: Adds padding for better appearance */
    font-size: 16px; /* Optional: Adjusts the font size */
    cursor: pointer; /* Optional: Changes the cursor to a pointer on hover */
">
                      Submit
                    </button>
                  </div>
                </div>
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