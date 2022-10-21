<?php


    $nomeUsuario = ($_POST['nomeUsuario']);

    $dataUsuario = ($_POST['dataDeNascimento']);
   
    $dataUsuario = explode('-', $dataUsuario);

    $dataSignoUsuario = $dataUsuario[1]."/".$dataUsuario[2];




        $signos = simplexml_load_file('http://localhost/testesignos/signos.xml');

   foreach($signos -> signo as $signo){

            $dataInicio = explode('/', $signo->dataInicio);

            $dataINICIOform = $dataInicio[1]."/".$dataInicio[0];

            $dataFim = explode('/', $signo->dataFim);

            $dataFIMform = $dataFim[1]."/".$dataFim[0];
                
            if(strtotime($dataSignoUsuario) >= strtotime($dataINICIOform) && strtotime($dataSignoUsuario) <= strtotime($dataFIMform)){

                echo" <br><br>Olá: " . $nomeUsuario . "! <br><br> Seja bem vindo!";
            
                echo " <br><br> Com base na sua data de nacimento em:<br><br>". $dataSignoUsuario . "<br><br> você é do signo de:<br><br> ". $signo->signoNome;
            
                echo "<br><br>Quanto a descrição do seu signo, segue abaixo :<br><br><br> ".$signo->descricao;
            }

   }


?>