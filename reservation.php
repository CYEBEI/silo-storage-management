<?php
include_once 'admin/include/class.user.php'; 
$user = new User(); 

if(isset($_REQUEST['submit'])) { 
    extract($_REQUEST); 
    $result = $user->check_available($checkin, $checkout); 
    if(!($result)) { 
        echo $result; 
    } 
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Silo storage</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function() {
            $(".datepicker").datepicker({
                dateFormat: 'yy-mm-dd'
            });
        });
    </script>

    <style>
        .well {
            background: rgba(0, 0, 0, 0.7);
            border: none;
            height: 200px;
        }
        
        body {
            background-color: whitesmoke;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        
        h4 {
            color: #ffbb2b;
        }
        
        h6 {
            color: navajowhite;
            font-family: monospace;
        }
        
        label {
            color: #ffbb2b;
            font-size: 13px;
            font-weight: 100;
        }
    </style>
</head>

<body>
    <div class="container">
        <img class="img-responsive" src="images/l.png" style="width:100%; height:180px;">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="dashboard.php">Home</a></li>
                    <li><a href="room.php">Storage &amp; Facilities</a></li>
                    <li class="active"><a href="reservation.php">Online Storage Reservation</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="http://www.facebook.com"><img src="images/facebook.png"></a></li>
                    <li><a href="http://www.twitter.com"><img src="images/twitter.png"></a></li>
                    <li><a href="logout.php">Logout</a></li>
                </ul>
            </div>
        </nav>

        <div class='row'>
            <div class='col-md-4'></div>
            <div class='col-md-5 well'>
                <form action="" method="post" name="room_category">
                    <div class="form-group">
                        <label for="checkin">Check In :</label>&nbsp;&nbsp;&nbsp;
                        <input type="text" class="datepicker" name="checkin">
                    </div>
                    <div class="form-group">
                        <label for="checkout">Check Out:</label>&nbsp;&nbsp;
                        <input type="text" class="datepicker" name="checkout">
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="submit" class="btn btn-primary button" name="submit">Check Availability</button>
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>

        <?php
        if (isset($_REQUEST['submit'])) {
            $sql = "SELECT * FROM hotel.rooms WHERE booked = false";
            $result = mysqli_query($user->db, $sql);

            if ($result !== null && mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_array($result)) {
                    echo "
                        <div class='row'>
                            <div class='col-md-4'></div>
                            <div class='col-md-5 well'>
                                <h4>" . htmlspecialchars($row['roomname']) . "</h4><hr>
                                <h6>No of Beds: " . htmlspecialchars($row['no_bed']) . " " . htmlspecialchars($row['bedtype']) . " bed.</h6>
                                <h6>Available Stores: " . htmlspecialchars($row['available']) . "</h6>
                                <h6>Facilities: " . htmlspecialchars($row['facility']) . "</h6>
                                <h6>Price: " . htmlspecialchars($row['price']) . " ksh/night.</h6>
                            </div>
                            <div class='col-md-3'>
                                <a href='./booknow.php?roomname=" . htmlspecialchars($row['roomname']) . "'>
                                    <button class='btn btn-primary button'>Book Now</button>
                                </a>
                            </div>
                        </div>
                    ";
                }
            } else {
                echo "No available rooms.";
            }
        }
        ?>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>

</html>