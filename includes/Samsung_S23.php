<?php session_start();  include_once 'dbconnect.php';?>
<?php
    $result = $conn->query("SELECT * FROM Products where productId = 63");
    $prod = $result -> fetch_assoc();
    $hits = $prod["productHits"] + 1;
    $conn->query("UPDATE Products SET productHits = ".$hits." WHERE productId = 63");    
    //$conn->close();
?>

<?php 
   if(isset($_SESSION["isSecure"]))
   {
       if($_SESSION["isSecure"])
       {
           $currentUserName = $_SESSION["user"];
           $result = $conn->query("SELECT * FROM UsersList where userName = '".$currentUserName."'");
           $customer = $result -> fetch_assoc();
           $custvisited = $customer["visited"];
           if(isset($custvisited) && $custvisited!="")
           {
               //$custvisitedarr = explode(",",$custvisited);
               //if(!in_array("A1",$custvisitedarr))
               $custvisited = $custvisited.",B18";
           }
           else
           {
               $custvisited = $custvisited."B18";
           }
           $conn->query("UPDATE UsersList SET visited = '".$custvisited."' WHERE userName = '".$currentUserName."'");    
           //$conn->close();
       }
   }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include 'head.php' ?>
    <title>Samsung S23 Ultra</title>
</head>
<body class="drawingPage">
    <?php $page='Drawing'; include 'navbar.php' ?>
    <div class="topContainer">
        <!-- Carousel -->
        <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
            <!-- Indicators/dots -->
            <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../img/s23ultra.jpeg" alt="Drawing1" class="d-block" style="width:100%">
            </div>
            
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
            </button>
        </div>

        <div class="longDescContainer">
            <h4 class="Desctext">Samsung S23 Ultra</h4>
            <p class="longDesc">
            S Series has a legacy of pushing the boundaries of what a smartphone can do. And with Galaxy S23 Ultra, we’re raising that bar again. Galaxy S23 Ultra is more than the next big step in mobile tech. With the crystal-clear camera resolution on a phone and stunning Night Mode powered by Nightography, you can share those big moments no matter the lighting. Plus, with the fastest Snapdragon processor yet, juggle high-intensity games, multiple apps or video calls with ease. Write, sketch, edit, create and share from anywhere with a built-in S Pen. And do all of the above on an incredibly large display built for gaming, streaming, creating and doing. Enhance your day-to-day with a device that’s anything but ordinary, and share the epic with Galaxy S23 Ultra.
            </p>
        </div>
    </div>

    <div class="bottomContainer">
    <div class="containerHeader">
        <h3 class="reviewsText">Reviews</h4>
        <?php 
            $sql = "SELECT * FROM Products WHERE productID = 63";
            $result = mysqli_query($conn, $sql);
            $rows = mysqli_num_rows($result);
            if($rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    echo "<div class='reviewContainer'>\n";
                        echo"<h4 style='margin-right:1em'>Average Rating</h4>";
                        for($i = 1; $i<=5; $i++)
                        {
                            $roundedRating = ceil($row["productAvgRating"]);
                            echo "<i class='fa fa-star ";
                            if($i <= $roundedRating)
                            {
                                echo "checked";
                            }
                            else
                            {
                                echo "unchecked";
                            }
                            echo"'></i>\n";
                        }
                echo "</div>\n";
                }
            }
        ?>
    </div>
        <?php 
            $sql = "SELECT * FROM Ratings WHERE productID = 63";
            $result = mysqli_query($conn, $sql);
            $rows = mysqli_num_rows($result);
            if($rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    echo "<div class='topReviewContainer'>\n";
                        echo "<div class='ratingContainer'>\n";
                            echo "<h4 class='currentUser'>".$row['userName']."</h4>";

                            for($i=1; $i<=5; $i++)
                            {
                                echo "<i class='fa fa-star ";
                                
                                if($i <= $row['rating'])
                                {
                                    echo "checked";
                                }
                                else
                                {
                                    echo "unchecked";
                                }
                                echo"'></i>\n";
                            }
                        echo "</div>\n";

                        echo "<div class='reviewContainer'>\n";
                            echo "<p class='reviewText'>".$row['review']."</p>";
                        echo "</div>\n";
                    echo "</div>\n";
                }
            }
        ?>
    </div>
</body>