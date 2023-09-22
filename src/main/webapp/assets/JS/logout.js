function logout_link() {
    if (confirm("Are you sure you want to logout?")) {
        localStorage.removeItem("login_user");
        window.location.href = "LogoutServlet";
    }
    console.log(indexpage)
}