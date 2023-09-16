<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/form.css" />
  </head>
  <body>
    <div class="main">
    <form id="form">
      <div class="inputBox">
        <input id="image" type="text" name="" required="required" />
        <span>Image Url</span>
      </div>

      <div class="inputBox">
        <input id="docname" type="text" name="" required="required" />
        <span>Doctor Name</span>
      </div>
      <div class="inputBox">
        <input id="Special" type="text" name="" required="required" />
        <span>specialist</span>
      </div>
      <div class="inputBox">
        <input id="experience" type="text" name="" required="required" />
        <span>Experience</span>
      </div>
      <div class="inputBox">
        <input id="timing" type="text" name="" required="required" />
        <span>Timing</span>
      </div>
      <div class="inputBox">
        <input id="about" type="text" name="" required="required" />
        <span>About</span>
      </div>
      <button type="submit" class="btn5">Send</button>
    </div>
    </form>
    <script>
      document.getElementById("form").addEventListener("submit", (event) => {
        event.preventDefault();
        let arr = [];

        if (localStorage.getItem("main") != null) {
          arr = JSON.parse(localStorage.getItem("main"));
        }

        let img = document.getElementById("image").value;

        let name = document.getElementById("docname").value;

        let spl = document.getElementById("Special").value;

        let Experience = document.getElementById("experience").value;

        let About = document.getElementById("about").value;

        let timing = document.getElementById("timing").value;

        let dietId = Date.now();
        console.log("dietId");

        let mainObject = {
          img,
          name,
          spl,
          Experience,
          timing,
          About,
          id: dietId,
        };

        arr.push(mainObject);
        localStorage.setItem("main", JSON.stringify(arr));
      });
    </script>
  </body>
</html>
