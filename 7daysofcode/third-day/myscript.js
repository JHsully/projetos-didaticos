

        let controle = 1;
        let controle2 = 1;
        let controle3 = 2;

        let carreira = [];    
        let retornoDoUsuario;
        let retornoFluxoFront;
        let retornoFluxoBack;
        let tecnologiasAprendidas = [];
        let listaBase = [];

          //tamanho das listas semelhantes deverá ser igual para que a função que verifica o retorno não de erro.
        let respostasParaFront = ['front','front-end','frontend']
        let respostasParaBack = ['back','back-end','backend',]
        let respostasFluxoFront1 = ['react','rect','ract']
        let respostasFluxoFront2 = ['vue','vuue','vrue']
        let respostasFluxoBack1 = ['c#','c']
        let respostasFluxoBack2 = ['java','jaava']
        let respostasPositivas = ['sim','ok','pode ser','quero',]
        let respostasNegativas = ['nao','não','nao quero','nao desejo',]

        function verificaRetorno (retorno,lista1,lista2){

            for(i = 0; i < lista1.length; i++){
                if(lista1[i] == retorno){
                    return true
                        break;
                }  
                if(lista2[i] == retorno){  
                    return null
                        break;

                }   
            }
        }


        function fluxoFrontEnd(){
            controle3 = 1;
            while (controle3 != 0){
                controle3 = prompt('Dentro da carreira de Front-End, escolha: React ou Vue? \n Caso queira sair digite 0')
                    if(controle3 == 0){
                        break;
                    }
                retornoFluxoFront = controle3.toLowerCase();
                     if (verificaRetorno(retornoFluxoFront,respostasFluxoFront1,listaBase)  && verificaRetorno(retornoFluxoFront,tecnologiasAprendidas,listaBase) != true){
                        alert('Parabêns!   Você aprendeu: \n React!')
                            tecnologiasAprendidas.push('react');
                                                
                    } else {
                        if(verificaRetorno(retornoFluxoFront,respostasFluxoFront2,listaBase)  && verificaRetorno(retornoFluxoFront,tecnologiasAprendidas,listaBase) != true){
                            alert('Parabens! Você aprendeu: \n Vue !')
                                tecnologiasAprendidas.push('vue');
                                            
                    } else {
                        if(verificaRetorno(retornoFluxoFront,tecnologiasAprendidas,listaBase) == true){
                            alert('Tecnologia já aprendida!')
                    } else {
                            alert('Tecnologia não encontrada');
                    }
                    }  
                    }      
            }
            }

            function fluxoBackEnd(){
                controle3 = 1;
                while (controle3 != 0){
                    controle3 = prompt('Dentro da carreira de Back-End, escolha: C# ou Java ? \n Caso queira sair digite 0')
                        if(controle3 == 0){
                            break;
                        }
                    retornoFluxoBack = controle3.toLowerCase();
                         if (verificaRetorno(retornoFluxoBack,respostasFluxoBack1,listaBase)  && verificaRetorno(retornoFluxoBack,tecnologiasAprendidas,listaBase) != true){
                            alert('Parabêns!   Você aprendeu: \n C# !')
                                tecnologiasAprendidas.push('c#');
                                                    
                        } else {
                            if(verificaRetorno(retornoFluxoBack,respostasFluxoBack2,listaBase)  && verificaRetorno(retornoFluxoBack,tecnologiasAprendidas,listaBase) != true){
                                alert('Parabens! Você aprendeu: \n Java !')
                                    tecnologiasAprendidas.push('java');
                                                     
                        } else {
                            if(verificaRetorno(retornoFluxoBack,tecnologiasAprendidas,listaBase) == true){
                                alert('Tecnologia já aprendida!')
                        } else {
                                alert('Tecnologia não encontrada');
                        }
                        }  
                        }      
                }
                }

        while(controle != 0){
           controle2 = 1;   
                if ( (tecnologiasAprendidas.length) > 0){  
                    controle = prompt('Deseja aprender outra tecnologia?')
                        if (verificaRetorno(controle,respostasPositivas,respostasNegativas) == true){
                            controle = prompt('Digite a tecnologia...')
                                tecnologiasAprendidas.push(controle);
                                 alert('Você aprendeu '+ controle +'!')
                        } else {
                            if (verificaRetorno(controle,respostasPositivas,respostasNegativas) === null && (tecnologiasAprendidas.length) > 0){
                                alert('Você Aprendeu: \n'+tecnologiasAprendidas+'\nParabêns!\nPrograma encerrado.');
                                    break;
                        } else {
                            if (controle != 1){
                                alert('Texto digitado não encontrado.')
                            }
                        }  
                        }
                }  
    
            while (controle2 != 0){
                controle2 = prompt('Escolha... Front-End ou Back-End ?\n Caso queria encerrar e ver as tecnologias aprendidas, digite 0')
                    if(controle2 == 0) {
                        break;
                    }

                retornoDoUsuario = controle2.toLowerCase();

                if(verificaRetorno(retornoDoUsuario,respostasParaFront,respostasParaBack)){
                    fluxoFrontEnd();
                
                } else {
                    if (verificaRetorno(retornoDoUsuario,respostasParaFront,respostasParaBack) === null){
                        fluxoBackEnd();   
                
                    } else {
                            alert('Resposta ainda não cadastrada!');
                                controle2 = 0;
                    }
                }
            }
        }
    
        
