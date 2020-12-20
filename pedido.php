<?php
    $servename = "localhost";
    $username = "root";
    $password = "";
    $database = "fseletro";

    $conn = mysqli_connect ($servename, $username, $password, $database);

    if(!$conn){
        die("A conexão ao Banco de dados falhou: " . mysqli_connect_error());
    }   
    
    if(isset($_POST['cliente']) && isset($_POST['endereco']) && isset($_POST['telefone']) && isset($_POST['produto']) && isset($_POST['preco']) && isset($_POST['quantidade']) && isset($_POST['precototal'])){
        $cliente = $_POST['cliente'];
        $endereco = $_POST['endereco'];
        $telefone = $_POST['telefone'];
        $produto = $_POST['produto'];
        $preco = $_POST['preco'];
        $quantidade = $_POST['quantidade'];
        $precototal = $_POST['precototal'];

        $sql = "insert into pedidos (cliente, endereco, telefone, produto, preco, quantidade, precototal) 
        values ('$cliente', '$endereco', '$telefone', '$produto', '$preco', '$quantidade', '$precototal')";
        $result = $conn->query($sql);
    }
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Pedidos - Full Stack Eletro</title>
        <link rel="stylesheet" type="text/css" href="./css/estilo.css">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.css">
    </head>
    <body>
         <!--Menu-->
        <?php
            include('menu.html');
        ?>
        <section class="container-fluid">
            <h2>Pedidos</h2>
            <hr>
            <h4><a href="produtos.php" style="text-decoration: none; color: red;">Voltar</a></h4>
        </section>
        <br><br><br>

        <form class="container form-group-lg" method="post" action="">
            <label for="nome">Nome:</label>
            <input class="form-control" type="text" id="nome" name="cliente" placeholder="Nome completo">
            <label for="end">Endereço:</label>
            <input class="form-control" id="end" type="text" name="endereco" placeholder="Ex Endereço, Nº">
            <label for="tele">Telefone:</label>
            <input class="form-control" id="tele" type="tel" name="telefone" placeholder="Ex 0000-0000">
            <label for="produ">Nome do Produto:</label>
            <input class="form-control" id="produ" type="text" name="produto" placeholder="Produto">
            <label for="pre">Preço:</label>
            <input class="form-control" id="pre" type="text" name="preco" placeholder="00,00">
            <label for="quant">Quantidade:</label>
            <input class="form-control" id="quant" type="number" name="quantidade" placeholder="0">
            <label for="pretot">Preço Total:</label>
            <input class="form-control" id="pretot" type="text" name="precototal" placeholder="000,00"><br>
            <input class="btn btn-sm btn-danger" type="submit" name="submit" value="Enviar">
        </form>


        <br><br><br><br><br>
        <br><br><br><br><br>
        <br><br><br><br><br>
        <br><br><br><br><br>

        <footer id="rodape">
            <p id="formas_pagamento">Formas de pagamento:</p>
            <img class="img_rodape" src="./imagens/WhatsApp Image 2020-09-22 at 21.19.58 (1).jpeg">
            <p>&copy; Recode Pro</p>
        </footer>
    </body>
    

</html>