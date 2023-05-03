<?php

    include("conecta.php");
    
    $cpf = $_POST["CPF"];
    $email = $_POST["Email"];
    $usuario = $_POST["Usuario"];
    $senha = $_POST["Senha"];
    $cep = $_POST["CEP"];
    $id_cadastro = $_POST["id_cadastro"];

    if(isset($_POST["Excluir"]))
    {
    $comando = $pdo->prepare("DELETE FROM cadastros where id_cadastro=$id_cadastro");
    $resultado = $comando->execute();
    header("Location: cadastro_adm.html");
    }
    if(isset($_POST["Alterar"]))
    {
    $comando = $pdo->prepare("UPDATE cadastros SET CPF='$cpf', Email='$email', Usuario='$usuario', Senha='$senha', CEP='$cep' WHERE id_cadastro=$id_cadastro");
    $resultado = $comando->execute();
    header("Location: cadastro_adm.html");
    }
    
    if(isset($_POST["Pesquisar"]))
    {
        $comando = $pdo->prepare("SELECT * FROM cadastros where id_cadastro=$id_cadastro");

        $resultado = $comando->execute();
        while ($linhas = $comando->fetch())
    {
        
            $c = $linhas["CPF"];
            $e = $linhas["Email"];
            $u = $linhas["Usuario"];
            $s = $linhas["Senha"];
            $id = $linhas["id_cadastro"];
            echo($id);
            $cep = $linhas["CEP"];
            if($id>0)
            {
            echo("<br> <b>$c</b> $e $u $s $id $cep <br> <br>");
            }
            else
            {
                header("Location:cadastro_adm.html");
            }
    }
    }


?>