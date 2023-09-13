<html>
<body>
<style>

body {
  background-color: white;
  margin: 0;
  font-family: "QuickSand", sans-serif;
}

.wrapper {
  width: 95%;
  max-width: 1000px;
  margin: 0 auto;
}

header {
  background: #03c988;
  color: #ebebd3;
  position: relative;
  padding: 1em 0;
}

header::after {
  content: "";
  clear: both;
  display: block;
}

.logo {
  float: left;
  font-size: 1rem;
  margin: 0;
  text-transform: uppercase;
  font-weight: 900;
}

.logo span {
  font-weight: 400;
}

.main-nav {
  position: absolute;
  top: 100%;
  right: 0;
  left: 0;
  background: #464655;
  height: 0;
  overflow: hidden;
}

.main-nav-open {
  height: auto;
}

.main-nav ul {
  margin: 0;
  padding: 0;
  /* list-style: none; */
}

.main-nav li {
  border-bottom: 1px solid #575766;
}

.main-nav li:last-child {
  border-bottom: none;
}

.main-nav a {
  color: white;
  display: block;
  padding: 1em 1em;
  text-decoration: none;
  text-transform: uppercase;
}

.main-nav a:hover,
.main-nav a:focus {
  background: #e4b363;
  color: #464655;
}

.nav-icon {
  display: inline-block;
  font-size: 1.3em;
  margin-right: 0.5em;
  text-align: center;
  width: 1.1em;
  color: rgba(255, 255, 255, 0.45);
}

.menu-toggle {
  padding: 1em;
  position: absolute;
  top: 0.5em;
  right: 0.2em;
  cursor: pointer;
}
.heart {
  display: flex;
}
#holecontains {
  display: flex;
  margin-top: 30px;
}
.fst {
  margin-top: 25px;
  margin-left: 6em;
}
.fst h2 {
  font-size: 4em;
}
.fst p {
  font-size: 20px;
}

.container2 {
  border: 2px solid black;
  width: 600px;
  height: 300px;
  background-color: rgb(231, 225, 225);
  /* border-radius: 10px; */
  border: 0px;
  margin-left: 450px;
  padding: 30px;
  margin-top: 200px;
  box-shadow: 5px 10px 18px #888888;
}
.container2 h1 {
  text-align: center;
  margin-top: 10px;
}
.container2 h2 {
  color: black;
}

.btn button {
  margin-left: 340px;
  height: 50px;
  width: 150px;
  border: 0px;
  background-color: #03c988;
  color: white;
  cursor: pointer;
}
.btn button:hover {
  background-color: grey;
}

</style>
<header id="header">
      <div class="wrapper">
          <h1 class="logo">WELLNESS<span>DIET</span></h1>
          <nav class="main-nav">
            <ul>
              <li>
                <a href="./index.html">Home </a>
              </li>
              <li>
                <a href="./pages/about2.html">About</a>
              </li>
              <li>
                <a href="./pages/diet2.html">Consultation</a>
              </li>
              <li>
                <a href="./pages/active.html">Create plans</a>
              </li>
              <li>
              <a href="../pages/appoinment_list.html">appointment list</a>
            </li>
              <li>
                <a href="./pages/contact2.html">Contact Us</a>
              </li>
              <li>
                <a href="./pages/profile2.html">Profile</a>
              </li>
              <li>
              <li class="nav_dropdown">
                <a class="drop_btn" href="javascript:void(0)"><div class="nav_dropbtn">Login</div></a>
                <div class="dropdown-content">
                  <a href="./pages/login2.html">Dietitian</a>
                  <a href="./pages/patient_login.html">Patient</a>
               
                </div>
              </li>

            </ul>
          </nav> 
    </header>

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
          <a href="./pages/diet2.html"
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
</body>
</html>
