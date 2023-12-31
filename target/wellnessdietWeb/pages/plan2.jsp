<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>create your plans</title>
    <link rel="stylesheet" href="../assets/css/plan2.css" />
  </head>
  <body>
    <div class="main">
      <form id="diet_plan_form">
        <h2>CREATE PLANS</h2>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required />
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required />
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
          <option value="male">Male</option>
          <option value="female">Female</option>
        </select>
        <label for="height">Height (cm):</label>
        <input type="number" id="height" name="height" required />
        <label for="weight">Weight (kg):</label>
        <input type="number" id="weight" name="weight" required />
        <label for="activity_level">Activity Level:</label>
        <select id="activity_level" name="activity_level" required>
          <option value="sedentary">Sedentary</option>
          <option value="moderate">Moderate</option>
          <option value="active">Active</option>
        </select>
        <label for="goal">Goal:</label>
        <select id="goal" name="goal" required>
          <option value="lose-weight">Lose Weight</option>
          <option value="maintain-weight">Maintain Weight</option>
          <option value="gain-weight">Gain Weight</option>
        </select>
        <a href="./weight loss2.html">
          <button type="submit">Create Plan</button></a
        >
      </form>
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
          window.open("/weight loss2.jsp");
        }
      });
    </script>
  </body>
</html>
-
