<?php
require_once('config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $sql = "SELECT * FROM admin WHERE username = '$username'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        $storedPassword = $row["password"];

        if (password_verify($password, $storedPassword)) {
            // Authentication successful
            session_start();
            $_SESSION["admin_id"] = $row["admin_id"];
            $_SESSION["username"] = $row["username"];
            header("Location: index.php"); // Redirect to the dashboard
            exit();
        } else {
            echo "Invalid password. <a href='login.php'>Try Again</a>";
        }
    } else {
        echo "User not found. <a href='login.php'>Try Again</a>";
    }
}
