<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>home page</title>

    <link rel="stylesheet" href="../assets/css/style.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
  </head>
  
  <jsp:include page="patient_header.jsp"></jsp:include>  
  <body>

    <div id="holecontains">
      <div class="fst">
        <h2>Get a diet plan that suits your body!</h2>
        <p>
          Our website provides a variety of diet plans to help you achieve your
          fitness goals. Whether you're looking to lose weight, gain muscle, or
          simply maintain a healthy lifestyle, we have a plan that's right for
          you.
        </p>
        <div class="btn">
          <a href="./GetAllDietitianServlet"
            ><button><strong>Book an Appoinment</strong></button></a
          >
        </div>
      </div>

      <section class="heart" id="main">
        <img
          src="https://c0.wallpaperflare.com/preview/587/674/531/heart-health-pulse-fruit.jpg"
          alt=""
        />
      </section>
    </div>

    <div class="testimonals">
      <div class="inner">
        <h1>What people say about us</h1>
        <div class="border"></div>

        <div class="row">
          <div class="col">
            <div class="testimonal">
              <img
                src="<%=request.getContextPath()%>/assets/images/sabana fat.jpg"
                height="200"
                width="200"
                alt=""
              />
              <div class="name">Alsabana</div>
              <div class="stars">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              </div>
              <p>
                I am glad I didn't give up and now have the tools needed to
                maintain my new lifestyle. My weight loss journey started in
                April 2020 because I did not like the way I looked in a picture.
                From April 2020 to August 2020 I lost 18 lbs and I could see the
                difference.
              </p>
            </div>
          </div>

          <div class="col">
            <div class="testimonal">
              <img
                src="<%=request.getContextPath()%>/assets/images/muthu slim.jfif"
                height="200"
                width="200"
                alt=""
              />
              <div class="name">Muthu</div>
              <div class="stars">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              </div>
              <p>
                I am glad I didn't give up and now have the tools needed to
                maintain my new lifestyle. My weight loss journey started in
                April 2020 because I did not like the way I looked in a picture.
                From April 2020 to August 2020 I lost 18 lbs and I could see the
                difference.
              </p>
            </div>
          </div>

          <div class="col">
            <div class="testimonal">
              <img
                src="<%=request.getContextPath()%>/assets/images/aishu.jfif"
                height="200"
                width="200"
                alt=""
              />
              <div class="name">Ishu</div>
              <div class="stars">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              </div>
              <p>
                I am glad I didn't give up and now have the tools needed to
                maintain my new lifestyle. My weight loss journey started in
                April 2020 because I did not like the way I looked in a picture.
                From April 2020 to August 2020 I lost 18 lbs and I could see the
                difference.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="about_us">
      <h1>Best Dietitian & Weight Loss Experts are here!</h1>
      <p>
        Ever wonder what you would really be without all those junk foods and
        gluttonous streaks in the past? Well fortunately it's never too late to
        start again. Eating healthy is the first step towards a healthier,
        vibrant life and Wootu will be there by your side through every step of
        the way. Wootu is the best weight loss consultant which helps to reduce
        weight with a balanced diet plan for every individual. Wootu makes sure
        that you eat right even in your daily hectic schedule. Wootu ensures
        that you will regain your strength and thriving self back. Our
        nutritionists work hard to solve all your dietary troubles and make you
        fit and healthy again.
      </p>
      <div class="btn">
        <a href="./GetAllDietitianServlet"
          ><button><strong>Book an Appoinment</strong></button></a
        >
      </div>
    </div>

    <div class="calculator">
      <div class="main3">
        <table>
          <tr>
            <th>BMI Range</th>
            <th>Classification</th>
          </tr>
          <tr>
            <td>Less than 18.5</td>
            <td>Underweight</td>
          </tr>
          <tr>
            <td>18.5 - 24.9</td>
            <td>Normal weight</td>
          </tr>
          <tr>
            <td>25 - 29.9</td>
            <td>Overweight</td>
          </tr>
          <tr>
            <td>30 or greater</td>
            <td>Obese</td>
          </tr>
        </table>
      </div>
      <div class="bmi">
        <div>
          <h2>BMI Calculator</h2>
          <form>
            <label for="weight">Weight (kg):</label>
            <input type="number" id="weight" name="weight" /><br /><br />

            <label for="height">Height (cm):</label>
            <input type="number" id="height" name="height" /><br />

            <div id="result"></div>
            <button onclick="calculateBMI()">Calculate BMI</button><br />
          </form>
          <img
            src="<%=request.getContextPath()%>/assets/images/bmi-removebg-preview.png"
            width="150"
            height="100"
            alt=""
          />
        </div>
      </div>
    </div>

    <footer class="footer">
      <div class="container4">
        <div class="rap">
          <div class="footer-col">
            <h4>Services</h4>
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
      function calculateBMI() {
        event.preventDefault();
        let weight = parseFloat(document.getElementById("weight").value);
        let height = parseFloat(document.getElementById("height").value) / 100; // Convert cm to m
        let bmi = weight / (height * height);
        document.getElementById("result").innerHTML =
          "Your BMI is " + bmi.toFixed(2);

        if (bmi <= 18) {
          alert(
            "You are in under weight you must do something for improve your health!"
          );
        } else if (bmi >= 18 && bmi <= 25) {
          alert("Everything is cool! you are in healthy weight");
        } else if (bmi >= 25 && bmi <= 29) {
          alert(
            "You are in over weight do something for maintain a healthy weight"
          );
        } else {
          alert(
            "Oh my dear! you got obesity do something for maintain a healthy weight"
          );
        }
      }
    </script>
<script src = "./assets/js/script.js"></script>
  </body>
</html>
