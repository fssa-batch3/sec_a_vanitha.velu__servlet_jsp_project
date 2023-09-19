<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Doctor Appointment</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }
  .container {
    max-width: 600px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    margin-top: 50px;
  }
  label, input, select {
    display: block;
    margin-bottom: 10px;
  }
  input, select {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  button {
    padding: 10px 20px;
    background-color: #03c988;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  button:hover {
    background-color: #1c5a87;
  }
</style>
</head>
<body>

<div class="container">
  <h2>Dietitian Appointment</h2>
  <form action="submit_appointment" method="post">
    <label for="patientName">Patient Name</label>
    <input type="text" id="patientName" name="patientName" required>

    <label for="email">Email</label>
    <input type="email" id="email" name="email" required>

    <label for="address">Address</label>
    <input type="text" id="address" name="address" required>

    <label for="problem">Problem</label>
    <select id="problem" name="problem" required>
      <option value="Gain">Weight gain</option>
      <option value="loss">Weight loss</option>
      <option value="ordinary">Ordinary</option>
      <!-- Add more options as needed -->
    </select>

    <label for="branch">Branch Name</label>
    <select id="branch" name="branch" required>
      <option value="Main Clinic">Chennai</option>
      <option value="Branch 1">Perungudi</option>
      <option value="Branch 2">T.nagar</option>
      <!-- Add more options as needed -->
    </select>

    <label for="dateTime">Date and Time</label>
    <input type="datetime-local" id="dateTime" name="dateTime" required>

    <button type="submit">Submit Appointment</button>
  </form>
</div>

</body>
</html>
