::Configurações padrões de aparência do console
:main
@echo off
MODE CON: COLS=168 LINES=38
color 0A
title Remember Yours Passwords
echo.


:: Abertura tema deste programa     

echo     .,,uod8B8bou,,.                                                    
echo                  ..,uod8BBBBBBBBBBBBBBBBRPFT?l!:.                           ___                                   _                
echo             ,=m8BBBBBBBBBBBBBBBRPFT?!^|^|^|^|^|^|^|^|^|^|^|^|^|^|                        ^|  _ \                                ( )               
echo             !...:!TVBBBRPFT^|^|^|^|^|^|^|^|^|^|!!^^""'   ^|^|^|^|                         ^| (_) )  __   ___ ___    __   ___ ___ ^| ^|_     __  _ __ 
echo             !.......:!?^|^|^|^|^|!!^^""'             ^|^|^|^|                        ^|    / / __ \  _   _  \/ __ \  _   _  \  _ \ / __ \  __)
echo             !.........^|^|^|^|                      ^|^|^|^|                       ^| ^|\ \(  ___/ ( ) ( ) ^|  ___/ ( ) ( ) ^| ^|_) )  ___/ ^|   
echo             !.........^|^|^|^|  ##                 ^|^|^|^|                        (_) (_)\____)_) (_) (_)\____)_) (_) (_)_ __/ \____)_)   
echo             !.........^|^|^|^|                     ^|^|^|^|                                                                                
echo             !.........^|^|^|^|                     ^|^|^|^|                                                                                
echo             !.........^|^|^|^|                     ^|^|^|^|                         _     _                       
echo             !.........^|^|^|^|                     ^|^|^|^|                        ( )   ( )                      
echo             `.........^|^|^|^|                    ,^|^|^|^|                         \ \_/ /   _   _   _ _ __  ___ 
echo              .;.......^|^|^|^|               _.-!!^|^|^|^|^|                           \ /   / _ \( ) ( )  __)  __)
echo       .,uodWBBBBb.....^|^|^|^|       _.-!!^|^|^|^|^|^|^|^|^|!:'                            ^| ^|  ( (_) ) (_) ^| ^|  \__  \
echo     YBBBBBBBBBBBBBBb..!^|^|^|:..-!!^|^|^|^|^|^|^|!of68BBBBBb....                        (_)   \___/ \___/(_)  (____/
echo     ..YBBBBBBBBBBBBBBb!!^|^|^|^|^|^|^|^|!of68BBBBBBRPFT?!::   `.                                                 
echo     ....YBBBBBBBBBBBBBBbaatf68BBBBBBRPFT?!:::::::::     `.                                               
echo     ......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^"`;:::       `.               ___                                            _      
echo     ........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         BBbo.         (  _ \                                         ( )     
echo     ..........YBRPFT?!::::::::::::::::::::::::;of68bo.      WBBBBbo.      ^| ^|_) )  _ _  ___  ___ _   _   _   _   _ __   _^| ^| ___ 
echo      `..........:::::::::::::::::::::::;of688888888888b.     `YBBBP^'      ^|  __/ / _  )  __)  __) ) ( ) ( )/ _ \(  __)/ _  ^|  __)
echo        `........::::::::::::::::;of688888888888888888888b.     `          ^| ^|   ( (_^| ^|__  \__  \ \_/ \_/ ^| (_) ) ^|  ( (_^| ^|__  \
echo          `......:::::::::;of688888888888888888888888888888b.              (_)    \__ _)____/____/\__/\___/ \___/(_)   \__ _)____/
echo            `....:::;of688888888888888888888888888888888899fT!                                                                    
echo              `..::!8888888888888888888888888888888899fT^|!^"'                               
echo                `' !!988888888888888888888888899fT^|!^"'                  
echo                    `!!8888888888888888899fT^|!^"'                        
echo                      `!988888888899fT^|!^"'                              
echo                        `!9899fT^|!^"'                                    
echo                          `!^"'                                          
echo. 					

						 
pause
cls                                                                                                            
echo.
echo.

::Explicação básica sobre o programa e seus fins.
color 0F
echo     Este aplicativo foi criado para que os usu rios fossem capazes de relembrar senhas armazedas em seus computadores. Pois, ‚ comum que redes wifi cuja senha j  est  salva sejam esquecidas, devido … entrada autom tica na rede. Mas, por diversas razäes, o usu rios podem precisar relembrar qual era a senha utilizada para entrar em determinada rede wifi. Por este motivo foi criado este programa: relembrar senhas ja armazenadas eu seu computador.
echo.

echo     Este programa nÆo ‚ capaz de invadir redes ou for‡ar quebras de senhas wifi, muito menos ‚ capaz de descobrir senhas de Wifis que nunca foram conectadas a este computador.
echo.

echo     Este programa tem seu c¢digo aberto e nenhum dado do usu rio ‚ enviado para nenhum servidor, muito menos ‚ armazenado a longo prazo. Assim, todos os dados recolhidos do usu rio sÆo armazenados em ambiente local e sÆo imediatamente excluidos quando o programa ‚ fechado corretamente. 
echo.

echo     Caso o programa seja fechado incorretamente ou seu processo parado repentinamente, ‚ poss¡vel que o arquivo XML contendo as informa‡äes da rede escolhida nÆo seja exclu¡do. Nesse caso, recomenda-se exclu¡-lo. Esse arquivo sempre ser  gerado no mesmo local em que este programa for executado e ele ‚ extritamente necess rio para o funcionamento deste programa.
echo.

echo     Este programa deve ser executado em modo ADMINISTRADOR; caso contr rio, ele ir  fornecer a senha da rede criptografada em formato AES.
echo.
echo.
pause
:perfis
cls
color 0f

::Laço FOR que irá printar todos os usuários WiFi existentes cadastrados da máquina
netsh wlan show profiles key=clear >profiles.txt 

setlocal ENABLEDELAYEDEXPANSION
set posicion=0
for /f "tokens=2 delims=: skip=9" %%a in ( 
	profiles.txt 
	) do ( 
	set /a posicion+=1
	call :cor 0B "[!posicion!] %%a"
	)

endlocal
del profiles.txt & ::Exclui o arquivo residual necessário para o funcionamento do laço FOR.



echo.
echo. 
::Tratamento da Variavel Errolevel e encaminhamento condizente com o resultado 
if %errorlevel% == 0 echo Foram encontrados esses perfis de usu rio. Por favor, escolha o que vocˆ deseja saber a senha:
if %errorlevel% == 1 (
    color FC
    echo   NÆo foi encontrado nenhum perfil de usu rio neste computador.
    pause
    goto :eof
)
    
echo.
echo.

::Dica sobre a maneira mais fácil de colocar o usuário escolhido no console
call :cor 0C "[DICA] - copie e cole o perfil desejado"


echo.
::Formação da variável %user% a partir da entrada em texto fornecida pelo usuário
set /p "user=   >Digite EXATAMENTE como est  escrito o usu rio que vocˆ deseja saber a senha>"

cls
         ::Exibe o usuário WI-Fi escolhido
echo            ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo            ³Este usu rio que vocˆ escolheu est  escrito corretamente?³ 
echo            ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¼
echo                                      ³
echo                                      ³
echo                                      ³
echo                                      ³
echo                                      ³
echo                                      V
echo   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
call :cor 0C "                                  %user%"
echo   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

::Pergunta se o usuário foi escrito corretamente. Em caso confirmativo, avança; em negativo, retorna ao início.

choice /C "SN" /N /M ">Escolha [S] para prosseguir e [N] para voltar ao in¡cio" 
if %errorlevel% equ 2 (goto :perfis) else (goto :senha)

pause>nul

:senha
cls
netsh wlan export profile name="%user%" key=clear
cls

Echo							    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
Echo							    ºSua senha aparecer  abaixoº
echo							    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.											
::Procura a o password (keymaterial) no arquivo Wi-Fi-%user%.xml e joga a saída final no arquivo senha.txt			
find /I "keyMaterial" <"Wi-Fi-%user%.xml" >senha.txt

::Inserir informações de senha.txt na variável password para tratamento
set /p password=<senha.txt

::Transformação dos caracteres > e < em $ para facilitar a transformação da frase em uma tabela.
set "password=%password:<=$%"
set "password=%password:>=$%"
 

echo 				ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
for /f "tokens=3 delims=$" %%a in ("%password%") do (call :cor 0A "                                                               %%a") 
echo 				ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

 
echo                      c   .(Aqui est  sua senha)                    \0
echo                     ^<\\/                                            ^|\
echo                      ^|\                                            / \
echo                     / /                                   

::Deleta todos os arquivos criados
del "Wi-Fi-%user%.xml"
del "senha.txt"
echo.
echo.

echo.
echo.
echo.
echo                     _  O  _   [O que vocˆ vai fazer agora? Bom, escolha uma das alternativas abaixo]   
echo                      \_^|_/      
echo                        ^|        
echo                       / \       
echo.
echo                                                                                                                   ±O
echo                                                                                                                   ±^|\     
echo                                                                                    O/                             ±^>
echo                                                          /\____O^>		   ^|_	                          ± \
echo 		 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»         ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»\        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo 		 ºÚÄ¿                     º         ºÚÄ¿                             º         ºÚÄ¿                     º
echo 	      O//º³1³   Ir ao in¡cio      ºO        º³2³    Ir … lista de perfis     º         º³3³  Sair do programa   º
echo 	      // ºÀÄÙ                     º^|^|\      ºÀÄÙ                             º         ºÀÄÙ                     º
echo 	     / /_ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ \\_     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼         ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

echo.
Choice /C "123"
if %errorlevel% equ 1 (goto main)
if %errorlevel% equ 2 (goto perfis)
if %errorlevel% equ 3 (goto bye)





:bye
Echo   ^>Pressione qualquer botÆo para excluir os arquivos residuais e fechar corretamente este programa.
pause >nul

goto :EOF
::Sai do programa






::Função para colorir uma linha única no console
exit
:cor
>%2 (set/p=.) <&1
findstr /a:%1 . %2 con &erase %2
for /f "delims=" %%a in ('cmd /k prompt $h$h ^<^&1') do echo %%a
goto:eof