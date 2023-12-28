<?php
session_start();

if (!isset($_SESSION["admin_id"])) {
    header("Location: login.php"); // Redirect to the login page if not logged in
    exit();
}

require_once('config.php');

// Check if 'id' parameter is set in the URL
if (isset($_GET["id"])) {
    $article_id = $_GET["id"];

    // Retrieve the article details from the database
    $sql = "SELECT * FROM artikel WHERE id = $article_id";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        $title = $row["title"];
        $description = $row["description"];
        $content = $row["article"];
        $author = $row["author"];
        $publish_date = $row["created_at"];

        // Display the article details
?>
        <!DOCTYPE html>
        <html>

        <head>
            <title><?php echo $title; ?></title>
            <!-- Add Bootstrap CSS -->
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        </head>

        <body>
            <div class="container mt-5">
                <img src="<?php echo $row['picture']; ?>" class="" alt="Article Image">
                <h1><?php echo $title; ?></h1>
                <p><?php echo $description; ?></p>
                <p>Author: <?php echo $author; ?></p>
                <p>Publish Date: <?php echo $publish_date; ?></p>
                <hr>
                <div><?php echo $content; ?></div>
                <a class="btn btn-secondary" href="index.php">Back to Article List</a>
            </div>
        </body>

        </html>
<?php
        exit();
    } else {
        // Article not found
        echo "Article not found. <a href='index.php'>Back to Article List</a>";
    }
} else {
    // 'id' parameter not set
    echo "Invalid request. <a href='index.php'>Back to Article List</a>";
}
?>