<?php

    include("conecta.php");
    
    $id_prod = $_POST["id_prod"];
    $nome_prod = $_POST["nome_prod"];
    $fabricante_prod = $_POST["fabricante_prod"];
    $validade_prod = $_POST["validade_prod"];
    $desc_prod = $_POST["desc_prod"];
    $valor_prod = $_POST["valor_prod"];

    if(isset($_POST["Inserir"]))
    {
    $comando = $pdo->prepare("INSERT INTO produtos(nome_prod,fabricante_prod,validade_prod,desc_prod,valor_prod) VALUES('$nome_prod','$fabricante_prod','$validade_prod','$desc_prod','$valor_prod')");
    $resultado = $comando->execute();
    header("Location: cadastro_produto.html");
    }

    if(isset($_POST["Excluir"]))
    {
    $comando = $pdo->prepare("DELETE FROM produtos where id_prod=$id_prod");
    $resultado = $comando->execute();
    header("Location: cadastro_produto.html");
    }
    if(isset($_POST["Alterar"]))
    {
    $comando = $pdo->prepare("UPDATE produtos SET nome_prod='$nome_prod', fabricante_prod='$fabricante_prod', validade_prod='$validade_prod', desc_prod='$desc_prod', valor_prod='$valor_prod' WHERE id_prod=$id_prod");
    $resultado = $comando->execute();
    header("Location: cadastro_produto.html");
    }
    
    if(isset($_POST["Pesquisar"]))
    {
        $comando = $pdo->prepare("SELECT * FROM produtos where id_prod=$id_prod");

        $resultado = $comando->execute();
        while ($linhas = $comando->fetch())
    {
        
            $n = $linhas["nome_prod"];
            $f = $linhas["fabricante_prod"];
            $v = $linhas["validade_prod"];
            $d = $linhas["desc_prod"];
            $id = $linhas["id_prod"];
            echo($id);
            $valor = $linhas["valor_prod"];
            if($id>0)
            {
            echo("<br> <b>$n</b> $f $v $d $id $valor <br> <br>");
            }
            else
            {
                header("Location:cadastro_produto.html");
            }
    }
    }


?>