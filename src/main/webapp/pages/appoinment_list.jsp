<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>apt-list</title>
    <link rel="stylesheet" href="../assets/css/appoinment_list.css" />
    
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
  />
    <script src="https://smtpjs.com/v3/smtp.js"></script>
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
              <a href="./appoinment_list.html">appointment list</a>
            </li>
            <li>
              <a href="./active.html">Create plans</a>
            </li>

            <li>
              <a href="./profile2.html">Profile</a>
            </li>
            <li>
              <a href="./contact2.html">Contact Us</a>
            </li>
          </ul>
        </nav>
      </div>
    </header>
    <h2>Appoinment-List's</h2>
    <div class="order_list" id="order_list">
      <!-- <div id="a-form" class="a-form">
        <pre>Name             : <span id="name"></span></pre>
        <pre>Email            : <span id="email"></span></pre>
        <pre>Phone Number     : <span id="phoneNmber"></span></pre>
        <pre>Date             : <span id="date"></span></pre>
        <pre>Time             : <span id="time"></span></pre>
        <pre>Department       : <span id="department"></span></pre>
        <div class="both-btn"></div>

        <div class="btn">
          <a class="verifybtn" href="">Accept</a>
          <a class="verifybtn" href="">cancel</a>
        </div>
      </div> -->
    </div>

    <script>
      const apt_list = JSON.parse(localStorage.getItem("appoinmentList"));
      console.log(apt_list);
      const login = JSON.parse(localStorage.getItem("login"));
      console.log(login);

      for (let i = 0; i < apt_list.length; i++) {
        const formDiv = document.createElement("div");
        formDiv.setAttribute("id", "a-form");

        // Create a new div element for name
        const nameDiv = document.createElement("div");
        const namePre = document.createElement("pre");
        namePre.textContent = "Name             : ";
        const nameSpan = document.createElement("span");
        nameSpan.setAttribute("id", "name");
        nameSpan.innerText = apt_list[i]["Name"];
        namePre.appendChild(nameSpan);
        nameDiv.appendChild(namePre);

        console.log(apt_list[i]["Name"]);

        // Create a new div element for email
        const emailDiv = document.createElement("div");
        const emailPre = document.createElement("pre");
        emailPre.textContent = "Email            : ";
        const emailSpan = document.createElement("span");
        emailSpan.id = "email";
        emailSpan.innerText = apt_list[i]["Email"];
        emailPre.appendChild(emailSpan);
        emailDiv.appendChild(emailPre);

        // Create a new div element for phone number
        const phoneNumberDiv = document.createElement("div");
        const phoneNumberPre = document.createElement("pre");
        phoneNumberPre.textContent = "Phone number     : ";
        const phoneNumberSpan = document.createElement("span");
        phoneNumberSpan.id = "phoneNumber";
        phoneNumberSpan.innerText = apt_list[i]["PhoneNumber"];
        phoneNumberPre.appendChild(phoneNumberSpan);
        phoneNumberDiv.appendChild(phoneNumberPre);

        // // Create a new div element for date
        const dateDiv = document.createElement("div");
        const dateNamePre = document.createElement("pre");
        dateNamePre.textContent = "Date             : ";
        const dateNameSpan = document.createElement("span");
        dateNameSpan.id = "date";
        dateNameSpan.innerText = apt_list[i]["Date"];
        dateNamePre.appendChild(dateNameSpan);
        dateDiv.appendChild(dateNamePre);

        // Create a new div element for time
        const timeDiv = document.createElement("div");
        const timePre = document.createElement("pre");
        timePre.textContent = "Time period      : ";
        const timeSpan = document.createElement("span");
        timeSpan.id = "time";
        timeSpan.innerText = apt_list[i]["Time"];
        timePre.appendChild(timeSpan);
        timeDiv.appendChild(timePre);

        // Create a new div element for departmentSpan
        const departmentDiv = document.createElement("div");
        const departmentPre = document.createElement("pre");
        departmentPre.textContent = "Department       :";
        const departmentSpan = document.createElement("span");
        departmentSpan.id = "department";
        departmentSpan.innerText = apt_list[i]["Department"];
        departmentPre.appendChild(departmentSpan);
        departmentDiv.appendChild(departmentPre);
        // Create a new div element for both buttons
        const bothBtnDiv = document.createElement("div");
        bothBtnDiv.classList.add("both-btn");
        // Create a new accept button
        const acceptBtn = document.createElement("a");
        acceptBtn.classList.add("verifybtn");
        acceptBtn.setAttribute("onclick", "idandemail(this.id)");
        acceptBtn.setAttribute("id", i);
        acceptBtn.href = "#";
        acceptBtn.textContent = "Accept";
        // Create a new cancel button
        const notAcceptBtn = document.createElement("a");
        notAcceptBtn.classList.add("verifybtn");
        notAcceptBtn.href = "#";
        notAcceptBtn.textContent = "cancel";

        // Append all the elements to the form div
        formDiv.appendChild(nameDiv);
        formDiv.appendChild(emailDiv);
        formDiv.appendChild(phoneNumberDiv);
        formDiv.appendChild(dateDiv);
        formDiv.appendChild(timeDiv);
        formDiv.appendChild(departmentDiv);
        formDiv.appendChild(bothBtnDiv);
        bothBtnDiv.appendChild(acceptBtn);
        bothBtnDiv.appendChild(notAcceptBtn);
        document.querySelector(".order_list").append(formDiv);

        console.log(formDiv);
      }
    </script>
    <script>
      function idandemail(id) {
        // reply_click(this.id)
        // function reply_click(clicked_id){
        //   alert(clicked_id)
        let string_id = JSON.stringify(id);
        localStorage.setItem("clicked_id", string_id);
        // }
        acceptDiet();
      }

      const appoint_list = JSON.parse(localStorage.getItem("appoinmentList"));
      console.log(appoint_list);

      function acceptDiet() {
        let click_id = JSON.parse(localStorage.getItem("clicked_id"));
        Email.send({
          SecureToken: "96317604-6aba-41c6-be4b-50fd94e5a7c6",
          To: appoint_list[click_id]["Email"],
          From: "vaniv7397@gmail.com",
          Subject: "Your appoinment is Booked!",
          Body: "Hii your appoinment is Booked please come to the hospital we are waiting for you.",
        }).then((message) =>
          alert("Confirmation mail have been sent to your email")
        );
      }
    </script>

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
