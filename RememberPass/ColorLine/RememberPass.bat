::Configura��es padr�es de apar�ncia do console
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

::Explica��o b�sica sobre o programa e seus fins.
color 0F
echo     Este aplicativo foi criado para que os usu�rios fossem capazes de relembrar senhas armazedas em seus computadores. Pois, � comum que redes wifi cuja senha j� est� salva sejam esquecidas, devido � entrada autom�tica na rede. Mas, por diversas raz�es, o usu�rios podem precisar relembrar qual era a senha utilizada para entrar em determinada rede wifi. Por este motivo foi criado este programa: relembrar senhas ja armazenadas eu seu computador.
echo.

echo     Este programa n�o � capaz de invadir redes ou for�ar quebras de senhas wifi, muito menos � capaz de descobrir senhas de Wifis que nunca foram conectadas a este computador.
echo.

echo     Este programa tem seu c�digo aberto e nenhum dado do usu�rio � enviado para nenhum servidor, muito menos � armazenado a longo prazo. Assim, todos os dados recolhidos do usu�rio s�o armazenados em ambiente local e s�o imediatamente excluidos quando o programa � fechado corretamente. 
echo.

echo     Caso o programa seja fechado incorretamente ou seu processo parado repentinamente, � poss�vel que o arquivo XML contendo as informa��es da rede escolhida n�o seja exclu�do. Nesse caso, recomenda-se exclu�-lo. Esse arquivo sempre ser� gerado no mesmo local em que este programa for executado e ele � extritamente necess�rio para o funcionamento deste programa.
echo.

echo     Este programa deve ser executado em modo ADMINISTRADOR; caso contr�rio, ele ir� fornecer a senha da rede criptografada em formato AES.
echo.
echo.
pause
:perfis
cls
color 0f

::La�o FOR que ir� printar todos os usu�rios WiFi existentes cadastrados da m�quina
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
del profiles.txt & ::Exclui o arquivo residual necess�rio para o funcionamento do la�o FOR.



echo.
echo. 
::Tratamento da Variavel Errolevel e encaminhamento condizente com o resultado 
if %errorlevel% == 0 echo Foram encontrados esses perfis de usu�rio. Por favor, escolha o que voc� deseja saber a senha:
if %errorlevel% == 1 (
    color FC
    echo   N�o foi encontrado nenhum perfil de usu�rio neste computador.
    pause
    goto :eof
)
    
echo.
echo.

::Dica sobre a maneira mais f�cil de colocar o usu�rio escolhido no console
call :cor 0C "[DICA] - copie e cole o perfil desejado"


echo.
::Forma��o da vari�vel %user% a partir da entrada em texto fornecida pelo usu�rio
set /p "user=   >Digite EXATAMENTE como est� escrito o usu�rio que voc� deseja saber a senha>"

cls
         ::Exibe o usu�rio WI-Fi escolhido
echo            ���������������������������������������������������������Ŀ
echo            �Este usu�rio que voc� escolheu est� escrito corretamente?� 
echo            ���������������������������������������������������������ļ
echo                                      �
echo                                      �
echo                                      �
echo                                      �
echo                                      �
echo                                      V
echo   ����������������������������������������������������������������������������
call :cor 0C "                                  %user%"
echo   ����������������������������������������������������������������������������

::Pergunta se o usu�rio foi escrito corretamente. Em caso confirmativo, avan�a; em negativo, retorna ao in�cio.

choice /C "SN" /N /M ">Escolha [S] para prosseguir e [N] para voltar ao in�cio" 
if %errorlevel% equ 2 (goto :perfis) else (goto :senha)

pause>nul

:senha
cls
netsh wlan export profile name="%user%" key=clear
cls

Echo							    ��������������������������ͻ
Echo							    �Sua senha aparecer� abaixo�
echo							    ��������������������������ͼ
echo.											
::Procura a o password (keymaterial) no arquivo Wi-Fi-%user%.xml e joga a sa�da final no arquivo senha.txt			
find /I "keyMaterial" <"Wi-Fi-%user%.xml" >senha.txt

::Inserir informa��es de senha.txt na vari�vel password para tratamento
set /p password=<senha.txt

::Transforma��o dos caracteres > e < em $ para facilitar a transforma��o da frase em uma tabela.
set "password=%password:<=$%"
set "password=%password:>=$%"
 

echo 				����������������������������������������������������������������������
for /f "tokens=3 delims=$" %%a in ("%password%") do (call :cor 0A "                                                               %%a") 
echo 				����������������������������������������������������������������������

 
echo                      c   .(Aqui est� sua senha)                    \0
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
echo                     _  O  _   [O que voc� vai fazer agora? Bom, escolha uma das alternativas abaixo]   
echo                      \_^|_/      
echo                        ^|        
echo                       / \       
echo.
echo                                                                                                                   �O
echo                                                                                                                   �^|\     
echo                                                                                    O/                             �^>
echo                                                          /\____O^>		   ^|_	                          � \
echo 		 ������������������������ͻ         ��������������������������������ͻ\        ������������������������ͻ
echo 		 ��Ŀ                     �         ��Ŀ                             �         ��Ŀ                     �
echo 	      O//��1�   Ir ao in�cio      �O        ��2�    Ir � lista de perfis     �         ��3�  Sair do programa   �
echo 	      // ����                     �^|^|\      ����                             �         ����                     �
echo 	     / /_������������������������ͼ \\_     ��������������������������������ͼ         ������������������������ͼ

echo.
Choice /C "123"
if %errorlevel% equ 1 (goto main)
if %errorlevel% equ 2 (goto perfis)
if %errorlevel% equ 3 (goto bye)





:bye
Echo   ^>Pressione qualquer bot�o para excluir os arquivos residuais e fechar corretamente este programa.
pause >nul

goto :EOF
::Sai do programa






::Fun��o para colorir uma linha �nica no console
exit
:cor
>%2 (set/p=.) <&1
findstr /a:%1 . %2 con &erase %2
for /f "delims=" %%a in ('cmd /k prompt $h$h ^<^&1') do echo %%a
goto:eof