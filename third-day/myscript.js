

        let controle = 1;
        let controle2 = 1;
        let controle3 = 1;

        //tamanho das duas listas deverá ser igual para que a função verificaRetorno não de erro.
        let respostasParaFront = ['front','front-end','frontend']
        let respostasParaBack = ['back','back-end','backend',]


        function verificaRetorno (retorno,lista1,lista2){

            for(i = 0; i < respostasParaBack.length; i++){
                if(respostasParaFront[i] == retornoDoUsuario){
                        return true;
                }  
                if(respostasParaBack[i] == retornoDoUsuario){
                        return null;
                } else {
                    i = 5;
                    alert ('Texto digitado não encontrado!');
                }  
            }
        }
                
       while(controle != 0){
           controle2 = 1;

            while (controle2 != 0){
                controle = prompt('Escolha... Front-End ou Back-End ?                      Caso queria encerrar , digite 0')
                    if (controle = 0){
                        break;
                    }
                retornoDoUsuario = controle.toLowerCase();

            if(verificaRetorno(retornoDoUsuario,respostasParaFront,respostasParaBack)){
                    fluxoFrontEnd();
            } else {
                if (verificaRetorno(retornoDoUsuario,respostasParaFront,respostasParaBack) === null){
                    fluxoBackEnd();
            } else {
                    controle2 = 0;
            }
            }
            }
        }

