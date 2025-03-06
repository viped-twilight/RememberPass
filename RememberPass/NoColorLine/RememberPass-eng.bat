::Default console appearance settings
:main
@echo off
MODE CON: COLS=168 LINES=38
color 0A
title Remember Your Passwords
echo.

:: Program theme introduction
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

:: Basic explanation of the program and its purpose.
color 0F
echo     This application was created to help users recall passwords stored on their computers. It is common for Wi-Fi networks whose passwords are saved to be forgotten due to automatic network login. However, for various reasons, users may need to remember the password used to access a particular Wi-Fi network. This program was created for this purpose: to recall passwords that have already been stored on your computer.
echo.

echo     This program is not capable of hacking networks or cracking Wi-Fi passwords, nor can it discover passwords for Wi-Fi networks that have never been connected to this computer.
echo.

echo     This program has open-source code, and no user data is sent to any server, nor is it stored long-term. All data collected from the user is stored locally and is immediately deleted when the program is properly closed.
echo.

echo     If the program is closed incorrectly or its process is suddenly stopped, the XML file containing the information of the chosen network might not be deleted. In this case, it is recommended to delete it. This file is always generated in the same location where the program is executed, and it is strictly necessary for the operation of this program.
echo.

echo     This program must be run as ADMINISTRATOR; otherwise, it will provide the network password in AES encrypted format.
echo.
echo.
pause
:profiles
cls
color 0f

:: FOR loop that will print all registered Wi-Fi user profiles on the machine
netsh wlan show profiles key=clear >profiles.txt 

setlocal ENABLEDELAYEDEXPANSION
set position=0
for /f "tokens=2 delims=: skip=9" %%a in ( 
	profiles.txt 
	) do ( 
	set /a position+=1
	ECHO [!position!] %%a
	)

endlocal
del profiles.txt & :: Deletes the residual file required for the FOR loop to work.

echo.
echo. 
:: Handling the Errorlevel variable and the appropriate result
if %errorlevel% == 0 echo These user profiles were found. Please choose the one you want to know the password for:
if %errorlevel% == 1 (
    color FC
    echo   No user profiles were found on this computer.
    pause
    goto :eof
)
    
echo.
echo.

:: Tip about the easiest way to paste the chosen user profile in the console
call :color 0C "[TIP] - copy and paste the desired profile"

echo.
:: Forming the %user% variable based on the text input provided by the user
set /p "user=   >Enter EXACTLY as the user is written the profile you want the password for>"

cls
         :: Display the chosen Wi-Fi user profile
echo            ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo            ³Is this user profile written correctly?                  ³ 
echo            ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¼
echo                                      ³
echo                                      ³
echo                                      ³
echo                                      ³
echo                                      ³
echo                                      V
echo   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
call :color 0C "                                  %user%"
echo   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

:: Asking if the user was written correctly. If confirmed, proceed; if not, return to the start.

choice /C "SN" /N /M ">Press [S] to continue and [N] to go back to the start" 
if %errorlevel% equ 2 (goto :profiles) else (goto :password)

pause>nul

:password
cls
netsh wlan export profile name="%user%" key=clear
cls

Echo							    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» 
Echo							    ºYour password appears belowº 
echo							    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ 
echo.											
:: Finds the password (keyMaterial) in the Wi-Fi-%user%.xml file and outputs the final result to the senha.txt file
find /I "keyMaterial" <"Wi-Fi-%user%.xml" >senha.txt

:: Inserts password information into the variable password for processing
set /p password=<senha.txt

:: Replaces characters > and < with $ to make it easier to format the string into a table.
set "password=%password:<=$%"
set "password=%password:>=$%"

echo 				ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
for /f "tokens=3 delims=$" %%a in ("%password%") do (ECHO                                                                %%a) 
echo 				ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

echo                      c   .(Here is your password)                  \0
echo                     ^<\\/                                            ^|\ 
echo                      ^|\                                            / \ 
echo                     / /                                  

:: Deletes all created files
del "Wi-Fi-%user%.xml"
del "senha.txt"
echo.
echo.

echo.
echo.
echo.
echo                     _  What will you do now? Choose one of the following options:
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
echo 	      O//º³1³   Go to the start   ºO        º³2³  Go to the list of profiles º         º³3³  Exit the program   º
echo 	      // ºÀÄÙ                     º^|^|\      ºÀÄÙ                             º         ºÀÄÙ                     º
echo 	     / /_ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ \\_     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼         ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

echo.
Choice /C "123"
if %errorlevel% equ 1 (goto main)
if %errorlevel% equ 2 (goto profiles)
if %errorlevel% equ 3 (goto bye)

:bye
Echo   ^>Press any button to delete residual files and correctly close this program.
pause >nul

goto :EOF
:: Exits the program

::Function to color a single line in the console
exit
:color
>%2 (set/p=.) <&1
findstr /a:%1 . %2 con &erase %2
for /f "delims=" %%a in ('cmd /k prompt $h$h ^<^&1') do echo %%a
goto:eof
