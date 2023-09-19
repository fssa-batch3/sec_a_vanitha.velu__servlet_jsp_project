<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/form2.css" />
  </head>
  <body>
    <header>
      <div class="wrapper">
        <h1 class="logo">WELLNESS<span>DIET</span></h1>
        <nav class="main-nav">
          <ul>
            <li>
              <a href="../index.html">Home </a>
            </li>
            <li>
              <a href="./about2.html">About</a>
            </li>
            <li>
              <a href="./diet2.html">Consultation</a>
            </li>
            <li>
              <a href="./active.html">Create plans</a>
            </li>
            <li>
              <a href="./contact2.html">Contact Us</a>
            </li>
          
          </ul>
        </nav>
    </header>
    <h1>BOOK APPOINMENT</h1>
    <div class="main">
      <form id="form" >
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="vinit" required />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="vanitha.velu@fssa.freshworks.com"  required />

        <label for="number">Phone Number:</label>
        <input type="number" id="phonenumber" name="number" value="9876543210"  required />

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" min="24-05-2023" required />

        <label for="time">Time:</label>
        <input type="time" id="time" name="time" required />

        <label for="department">Department:</label>
        <select id="department" name="department" required>
          <option value="weight Gain">weight Gain</option>
          <option value="weight Loss">weight Loss</option>
          <option value="Healthy Diet">Healthy diet</option>
        </select>

        <button type="submit" id="submit_apt">Book Appointment</button>
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
