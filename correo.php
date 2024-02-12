<?php
$para      = 'jevinvega@gmail.com';
$titulo    = 'the subject';
$mensaje   = 'La vida de un critico es bastante gilipollas fdfdfdf xd';
$cabeceras = 'From: vegatesteo@gmail.com' . "\r\n" .
             'Reply-To: vegatesteo@gmail.com' . "\r\n" .
             'X-Mailer: PHP/' . phpversion();

    mail($para, $titulo, $mensaje , $cabeceras);
  
?>