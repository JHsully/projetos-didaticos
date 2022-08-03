

        let controle = 1;
        let controle2 = 1;
        let controle3 = 2;

        let carreira = [];    
        let retornoDoUsuario;
        let retornoFluxoFront;
        let retornoFluxoBack;
        let tecnologiasAprendidas = [];

          //tamanho das listas semelhantes deverá ser igual para que a função que verifica o retorno não de erro.
        let respostasParaFront = ['front','front-end','frontend']
        let respostasParaBack = ['back','back-end','backend',]
        let respostasFluxoFront1 = ['react','rect','ract']
        let respostasFluxoFront2 = ['vue','vuue','vrue']
        let respostasFluxoBack = ['c#','c','java','jaava','']
        let respostasPositivas = ['sim','ok','pode ser','quero',]
        let respostasNegativas = ['nao','não','nao quero','nao desejo',]

        function verificaRetorno (retorno,lista1,lista2){

            for(i = 0; i < lista1.length; i++){
                if(lista1[i] == retorno){
                    return true;
                }  
                if(lista2[i] == retorno){  
                    return null;

                } else {            
                    break;
                }  
            }
        }
        function fluxoFrontEnd(){
            controle3 = 1;
            while (controle3 != 0){
            
             
            controle3 = prompt('Dentro da carreira de Front-End, escolha: React ou Vue? Caso queira sair digite 0')
                    if(controle3 == 0){
                        break;
                    }

            retornoFluxoFront = controle3.toLowerCase();
            if (verificaRetorno(retornoFluxoFront,respostasFluxoFront1,respostasFluxoFront2) || retornoFluxoFront != tecnologiasAprendidas){
               
                alert('Parabêns!                               Você aprendeu React!')
                    controle3 =- 1;
                        tecnologiasAprendidas.push('React');
                            controle3 = prompt('Deseja aprender outra teconologia em Front-End? Caso queira sair digite 0')
                                if(verificaRetorno(controle3,respostasNegativas,respostasPositivas || controle3 == 0)){
                                    controle3 = 0;
                                    break;
                            }   
            } else {
                if (verificaRetorno(retornoFluxoFront,respostasFluxoFront1,respostasFluxoFront2) == null || retornoFluxoFront != tecnologiasAprendidas ){
                alert('Parabens!                                 Você aprendeu Vue !')
                    controle3 =- 1;
                        tecnologiasAprendidas.push('Vue');
                            controle3 = prompt('Deseja aprender outra teconologia em Front-End? Caso queira sair digite 0')
                               if(verificaRetorno(controle3,respostasNegativas,respostasPositivas || controle3 == 0)){
                                    controle3 = 0;
                                    break;
                            }
                } else {
                    if (retornoFluxoFront != tecnologiasAprendidas){
                        alert('Tecnologia já estudada!')
                    } else {
                        alert ('Texto digitado não cadastrado!');
                    }      
                 }
            }               
            }
        }
        
        function fluxoBackEnd(){
            while (controle != 0){
            controle = prompt('Dentro da carreira de Front-End, escolha: React ou Vue? ')
                    if(controle == 0){
                        break;
                    }
            retornoFluxoFront = controle.toLowerCase();
            if (verificaRetorno(retornoFluxoFront,respostasFluxoFront1,respostasFluxoFront2)){
                alert('Pabens!Você aprendeu Vue!')
                tecnologiasAprendidas.push('Vue')
                controle = prompt('Deseja aprender outra teconologia em Front-End? Caso queira sair digite 0')
            } else {
                alert('Parabens! Você aprendeu React!')
                tecnologiasAprendidas.push('React')
                controle = prompt('Deseja aprender outra teconologia em Front-End? Caso queira sair digite 0')
            }                

            } 
        } 

        while(controle != 0){
           controle2 = 1;

            while (controle2 != 0){
                controle = prompt('Escolha... Front-End ou Back-End ?                      Caso queria encerrar , digite 0')
                    if(controle == 0){
                        break;
                    }

                retornoDoUsuario = controle.toLowerCase();

            if(verificaRetorno(retornoDoUsuario,respostasParaFront,respostasParaBack)){
                carreira.push('Front-End')
                fluxoFrontEnd();
            } else {
                
            if (verificaRetorno(retornoDoUsuario,respostasParaFront,respostasParaBack) === null){
                carreira.push('Back-End')
                fluxoBackEnd();   
                
            } else {
                    alert('Resposta ainda não cadastrada!');
                    controle2 = 0;
            }
            }
            }
        }
