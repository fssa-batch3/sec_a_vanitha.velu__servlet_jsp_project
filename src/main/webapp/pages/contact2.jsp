<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>contact</title>
    <link rel="stylesheet" href="../assets/css/contact2.css" />
      <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
  </head>
  <body>

    <header>
      <div class="wrapper">
        <h1 class="logo">WELLNESS<span>DIET</span></h1>
        <nav class="main-nav">
          <ul>
            <li>
              <a href="<%=request.getContextPath()%>/index2.jsp">Home </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/about2.jsp">About</a>
            </li>
            
            <li>
              <a href="<%=request.getContextPath()%>/pages/active.jsp">Create plans</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/contact2.jsp">Contact Us</a>
            </li>
          
          </ul>
        </nav>
    </header>
    <div class="container">
      <h2>Contact Us</h2>
      <form action="#" method="post">
        <label for="name">Name</label>
        <input
          type="text"
          id="name"
          name="name"
          placeholder="Your name.."
          required
        />

        <label for="email">Email</label>
        <input
          type="text"
          id="email"
          name="email"
          placeholder="Your email.."
          required
        />

        <label for="message">Message</label>
        <textarea
          id="message"
          name="message"
          placeholder="Write something.."
          required
        ></textarea>

        <input type="submit" value="Submit" />
      </form>
    </div>

    <footer class="footer">
      <div class="container4">
        <div class="rap">
          <div class="footer-col">
            <h4>SERVICES</h4>
            <ul>
              <li><a href="#">Diet counselling</a></li>
              <li><a href="#">Diet Food</a></li>
              <li><a href="#">Diet chart</a></li>
              <li><a href="#">Vitual consulation</a></li>
            </ul>
          </div>
          <div class="footer-col">
            <h4>Get help</h4>
            <ul>
              <li><a href="#">Chat</a></li>
              <li><a href="#">Consulting</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <div class="footer-col">
            <h4>Follow us</h4>
            <div class="social-links">
              <a href="#"><i class="fa fa-instagram"></i></a>
              <a href="#"><i class="fa fa-youtube-play"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-whatsapp"></i></a>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </body>
</html>
