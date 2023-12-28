<?php
session_start();

if (!isset($_SESSION["admin_id"])) {
    header("Location: login.php"); // Redirect to the login page if not logged in
    exit();
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Dashboard</title>
</head>

<body>
    <div class="container mt-5">
        <h1>Welcome, <?php echo $_SESSION["username"]; ?></h1>
        <!-- Add content for the dashboard here -->
        <a href="logout.php" class="btn btn-danger">Logout</a>
    </div>
</body>

</html>