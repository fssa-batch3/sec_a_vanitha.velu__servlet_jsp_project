<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dietitian Image Change</title>
    <link rel="stylesheet" href="../assets/css/dietitian_detail.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
      integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="main-wrapper">
      <div class="container">
        <div class="product-div">
          <div class="product-div-left">
            <div class="img-container">
              <img id="dietitian" />
            </div>
          </div>
          <div class="product-div-right">
            <span id="dietitian_name" class="product-name"></span>
            <span id="experience"></span>
            <span id="timing"></span>

            <p id="about" class="product-description"></p>
            <div class="btn-groups">
              <a id="formDetail">
                <button type="submit" class="add-cart-btn">
                  Book appoinment
                </button>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script>
      // get value from URL

      const c_id = window.location.search;
      const c_params = new URLSearchParams(c_id);
      const get_details = c_params.get("id");
      console.log(get_details);

      // get data from localStorage
      let all = JSON.parse(localStorage.getItem("main"));
      console.log("all");

      let selectedUser = all.find(function (event) {
        let diet_id = event["id"];
        if (get_details == diet_id) {
          return true;
        }
      });
      console.log(selectedUser);
      // get value from page
      let image = document.getElementById("dietitian");
      let name = document.getElementById("dietitian_name");
      let years = document.getElementById("experience");
      let about = document.getElementById("about");
      let timing = document.getElementById("timing");

      image.setAttribute("src", selectedUser["img"]);
      name.innerText = selectedUser["name"];
      years.innerText = selectedUser["Experience"];
      timing.innerText = selectedUser["timing"];
      about.innerText = selectedUser["About"];

      const appointment_link = document.getElementById("formDetail");
      appointment_link.setAttribute("href", `./form2.html?id=${get_details}`);
      console.log(appointment_link);
    </script>
  </body>
</html>
