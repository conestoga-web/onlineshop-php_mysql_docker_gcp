<?php

    require('util.php'); // redirect() was declared in the file
    require('db.php'); // session_start() was already called in the file.

    if(isset($_GET['productID'])) {
		$bno = $_GET['productID']; // Assign the product id from URL to a variable      
    } else {
        $bno = 1; // default product id
    }

    $_SESSION['productID'] = $bno;

    // Select the product id taken
    $sql = mq("select * from inventory where productID='".$bno."'"); 
    $shopinfo = $sql->fetch_array();

    // Set the session data -> assign the records from DB to each session variable
    $_SESSION['name'] = $shopinfo['name'];
    $_SESSION['imageFile'] = $shopinfo['imageFile'];
    $_SESSION['description'] = $shopinfo['description'];
    $_SESSION['specification'] = $shopinfo['specification'];
    $_SESSION['colour'] = $shopinfo['colour'];
    $_SESSION['onHand'] = $shopinfo['onHand'];
    $_SESSION['warranty'] = $shopinfo['warranty'];
    $_SESSION['unitPrice'] = $shopinfo['unitPrice'];

    // Redirect to the checkout page
    redirect('checkout.php');
?>