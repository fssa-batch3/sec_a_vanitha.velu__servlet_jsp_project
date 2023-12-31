<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../assets/css/calculator.css" />
    <link
      rel="stylesheet"
      href="<%=request.getContextPath()%>https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <title>Calorie-calculator</title>
  </head>

  <body>

    <header>
        <div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="<%=request.getContextPath()%>/pages/index.jsp">Home </a>
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
      <h2>CALORIE CALCULATOR</h2>
      <div>
        <label for="calories">Calories:</label>
        <input type="number" id="calories" value="340" placeholder="Enter calories" />
      </div>
      <div>
        <label for="carbs">Carbs (g):</label>
        <input type="number" id="carbs" value="4" placeholder="Enter carbs in grams" />
      </div>
      <div>
        <label for="fat">Fat (g):</label>
        <input type="number" id="fat" value="17" placeholder="Enter fat in grams" />
      </div>
      <div>
        <label for="protien">Protien (g):</label>
        <input
          type="number"
          id="protein" value="8"
          placeholder="Enter protien in grams"
        />
      </div>
      <button onclick="calculateTotalCalories()">
        Calculate Total Calories
      </button>
      <div id="result"></div>
    </div>
    <script>
      function calculateTotalCalories() {
        // Get input values
        const calories = parseInt(document.getElementById("calories").value);
        const carbsGrams = parseInt(document.getElementById("carbs").value);
        const fatGrams = parseInt(document.getElementById("fat").value);
        const protienGrams = parseInt(document.getElementById("protien").value);

        // Macronutrient breakdown (calories per gram)
        const carbCaloriesPerGram = 4;
        const fatCaloriesPerGram = 9;
        const protienCaloriesPerGram = 4;

        // Calculate calorie values for each macronutrient
        const carbCalories = carbsGrams * carbCaloriesPerGram;
        const fatCalories = fatGrams * fatCaloriesPerGram;
        const protienCalories = protienGrams * protienCaloriesPerGram;

        // Calculate total calories
        const totalCalories = carbCalories + fatCalories + protienCalories;

        // Display the result
        const resultDiv = document.getElementById("result");
        resultDiv.textContent = `Total Calories: ${totalCalories}`;

        // Reset input values
        document.getElementById("calories").value = "";
        document.getElementById("carbs").value = "";
        document.getElementById("fat").value = "";
        document.getElementById("protien").value = "";
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
