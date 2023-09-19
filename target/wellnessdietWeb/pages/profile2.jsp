<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>profile</title>
    <link rel="stylesheet" href="../assets/css/profile2.css" />
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
              <a href="./appoinment_list.html">Appoinment List</a>
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
    <div class="container">

      <form id="editForm">
        <div class="input">
          <label for="name">Name:</label>
          <input id="name" class="input_edit" type="text" />
        </div>
        <div class="input">
          <label for="phnumber">Number:</label>
          <input id="phnumber" class="input_edit" value="9876543210" type="number" />
        </div>
        <div class="input">
          <label for="qualification">Qualification:</label>
          <input id="qualification" class="input_edit" value="Dietitian" type="text" />
        </div>
        <div class="input">
          <label for="specialization">Specialization:</label>
          <input id="specialization" class="input_edit" value="Co-Founder" type="text" />
        </div>
        <div class="input">
          <label for="email">Email:</label>
          <input id="email" class="input_edit" type="email" />
        </div>
        <div class="input">
          <label for="password">Password:</label>
          <input id="password" class="input_edit" value="234567" type="password" />
        </div>
        
       
        <div class="btn">
          <button type="submit">Save</button>
          <button class="edit_btn" onclick="edit()">Edit</button>
          <button id="delete">DELETE</button>
          <button id="logout-btn">Log Out</button>
        </div>
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
      let oneUser = JSON.parse(localStorage.getItem("login"));
      console.log(oneUser);
      // for array
      let Array = JSON.parse(localStorage.getItem("signUp"));
      let selectedUser = Array.find(function (event) {
        let emailValue = event["user_id"];
        if (oneUser == emailValue) {
          return true;
        }
      });
      console.log(selectedUser);
      let name = document.getElementById("name");
      let phoneNumber = document.getElementById("phnumber");
      let email = document.getElementById("email");
      let specialization = document.getElementById("specialization");
      let qualification = document.getElementById("qualification");
      let address = document.getElementById("address");

      email.value = selectedUser["user_email"];
      phoneNumber.value = selectedUser["phoneNumber"];
      name.value = selectedUser["user_name"];
      specialization.value = selectedUser["specialization"];
      qualification.value = selectedUser["qualification"];
     

      let pForm = document.getElementById("editForm");
      pForm.addEventListener("submit", function (event) {
        event.preventDefault();
        let name = document.getElementById("name").value;
        let phoneNumber = document.getElementById("phnumber").value;
        let email = document.getElementById("email").value;
        let specialization = document.getElementById("specialization").value;
        let qualification = document.getElementById("qualification").value;
       

        let newData = {
          name,
          phoneNumber,
          email,
          specialization,
          qualification,
        };
        let combinedData = Object.assign(selectedUser, newData);
        console.log(combinedData);
        let findIndex = Array.indexOf(selectedUser);
        console.log(findIndex);
        Array[findIndex] = combinedData;
        localStorage.setItem("signUp", JSON.stringify(Array));
        alert("successfully changed");
      });

      //

      let delete_user = document.getElementById("delete");
      delete_user.addEventListener("click", function (event) {
        event.preventDefault();
        let indexDel = Array.indexOf(selectedUser);
        let msg = confirm("Are you sure you want to delete this account");
        if (msg !== true) {
          return;
        } else {
          Array.splice(indexDel, 1);
          console.log(Array);
          localStorage.setItem("signUp", JSON.stringify(Array));
        }
      });

      let logout = document.getElementById("logout-btn");
logout.addEventListener("click", function (e) {
  localStorage.removeItem("patient_login");
  window.location.href="../patient_index.jsp";
})

    </script>
  </body>
</html>
