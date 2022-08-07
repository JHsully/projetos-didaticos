
        let numeroRandomico = 0;
        let numeroDigitado;
        let controle = 3;
        let controle0 = 1;
        let controle3 = 1;
        let controle4 = 0;
        let maximo = 10;
        let minimo = 0;
        let retornoDoUsuario;
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

        function comparaResultado(x,y){
            if (x == y){
                return true;
            } else {
                return null;
            }
        }
    
            while (controle0 != 0){
                numeroRandomico = Math.floor(Math.random() * (maximo - minimo + 1) + minimo)
                    alert(numeroRandomico);
                    controle4 = 0;

                    for (i=3; i > 0; i--){

                        numeroDigitado = prompt('Pensei em um numero de ' + minimo + ' até ' + maximo + '. Tente advinhar qual foi!')
                        comparaResultado(numeroRandomico,numeroDigitado)
            
                        if (comparaResultado(numeroRandomico,numeroDigitado) && i == 3){
                            alert('Parabêns Você Acertou de primeira!!!')
                                controle4 = 1    
                                    break;
                                
                        } else {
            
                        }   if (comparaResultado(numeroRandomico,numeroDigitado) && i != 3){
                                alert('Parabêns Você Acertou!')
                                    controle4 = 1     
                                        break ;
                                
                        } else {
                                alert('Você não acertou! Mas tem ainda ' + (i - 1) + ' chances.')
                                    
                        }
                    } 

                    if (controle4 != 1){
                            alert('O numero correto era: ' + numeroRandomico )
                    }

                    if (controle3 != 0){
                        retornoDoUsuario = prompt('Deseja tentar novamente? ')
                            if (verificaRetorno(retornoDoUsuario,respostasPositivas,respostasNegativas) == true){
                                continue;
                            } else {
                                if (verificaRetorno(retornoDoUsuario,respostasPositivas,respostasNegativas) == null){
                                    alert('OK! \n Programa encerrado.')
                                        controle1 = 0
                                            break;       
                                }
                            }
                    }  
            }  
        
