<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/form2.css" />
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
              <a href="<%=request.getContextPath()%>/pages/patient_index.jsp">Home </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/about2.jsp">About</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/pages/diet2.jsp">Consultation</a>
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
  <h2>Dietitian Appointment</h2>
  <form action="<%=request.getContextPath()%>/AddAppointmentServlet"
		method="post">
    <label for="patientName">Patient Name</label>
    <input type="text" id="patientName" name="patientName" required>

    <label for="email">Email</label>
    <input type="email" id="email" name="email" required>

    <label for="problem">Problem</label>
    <select id="problem" name="problem" required>
      <option value="Gain">Weight gain</option>
      <option value="loss">Weight loss</option>
      <option value="ordinary">Ordinary</option>
    
    </select>

    <label for="branch">Branch Name</label>
    <select id="branch" name="branch" required>
      <option value="Main Clinic">Chennai</option>
      <option value="Branch 1">Perungudi</option>
      <option value="Branch 2">T.nagar</option>

    </select>

    <label for="dateTime">Date and Time</label>
    <input type="datetime-local" id="dateTime" name="dateTime" required>

    <button type="submit">Submit Appointment</button>
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

    <script>
      const form = document.getElementById("form");

      // let appoinments = {};

      // get value from URL

      const c_id = window.location.search;
      const c_params = new URLSearchParams(c_id);
      const get_details = c_params.get("id");
      console.log(get_details);

      form.addEventListener("submit", function (event) {
        event.preventDefault();

        let arr = [];
        console.log(arr);

        if (localStorage.getItem("appoinmentList") != null) {
          arr = JSON.parse(localStorage.getItem("appoinmentList"));
        }

        const name = document.getElementById("name").value;
        const email = document.getElementById("email").value;
        const number = document.getElementById("phonenumber").value;
        const date = document.getElementById("date").value;
        const time = document.getElementById("time").value;
        const department = document.getElementById("department").value;
        const userId = Date.now();

        let appoinments = {
          Name: name,
          Email: email,
          PhoneNumber: number,
          Date: date,
          Time: time,
          Department: department,
          Doctor_id: get_details,
        };

        console.log(appoinments);

        arr.push(appoinments);
        const str = JSON.stringify(arr);
        alert("Appoinment booked successfully");
        window.localStorage.setItem("appoinmentList", str);
      });
    </script>
  </body>
</html>
