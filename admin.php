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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>  

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
    <a href="./admin.php">Dashboard</a>
    <a href="./admin.php?page=users">Users</a>
    <a href="#">Settings</a>
    <a href="#">Logs</a>
    <a href="data.php?logout=true">Logout</a>
  </div>

  <div class="main-content">
    <div class="navbar">
      <strong>Welcome, Admin</strong>
    </div>
    <div class="content">
     
      <?php if(isset($_GET["page"]) && $_GET["page"]=="users"): ?>
        <h3>Users</h3>

        <table>
          <tr>

          </tr>

        </table>
      <?php endif ?>  

      <?php if(!isset($_GET["page"])): ?>
        <h3>Dashboard</h3>  

      <p>This is your admin dashboard. You can manage your site here.</p>

      <?php endif ?>  



    </div>
  </div>

</body>
</html>
