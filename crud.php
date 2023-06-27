<?php

    include("conecta.php");

    $cpf = $_POST["cpf"];
    $email = $_POST["Email"];
    $usuario = $_POST["Usuario"];
    $cep = $_POST["CEP"];
    $senha = $_POST["Senha"];

    $comando = $pdo->prepare("INSERT INTO cadastros(CPF,Email,Usuario,CEP,Senha) VALUES('$cpf','$email','$usuario','$cep','$senha')");
    $resultado = $comando->execute();

    // para voltar no forms
    header("Location: login.html");
?>