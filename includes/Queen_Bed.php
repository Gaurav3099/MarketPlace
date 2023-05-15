<?php session_start();  include_once 'dbconnect.php';?>
<?php
    $result = $conn->query("SELECT * FROM Products where productId = 58");
    $prod = $result -> fetch_assoc();
    $hits = $prod["productHits"] + 1;
    $conn->query("UPDATE Products SET productHits = ".$hits." WHERE productId = 58");    
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
               $custvisited = $custvisited.",G58";
           }
           else
           {
               $custvisited = $custvisited."G58";
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
    <title>Queen Bed | Furniture Store</title>
</head>
<body class="parisPage">
    <?php $page='Paris'; include 'navbar.php' ?>
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
                <img src="../img/arrivals8.png" alt="1_paris" class="d-block" style="width:100%">
                
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
            <h4 class="Desctext">Description</h4>
            <p class="longDesc">
            A large-sized bed designed to accommodate two people comfortably.
            <br>
            <br>
            A queen bed is a type of bed that is larger than a standard double bed but smaller than a king-sized bed. It is designed to accommodate two people comfortably, providing ample space for a good night's sleep. Queen beds come in a variety of styles, from traditional to modern, and can be found in various materials, including wood, metal, and upholstered fabrics. These beds often have a headboard and footboard, and some models have built-in storage underneath.
            </p>
        </div>
    </div>

    <div class="bottomContainer">
        <div class="containerHeader">
            <h3 class="reviewsText">Reviews</h4>
            <?php 
                $sql = "SELECT * FROM Products WHERE productID = 58";
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
            $sql = "SELECT * FROM Ratings WHERE productID = 58";
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