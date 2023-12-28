<?php
require_once('config.php');

$sql = "SELECT * FROM artikel";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html>

<head>
    <title>Article List</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-5">
        <h1>Article</h1>
        <div class="row">
            <?php
            while ($row = $result->fetch_assoc()) {
            ?>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="<?php echo $row['picture']; ?>" class="card-img-top" alt="Article Image">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $row['title']; ?></h5>
                            <p class="card-text"><?php echo $row['description']; ?></p>
                            <a href="view_article.php?id=<?php echo $row['id']; ?>" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
</body>

</html>