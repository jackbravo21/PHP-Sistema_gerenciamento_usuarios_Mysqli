<?php 

session_start();
session_destroy();

echo "<script>alert('Sessão Finalizada!'); location.replace('../index.php');</script>";


 ?>