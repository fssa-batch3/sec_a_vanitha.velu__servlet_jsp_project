<%@page import="com.fssa.wellnessdiet.model.User"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css" />
<%
String loggedInEmail = (String) session.getAttribute("loggedInEmail");
if (loggedInEmail == null) {
%>

<header id="header">
	<div class="wrapper">
		<h1 class="logo">
			WELLNESS<span>DIET</span>
		</h1>
		<nav class="main-nav">
			<ul>
				<li><a href="<%=request.getContextPath()%>/patient_index.jsp">Home </a></li>
				<li><a href="<%=request.getContextPath()%>/pages/about2.jsp">About</a></li>

				<li><a href="<%=request.getContextPath()%>/pages/active.jsp">Create plans</a></li>

				<li><a href="<%=request.getContextPath()%>/pages/contact2.jsp">Contact Us</a></li>
				<li><a href="../patient_login.jsp">Login</a></li>
			</ul>
		</nav>
	</div>
</header>
<%
} else {
%>
<header id="header">
	<div class="wrapper">
		<h1 class="logo">
			WELLNESS<span>DIET</span>
		</h1>
		<nav class="main-nav">
			<ul>
				<li><a href="./patient_index.jsp">Home </a></li>
				<li><a href="<%=request.getContextPath()%>/pages/about2.jsp">About</a></li>
				<li><a href="<%=request.getContextPath()%>/GetAllDietitianServlet">Consultation</a></li>
				<li><a href="<%=request.getContextPath()%>/pages/active.jsp">Create plans</a></li>
				<li><a href="<%=request.getContextPath()%>/pages/patient_profile.jsp">Profile</a></li>
				<li><a href="<%=request.getContextPath()%>/pages/contact2.jsp">Contact Us</a></li>
				<li><a href="<%= request.getContextPath() %>/LogoutServlet">Log out</a></li>
			</ul>
		</nav>
	</div>
</header>
<%
}
%>

