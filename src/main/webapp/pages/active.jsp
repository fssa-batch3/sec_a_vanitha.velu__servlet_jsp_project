<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/active.css" />

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
                <a href="<%=request.getContextPath()%>/pages/active.jsp">Create plans</a>
              </li>
              <li>
                <a href="<%=request.getContextPath()%>/pages/contact2.jsp">Contact Us</a>
              </li>
              
            </ul>
          </nav>
      </header>


      
    <div class="main">
      <form id="diet_plan_form">
        <h2>CREATE PLANS</h2>
        <label for="name">Name:</label>
        <input type="text" id="name" value="Vinit" name="name" required />
        <label for="age">Age:</label>
        <input type="number" value="24" id="age" name="age" required />
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
          <option value="male">Male</option>
          <option value="female">Female</option>
        </select>
        <label for="height" >Height (cm):</label>
        <input type="number" value="167" id="height" name="height" required />
        <label for="weight">Weight (kg):</label>
        <input type="number" value="54" id="weight" name="weight" required />
        <label for="activity_level">Activity Level:</label>
        <select id="activity_level" name="activity_level" required>
          <option value="sedentary">Sedentary</option>
          <option value="moderate">Healthy</option>
          <option value="active">Active</option>
        </select>
        <label for="goal">Goal:</label>
        <select id="goal" name="goal" required>
          <option value="lose-weight">Lose Weight</option>
          <option value="maintain-weight">Maintain Weight</option>
          <option value="gain-weight">Gain Weight</option>
        </select>
        <a href="../pages/weight loss2.html">
          <button type="submit">Create Plan</button></a
        >
      </form>
    </div>

    <div class="active-life-section">
      <div class="image-container">
        <img
          src="https://img.freepik.com/free-photo/slim-beautiful-woman-doing-sports-morning-park-doing-yoga_285396-4349.jpg?size=626&ext=jpg&ga=GA1.2.410745067.1679421520&semt=ais"
          alt="Active Life Image"
        />
      </div>
      <div class="content">
        <h2>Active Life Section</h2>
        <p>
          Active living is a lifestyle that integrates physical activity into
          everyday routines, such as walking to the store or biking to work.
          Active living is not a formalized exercise program or routine, but
          instead means to incorporate physical activity, which is defined as
          any form of movement, into everyday life. Active living brings
          together urban planners, architects, transportation engineers, public
          health professionals, activists and other professionals to build
          places that encourage active living and physical activity. One example
          includes efforts to build sidewalks, crosswalks, pedestrian crossing
          signals, and other ways for children to walk safely to and from
          school, as seen in the Safe Routes to School program. Recreational
          opportunities (parks, fitness centres etc.) close to the home or
          workplace, walking trails, and bike lanes for transportation also
          contribute to a more active lifestyle. Active living includes any
          physical activity or recreation activity and contributes to a
          healthier lifestyle. Furthermore, active living addresses health
          concerns, such as obesity and chronic disease, by helping people have
          a physically active lifestyle. Communities that support active living
          gain health benefits, economic advantages, and improved quality of
          life.
        </p>
        <button class="btn">Learn More</button>
      </div>
    </div>

    <div class="active-life-section">
      <div class="image-container">
        <img
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ6drGuMm0fR4BguzVIRDhHkBWslu3YNE9G31CL0HnZw&usqp=CAU&ec=48665701" 
          alt="Active Life Image"
        />
      </div>
      <div class="content">
        <h2>Healthy Life Section</h2>
        <p>
          A healthy diet may contain fruits, vegetables, and whole grains, and may include little to no processed food or sweetened beverages. The requirements for a healthy diet can be met from a variety of plant-based and animal-based foods, although additional sources of vitamin B12 are needed for those following a vegan diet.[4] Various nutrition guides are published by medical and governmental institutions to educate individuals on what they should be eating to be healthy. Nutrition facts labels are also mandatory in some countries to allow consumers to choose between foods based on the components relevant to health.
        </p>
        <button class="btn">Learn More</button>
      </div>
    </div>

    <div class="active-life-section">
      <div class="image-container">
        <img
          src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcS6ap_i7vHvO7DMcbsw4VaaJTScStX-B1xdArH5kLyw&usqp=CAU&ec=48665701" 
          alt="Active Life Image"
        />
      </div>
      <div class="content">
        <h2>Sedentary Life style</h2>
        <p>
          Active living is a lifestyle that integrates physical activity into
          everyday routines, such as walking to the store or biking to work.
          Active living is not a formalized exercise program or routine, but
          instead means to incorporate physical activity, which is defined as
          any form of movement, into everyday life. Active living brings
          together urban planners, architects, transportation engineers, public
          health professionals, activists and other professionals to build
          places that encourage active living and physical activity. One example
          includes efforts to build sidewalks, crosswalks, pedestrian crossing
          signals, and other ways for children to walk safely to and from
          school, as seen in the Safe Routes to School program. Recreational
          opportunities (parks, fitness centres etc.) close to the home or
          workplace, walking trails, and bike lanes for transportation also
          contribute to a more active lifestyle. Active living includes any
          physical activity or recreation activity and contributes to a
          healthier lifestyle. Furthermore, active living addresses health
          concerns, such as obesity and chronic disease, by helping people have
          a physically active lifestyle. Communities that support active living
          gain health benefits, economic advantages, and improved quality of
          life.
        </p>
        <button class="btn">Learn More</button>
      </div>
    </div>



    <script>
      const form = document.getElementById("diet_plan_form");

      const arr = [];
      let diet_obj = {};

      form.addEventListener("submit", (event) => {
        event.preventDefault();

        const name = document.getElementById("name").value;
        const age = document.getElementById("age").value;
        const gender = document.getElementById("gender").value;
        const height = document.getElementById("height").value;
        const weight = document.getElementById("weight").value;
        const activityLevel = document.getElementById("activity_level").value;
        const goal = document.getElementById("goal").value;

        let diet_obj = {
          name,
          age,
          gender,
          height,
          weight,
          activity_level,
          goal,
        };

        console.log(diet_obj);

        if (window.localStorage.getItem("diet_details") === null) {
          arr.push(diet_obj);
          window.localStorage.setItem("diet_details", JSON.stringify(arr));
        } else {
          let local = window.localStorage.getItem("diet_details");
          let json = JSON.parse(local);
          arr.push(diet_obj);

          json.push(arr);
          window.localStorage.setItem("diet_details", JSON.stringify(json));
          alert("Successfully posted");
          window.location.href="../pages/weight loss2.jsp";
        }
        
      });
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
