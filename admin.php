<?php 
    include_once('database.php');


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
     
      <?php if(isset($_GET["page"]) && $_GET["page"]=="users") :?>
        <h3>Users</h3>

        <table class="table table-bordered">
          <tr>
              <td>Name</td>
              <td>Surname</td>
              <td>Email</td>
              <td>Phone</td>
          </tr>

          <!-- PHP -->

          <?php 
            $sql = "SELECT * FROM `sample_users` ORDER BY `sample_users`.`id` ASC";

            $result = $conn->query($sql);
  

            if ($result->num_rows > 0) {
              // output data of each row
              while($row = $result->fetch_assoc()): ?>
                <tr>
                  <td><?= $row["firstName"]?></td>
                  <td><?= $row["lastName"]?></td>
                  <td><?= $row["email"]?></td>
                  <td><?= $row["phone"]?></td>
                  <td><a href="./admin.php?page=edit&userid=<?= $row["id"]?>" class="btn btn-primary">Edit User data</a></td>
                <tr>
                
                <?php  endwhile;
            } else {
              echo "0 results";
            }
            ?>
        </table>

      <?php  endif ?> 


      <?php if(!isset($_GET["page"])): ?>
        <h3>Dashboard</h3>  

      <p>This is your admin dashboard. You can manage your site here.</p>

      <?php endif ?>  



      <!-- edit user -->


      <?php if(isset($_GET["page"]) && $_GET["page"]=="edit") :?>

          <?php 
            $sql = "SELECT * FROM `sample_users` where id={$_GET["userid"]}";

            $result = $conn->query($sql);
  

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                // var_dump($row);
            }
            
          ?>




        <h3>Edit user</h3>

            <!-- CRUD -->

        <form action="./admin.php" method="POST">
            <input type="hidden" name="id" value="<?=$row["id"]?>">
            <input type="hidden" name="action" value="update">
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" name="name" id="name" placeholder="Enter name" value="<?=$row["firstName"]?>">
      </div>
      <div class="mb-3">
        <label for="surname" class="form-label">Surname</label>
        <input type="text" class="form-control" name="surname" id="surname" placeholder="Enter surname" value="<?=$row["lastName"]?>">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" value="<?=$row["email"]?>">
      </div>
      <div class="mb-3">
        <label for="phone" class="form-label">Phone</label>
        <input type="tel" class="form-control" name="phone" id="phone" placeholder="Enter phone number" value="<?=$row["phone"]?>">
      </div>
      <button type="submit" class="btn btn-primary">Save Changes</button>
      <button  class="btn btn-danger" id="delUser" data-id="<?=$row["id"]?>">Delete User</button>
    </form>

    <script>
        document.querySelector("#delUser").onclick = (e)=>{
          let userId = e.target.dataset.id;
          if(confirm("Are you sure?")){
            fetch("./admin.php?action=delete&userID="+userId);
            location.reload("admin.php?page=users");
          }
        }
    </script>



      <?php endif ?>    





    </div>
  </div>

</body>
</html>


<?php 
  if(isset($_POST["id"]) && isset($_POST["action"])){
    if($_POST["id"]!=="" && $_POST["action"]=="update"){
      $firstName = mysqli_real_escape_string($conn,$_POST["name"]);
      $lastName = mysqli_real_escape_string($conn,$_POST["surname"]);
      $email = mysqli_real_escape_string($conn,$_POST["email"]);
      $phone = mysqli_real_escape_string($conn,$_POST["phone"]);


    $sql = "UPDATE `sample_users` SET 
    `firstName`='{$firstName}',
    `lastName`='{$lastName}',
    `email`='{$email}',
    `phone`='{$phone}' where id={$_POST["id"]}";
    $result = $conn->query($sql);
    

    if(!$result){
        echo $conn->error;
    }
    else{
      header("Location:./admin.php?page=users");
    }

  }
}


if(isset($_GET["action"]) && isset($_GET["userID"]))
{
  if($_GET["action"]=="delete" &&  $_GET["id"] !== ""){
    $id = mysqli_real_escape_string($conn,$_GET["userID"]);
    $sql = "DELETE FROM `sample_users` WHERE id={$id}";
    $result = $conn->query($sql);
    
    if(!$result){
        echo $conn->error;
    }
  }

}



// Add new User




?>