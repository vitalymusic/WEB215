<?php 
    session_start();
   
    
    if(
        !isset($_SESSION["username"]) 
    && isset($_SESSION["user_logged_in"])
    && $_SESSION["user_logged_in"]!==true){
        header('Location: login.php');
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Panel</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #f4f6f9;
    }

    .sidebar {
      position: fixed;
      left: 0;
      top: 0;
      width: 220px;
      height: 100%;
      background: #2c3e50;
      color: white;
      padding-top: 20px;
    }

    .sidebar h2 {
      text-align: center;
      margin-bottom: 30px;
    }

    .sidebar a {
      display: block;
      padding: 12px 20px;
      color: white;
      text-decoration: none;
    }

    .sidebar a:hover {
      background: #34495e;
    }

    .main-content {
      margin-left: 220px;
      padding: 20px;
    }

    .navbar {
      background: #fff;
      padding: 15px 20px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      margin-bottom: 20px;
    }

    .content {
      background: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    }
  </style>
</head>
<body>

  <div class="sidebar">
    <h2>Admin</h2>
    <h2><?php var_dump($_SESSION);?></h2>
    <a href="#">Dashboard</a>
    <a href="#">Users</a>
    <a href="#">Settings</a>
    <a href="#">Logs</a>
    <a href="#">Logout</a>
  </div>

  <div class="main-content">
    <div class="navbar">
      <strong>Welcome, Admin</strong>
    </div>
    <div class="content">
      <h3>Dashboard</h3>
      <p>This is your admin dashboard. You can manage your site here.</p>
    </div>
  </div>

</body>
</html>
