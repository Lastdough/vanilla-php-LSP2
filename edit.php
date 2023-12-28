<?php
session_start();

if (!isset($_SESSION["admin_id"])) {
    header("Location: login.php"); // Redirect to the login page if not logged in
    exit();
}

require_once('config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];
    $title = $_POST["title"];
    $description = $_POST["description"];
    $article = $_POST["article"];
    $picture = $_POST["picture"];
    $status = $_POST["status"];
    $author = $_POST["author"];
    $updated_at = date("Y-m-d");

    $sql = "UPDATE artikel
            SET title = '$title', description = '$description', article = '$article', 
                picture = '$picture', status = '$status', updated_at = '$updated_at', author = '$author'
            WHERE id = $id";

    if ($conn->query($sql) === TRUE) {
        header("Location: index.php");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    $id = $_GET["id"];
    $sql = "SELECT * FROM artikel WHERE id = $id";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
    } else {
        echo "Article not found.";
        exit();
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Edit Article</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container mt-5">
        <h1>Edit Article</h1>
        <form method="POST">
            <input type="hidden" name="id" value="<?php echo $row["id"]; ?>">

            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" name="title" value="<?php echo $row["title"]; ?>" required>
            </div>

            <div class="form-group">
                <label for="description">Description:</label>
                <input type="text" class="form-control" id="description" name="description" value="<?php echo $row["description"]; ?>" required>
            </div>

            <div class="form-group">
                <label for="article">Article:</label>
                <textarea class="form-control" id="article" name="article" rows="4" required><?php echo $row["article"]; ?></textarea>
            </div>

            <div class="form-group">
                <label for="picture">Picture URL:</label>
                <input type="text" class="form-control" id="picture" name="picture" value="<?php echo $row["picture"]; ?>" required>
            </div>

            <div class="form-group">
                <label for="status">Status:</label>
                <select class="form-control" id="status" name="status" required>
                    <option value="1" <?php if ($row["status"] == 1) echo "selected"; ?>>Published</option>
                    <option value="0" <?php if ($row["status"] == 0) echo "selected"; ?>>Draft</option>
                </select>
            </div>

            <div class="form-group">
                <label for="author">Author:</label>
                <input type="text" class="form-control" id="author" name="author" value="<?php echo $row["author"]; ?>" required>
            </div>

            <input type="submit" class="btn btn-primary" value="Save">
        </form>
        <a class="btn btn-secondary" href="index.php">Back to List</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>

</html>