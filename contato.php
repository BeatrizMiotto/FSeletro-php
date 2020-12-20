<?php
    $servename = "localhost";
    $username = "root";
    $password = "";
    $database = "fseletro";

    $conn = mysqli_connect ($servename, $username, $password, $database);

    if(!$conn){
        die("A conexão ao Banco de dados falhou: " . mysqli_connect_error());
    }   
    
    if(isset($_POST['nome']) && isset($_POST['msg'])){
        $nome = $_POST['nome'];
        $msg = $_POST['msg'];

        $sql = "insert into comentarios (nome, msg) values ('$nome', '$msg')";
        $result = $conn->query($sql);
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>contato - Full Stack Eletro</title>
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
            <h2>Fale Conosco</h2>
        </section>

        <table class="container-fluid table">
            <tr>
                <td  id="contato" >
                    <img src="./imagens/email imagem.png" width="40px">contato@fullstackeletro.com
                </td>

                <td id="contato">
                    <img src="./imagens/whats.png" width="30px">(11) 99999-9999
                </td>
            </tr>
        </table>
        <br><br><br>
        <form class="container form-group-lg" method="post" action="">
            <label for="nome">Nome:</label>  
            <input type="text" id="nome" name="nome" class="form-control" placeholder="Nome">
            <label for="msg">Mensagem:</label>                    
            <input id="msg" type="text" name="msg" class="form-control" placeholder="Escreva sua mensagem"><br>
            <input class="btn btn-danger btn-sm" type="submit" name="submit" value="Enviar">
        </form>
        
        <br><br><br><br><br>
        <br><br><br><br><br>



    <section class="container">
        <?php
            $sql = "select * from comentarios";
            $result = $conn->query($sql);
                
            if($result->num_rows >0){
                while($rows = $result->fetch_assoc()){
                    echo "Data: ", $rows['data'], "<br>";
                    echo "Nome: ", $rows['nome'], "<br>";
                     echo "Mensagem: ", $rows['msg'], "<br>";
                    echo "<hr>";
                }
            }else{
                echo "Nenhum comentário ainda!";
                }
        ?>
    </section>
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