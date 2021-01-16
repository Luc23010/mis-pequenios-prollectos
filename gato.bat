@echo off
color a
echo picha culaquier tecla para continuar
echo gato..
echo
echo creado por lucas.R
echo.
echo lests start
pause
echo
:menup
cls
color A
echo.
echo.
echo.
echo.
echo.
echo.
echo 1. 1 Jugador
echo 2. 2 Jugadores
set /p "pl=>"
if %pl%==[%1]==[] goto no
if %pl%==1 goto tateti
if %pl%==2 goto tateti2
if %pl%==1234 goto Privado
if %pl%==worms (goto worms) else goto no

:no
echo Tecla no v lida
pause>nul
goto menup

:tateti
set suario=0
set omputador=0
set mpates=0
set circulo=O
set cruz=X

:escoje
cls
echo.
echo   Escoje
echo 1   --   X
echo 0   --   O
set /p jugad=  
if %jugad%==[%1]==[] goto eki  
if %jugad%==1 goto cru
if %jugad%==0 goto circu
if %jugad%==1234 (goto Privado)
if %jugad%==worms (goto worms) else (goto eki)

:eki
echo.
echo  Esa tecla no es valida
pause>nul
goto escoje

:cru
set jugada=X
set computadores=O
goto randomize

:circu
set jugada=O
set computadores=X
goto randomize

:randomize
set guion=-
set uno=-
set dos=-
set tres=-
set cuatro=-
set cinco=-
set seis=-
set siete=-
set ocho=-
set nueve=-
set one=1
set two=2
set three=3
set four=4
set five=5
set six=6
set seven=7
set eight=8
set nine=9
set /a rand=%random%
if %rand% leq 2000 goto compu
if %rand% leq 4000 goto inicio
if %rand% leq 6000 goto compu
if %rand% leq 8000 goto inicio
if %rand% leq 10000 goto compu
if %rand% leq 12000 goto inicio
if %rand% leq 14000 goto compu
if %rand% leq 16000 goto inicio
if %rand% leq 18000 goto compu
if %rand% leq 20000 goto inicio
if %rand% leq 22000 goto compu
if %rand% leq 24000 goto inicio
if %rand% leq 26000 goto compu
if %rand% leq 28000 goto inicio
if %rand% leq 30000 goto compu
if %rand% leq 32000 goto inicio
if %rand% leq 34000 goto compu

:inicio
cls
echo.
echo    " " " " " " " " " " " " " " " " " " "
echo    "                                   "
echo    "              |     |              "
echo    "           %siete%  |  %ocho%  |  %nueve%           "       Estos son los numeros:
echo    "          ____|_____|____          "
echo    "              |     |              "
echo    "           %cuatro%  |  %cinco%  |  %seis%           "                           7  8  9
echo    "          ____|_____|____          "   Usuario    :  %suario%
echo    "              |     |              "                           4  5  6
echo    "           %uno%  |  %dos%  |  %tres%           "   Computador :  %omputador%
echo    "              |     |              "                           1  2  3
echo    "                                   "   Empates    :  %mpates%
echo    " " " " " " " " " " " " " " " " " " "
echo Presione M para Menu principal
echo Presione Q para salir
echo -------------------------------------------------------------------

if %uno%%dos%%tres%==%computadores%%computadores%%computadores% goto fin_compu
if %cuatro%%cinco%%seis%==%computadores%%computadores%%computadores% goto fin_compu
if %siete%%ocho%%nueve%==%computadores%%computadores%%computadores% goto fin_compu
if %uno%%cuatro%%siete%==%computadores%%computadores%%computadores% goto fin_compu
if %dos%%cinco%%ocho%==%computadores%%computadores%%computadores% goto fin_compu
if %tres%%seis%%nueve%==%computadores%%computadores%%computadores% goto fin_compu
if %cinco%%siete%%tres%==%computadores%%computadores%%computadores% goto fin_compu
if %nueve%%cinco%%uno%==%computadores%%computadores%%computadores% goto fin_compu

if %uno%==%guion% goto usuario_juega
if %dos%==%guion% goto usuario_juega
if %tres%==%guion% goto usuario_juega
if %cuatro%==%guion% goto usuario_juega
if %cinco%==%guion% goto usuario_juega
if %seis%==%guion% goto usuario_juega
if %siete%==%guion% goto usuario_juega
if %ocho%==%guion% goto usuario_juega
if %nueve%==%guion% (goto usuario_juega) else (goto empate)

:usuario_juega
echo   Juegas con %jugada%
echo.
set /p usuario=  elige tu jugada (1-9):  
if %usuario%==[%1]==[] goto otro
if %usuario%==%one% (goto usuario_uno)
if %usuario%==%two% (goto usuario_dos)
if %usuario%==%three% (goto usuario_tres)
if %usuario%==%four% (goto usuario_cuatro)
if %usuario%==%five% (goto usuario_cinco)
if %usuario%==%six% (goto usuario_seis)
if %usuario%==%seven% (goto usuario_siete)
if %usuario%==%eight% (goto usuario_ocho)
if %usuario%==%nine% (goto usuario_nueve)
if %usuario%==1234 (goto Privado)
if %usuario%==Q goto exit
if %usuario%==q goto exit
if %usuario%==M goto menup
if %usuario%==m goto menup
if %usuario%==worms (goto worms) else (goto otro)

:otro
echo.
echo  Esa tecla no es valida
pause>nul
goto inicio

:usuario_uno
if %uno%==%circulo% (goto ocu)
if %uno%==%cruz% (goto ocu)
set uno=%jugada%
goto compu

:usuario_dos
if %dos%==%circulo% (goto ocu)
if %dos%==%cruz% (goto ocu)
set dos=%jugada%
goto compu

:usuario_tres
if %tres%==%circulo% (goto ocu)
if %tres%==%cruz% (goto ocu)
set tres=%jugada%
goto compu

:usuario_cuatro
if %cuatro%==%circulo% (goto ocu)
if %cuatro%==%cruz% (goto ocu)
set cuatro=%jugada%
goto compu

:usuario_cinco
if %cinco%==%circulo% (goto ocu)
if %cinco%==%cruz% (goto ocu)
set cinco=%jugada%
goto compu

:usuario_seis
if %seis%==%circulo% (goto ocu)
if %seis%==%cruz% (goto ocu)
set seis=%jugada%
goto compu

:usuario_siete
if %siete%==%circulo% (goto ocu)
if %siete%==%cruz% (goto ocu)
set siete=%jugada%
goto compu

:usuario_ocho
if %ocho%==%circulo% (goto ocu)
if %ocho%==%cruz% (goto ocu)
set ocho=%jugada%
goto compu

:usuario_nueve
if %nueve%==%circulo% (goto ocu)
if %nueve%==%cruz% (goto ocu)
set nueve=%jugada%
goto compu

:ocu
echo.
echo Esta casilla ya esta ocupada
pause>nul
goto inicio

:compu
if %uno%%dos%%tres%==%jugada%%jugada%%jugada% goto fin_usu
if %cuatro%%cinco%%seis%==%jugada%%jugada%%jugada% goto fin_usu
if %siete%%ocho%%nueve%==%jugada%%jugada%%jugada% goto fin_usu
if %uno%%cuatro%%siete%==%jugada%%jugada%%jugada% goto fin_usu
if %dos%%cinco%%ocho%==%jugada%%jugada%%jugada% goto fin_usu
if %tres%%seis%%nueve%==%jugada%%jugada%%jugada% goto fin_usu
if %siete%%cinco%%tres%==%jugada%%jugada%%jugada% goto fin_usu
if %nueve%%cinco%%uno%==%jugada%%jugada%%jugada% goto fin_usu

if %uno%%dos%%tres%==%computadores%%computadores%%guion% goto si_tres
if %uno%%dos%%tres%==%computadores%%guion%%computadores% goto si_dos
if %uno%%dos%%tres%==%guion%%computadores%%computadores% goto si_uno
if %cuatro%%cinco%%seis%==%computadores%%computadores%%guion% goto si_seis
if %cuatro%%cinco%%seis%==%computadores%%guion%%computadores% goto si_cinco
if %cuatro%%cinco%%seis%==%guion%%computadores%%computadores% goto si_cuatro
if %siete%%ocho%%nueve%==%computadores%%computadores%%guion% goto si_nueve
if %siete%%ocho%%nueve%==%computadores%%guion%%computadores% goto si_ocho
if %siete%%ocho%%nueve%==%guion%%computadores%%computadores% goto si_siete
if %uno%%cuatro%%siete%==%computadores%%computadores%%guion% goto si_siete
if %uno%%cuatro%%siete%==%computadores%%guion%%computadores% goto si_cuatro
if %uno%%cuatro%%siete%==%guion%%computadores%%computadores% goto si_uno
if %dos%%cinco%%ocho%==%computadores%%computadores%%guion% goto si_ocho
if %dos%%cinco%%ocho%==%computadores%%guion%%computadores% goto si_cinco
if %dos%%cinco%%ocho%==%guion%%computadores%%computadores% goto si_dos
if %tres%%seis%%nueve%==%computadores%%computadores%%guion% goto si_nueve
if %tres%%seis%%nueve%==%computadores%%guion%%computadores% goto si_seis
if %tres%%seis%%nueve%==%guion%%computadores%%computadores% goto si_tres
if %siete%%cinco%%tres%==%computadores%%computadores%%guion% goto si_tres
if %siete%%cinco%%tres%==%computadores%%guion%%computadores% goto si_cinco
if %siete%%cinco%%tres%==%guion%%computadores%%computadores% goto si_siete
if %nueve%%cinco%%uno%==%computadores%%computadores%%guion% goto si_uno
if %nueve%%cinco%%uno%==%computadores%%guion%%computadores% goto si_cinco
if %nueve%%cinco%%uno%==%guion%%computadores%%computadores% goto si_nueve
if %uno%%dos%%tres%==%jugada%%jugada%%guion% goto si_tres
if %uno%%dos%%tres%==%jugada%%guion%%jugada% goto si_dos
if %uno%%dos%%tres%==%guion%%jugada%%jugada% goto si_uno
if %cuatro%%cinco%%seis%==%jugada%%jugada%%guion% goto si_seis
if %cuatro%%cinco%%seis%==%jugada%%guion%%jugada% goto si_cinco
if %cuatro%%cinco%%seis%==%guion%%jugada%%jugada% goto si_cuatro
if %siete%%ocho%%nueve%==%jugada%%jugada%%guion% goto si_nueve
if %siete%%ocho%%nueve%==%jugada%%guion%%jugada% goto si_ocho
if %siete%%ocho%%nueve%==%guion%%jugada%%jugada% goto si_siete
if %uno%%cuatro%%siete%==%jugada%%jugada%%guion% goto si_siete
if %uno%%cuatro%%siete%==%jugada%%guion%%jugada% goto si_cuatro
if %uno%%cuatro%%siete%==%guion%%jugada%%jugada% goto si_uno
if %dos%%cinco%%ocho%==%jugada%%jugada%%guion% goto si_ocho
if %dos%%cinco%%ocho%==%jugada%%guion%%jugada% goto si_cinco
if %dos%%cinco%%ocho%==%guion%%jugada%%jugada% goto si_dos
if %tres%%seis%%nueve%==%jugada%%jugada%%guion% goto si_nueve
if %tres%%seis%%nueve%==%jugada%%guion%%jugada% goto si_seis
if %tres%%seis%%nueve%==%guion%%jugada%%jugada% goto si_tres
if %siete%%cinco%%tres%==%jugada%%jugada%%guion% goto si_tres
if %siete%%cinco%%tres%==%jugada%%guion%%jugada% goto si_cinco
if %siete%%cinco%%tres%==%guion%%jugada%%jugada% goto si_siete
if %nueve%%cinco%%uno%==%jugada%%jugada%%guion% goto si_uno
if %nueve%%cinco%%uno%==%jugada%%guion%%jugada% goto si_cinco
if %nueve%%cinco%%uno%==%guion%%jugada%%jugada% goto si_nueve

if %dos%%tres%%seis%==%cumputadores%%guion%%computadores% goto si_tres
if %dos%%uno%%cuatro%==%cumputadores%%guion%%computadores% goto si_uno
if %cuatro%%siete%%ocho%==%cumputadores%%guion%%computadores% goto si_siete
if %ocho%%nueve%%seis%==%cumputadores%%guion%%computadores% goto si_nueve

if %uno%==- goto computador
if %dos%==- goto computador
if %tres%==- goto computador
if %cuatro%==- goto computador
if %cinco%==- goto computador
if %seis%==- goto computador
if %siete%==- goto computador
if %ocho%==- goto computador
if %nueve%==- (goto computador) else (goto empate)

:computador
set /a x=%random%
if %x% leq 3640 goto siete
if %x% leq 7280 goto ocho
if %x% leq 10920 goto seis
if %x% leq 14560 goto uno
if %x% leq 18200 goto cinco
if %x% leq 21840 goto nueve
if %x% leq 25480 goto cuatro
if %x% leq 29120 goto tres
if %x% leq 32767 goto dos

:uno
if %uno%==%guion% (goto si_uno) else (goto compu)
:dos
if %dos%==%guion% (goto si_dos) else (goto compu)
:tres
if %tres%==%guion% (goto si_tres) else (goto compu)

:cuatro
if %cuatro%==%guion% (goto si_cuatro) else (goto compu)

:cinco
if %cinco%==%guion% (goto si_cinco) else (goto compu)

:seis
if %seis%==%guion% (goto si_seis) else (goto compu)

:siete
if %siete%==%guion% (goto si_siete) else (goto compu)

:ocho
if %ocho%==%guion% (goto si_ocho) else (goto compu)

:nueve
if %nueve%==%guion% (goto si_nueve) else (goto compu)

:si_uno
set uno=%computadores%
goto inicio

:si_dos
set dos=%computadores%
goto inicio

:si_tres
set tres=%computadores%
goto inicio

:si_cuatro
set cuatro=%computadores%
goto inicio

:si_cinco
set cinco=%computadores%
goto inicio

:si_seis
set seis=%computadores%
goto inicio

:si_siete
set siete=%computadores%
goto inicio

:si_ocho
set ocho=%computadores%
goto inicio

:si_nueve
set nueve=%computadores%
goto inicio

:fin_compu
echo.
echo       Game over
echo.
set /a omputador=omputador+1
pause>nul
goto randomize

:fin_usu
echo.
echo       felitaciones as ganado
echo.
set /a suario=suario+1
pause>nul
goto randomize

:empate
echo.
echo      Empate 
echo.
set /a mpates=mpates+1
pause>nul
goto randomize


::---------------------------------------------------------------------------

:tateti2
set PL1=0
set PL2=0
set empates=0
set Circulo2=O
set Cruz2=X

:Ficha2
cls
echo.
echo   Escoje Player 1
echo            1   --   X
echo            0   --   O
set /p Ficha=
if %Ficha%==[%1]==[] goto error    
if %Ficha%==1 goto cruz2
if %Ficha%==0 goto circulo2
if %Ficha%==1234 goto Privado
if %Ficha%==worms (goto worms) else (goto error)

:error
echo.
echo  Esa tecla no es valida
pause>nul
goto Ficha2

:cruz2
set PLA1=X
set PLA2=O
goto randomize2

:circulo2
set PLA2=X
set PLA1=O
goto randomize2

:randomize2
set guion=-
set uno=-
set dos=-
set tres=-
set cuatro=-
set cinco=-
set seis=-
set siete=-
set ocho=-
set nueve=-
set one=1
set two=2
set three=3
set four=4
set five=5
set six=6
set seven=7
set eight=8
set nine=9

:inicio3
cls
echo.
echo    " " " " " " " " " " " " " " " " " " "
echo    "                                   "
echo    "              |     |              "
echo    "           %siete%  |  %ocho%  |  %nueve%           "       Estos son los numeros:
echo    "          ____|_____|____          "
echo    "              |     |              "
echo    "           %cuatro%  |  %cinco%  |  %seis%           "                           7  8  9
echo    "          ____|_____|____          "   Player 1    :  %PL1%
echo    "              |     |              "                           4  5  6
echo    "           %uno%  |  %dos%  |  %tres%           "   Player 2    :  %PL2%
echo    "              |     |              "                           1  2  3
echo    "                                   "   Empates     :  %empates%
echo    " " " " " " " " " " " " " " " " " " "
echo Presione M para Menu principal
echo Presione Q para salir
echo -------------------------------------------------------------------
if %uno%%dos%%tres%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %cuatro%%cinco%%seis%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %siete%%ocho%%nueve%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %siete%%cuatro%%uno%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %ocho%%cinco%%dos%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %nueve%%seis%%tres%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %uno%%cinco%%nueve%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %siete%%cinco%%tres%==%PLA1%%PLA1%%PLA1% goto ganaPLA1

if %uno%%dos%%tres%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %cuatro%%cinco%%seis%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %siete%%ocho%%nueve%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %siete%%cuatro%%uno%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %ocho%%cinco%%dos%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %nueve%%seis%%tres%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %uno%%cinco%%nueve%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %siete%%cinco%%tres%==%PLA2%%PLA2%%PLA2% goto ganaPLA2

if %uno%==%guion% goto usuario1_juega
if %dos%==%guion% goto usuario1_juega
if %tres%==%guion% goto usuario1_juega
if %cuatro%==%guion% goto usuario1_juega
if %cinco%==%guion% goto usuario1_juega
if %seis%==%guion% goto usuario1_juega
if %siete%==%guion% goto usuario1_juega
if %ocho%==%guion% goto usuario1_juega
if %nueve%==%guion% (goto usuario1_juega) else (goto empate2)

:usuario1_juega
echo  Juega el Player 1 con %PLA1%
echo.
set /p usuario1=  elige tu jugada (1-9):
if %usuario1%==[%1]==[] goto otro2
if %usuario1%==%one% (goto usuario1_uno)
if %usuario1%==%two% (goto usuario1_dos)
if %usuario1%==%three% (goto usuario1_tres)
if %usuario1%==%four% (goto usuario1_cuatro)
if %usuario1%==%five% (goto usuario1_cinco)
if %usuario1%==%six% (goto usuario1_seis)
if %usuario1%==%seven% (goto usuario1_siete)
if %usuario1%==%eight% (goto usuario1_ocho)
if %usuario1%==%nine% (goto usuario1_nueve)
if %usuario1%==1234 (goto Privado)
if %usuario1%==Q goto exit
if %usuario1%==q goto exit
if %usuario1%==M goto menup
if %usuario1%==m goto menup else (goto otro2)

:otro2
echo.
echo  Esa tecla no es valida
pause>nul
goto inicio3

:usuario1_uno
if %uno%==%circulo2% (goto ocu2)
if %uno%==%cruz2% (goto ocu2)
set uno=%PLA1%
goto inicio2

:usuario1_dos
if %dos%==%circulo2% (goto ocu2)
if %dos%==%cruz2% (goto ocu2)
set dos=%PLA1%
goto inicio2

:usuario1_tres
if %tres%==%circulo2% (goto ocu2)
if %tres%==%cruz2% (goto ocu2)
set tres=%PLA1%
goto inicio2

:usuario1_cuatro
if %cuatro%==%circulo2% (goto ocu2)
if %cuatro%==%cruz2% (goto ocu2)
set cuatro=%PLA1%
goto inicio2

:usuario1_cinco
if %cinco%==%circulo2% (goto ocu2)
if %cinco%==%cruz2% (goto ocu2)
set cinco=%PLA1%
goto inicio2

:usuario1_seis
if %seis%==%circulo2% (goto ocu2)
if %seis%==%cruz2% (goto ocu2)
set seis=%PLA1%
goto inicio2

:usuario1_siete
if %siete%==%circulo2% (goto ocu2)
if %siete%==%cruz2% (goto ocu2)
set siete=%PLA1%
goto inicio2

:usuario1_ocho
if %ocho%==%circulo2% (goto ocu2)
if %ocho%==%cruz2% (goto ocu2)
set ocho=%PLA1%
goto inicio2

:usuario1_nueve
if %nueve%==%circulo2% (goto ocu2)
if %nueve%==%cruz2% (goto ocu2)
set nueve=%PLA1%
goto inicio2

:ocu2
echo.
echo Esta casilla ya esta ocupada
pause>nul
goto inicio3

:inicio2
cls
echo.
echo    " " " " " " " " " " " " " " " " " " "
echo    "                                   "
echo    "              |     |              "
echo    "           %siete%  |  %ocho%  |  %nueve%           "       Estos son los numeros:
echo    "          ____|_____|____          "
echo    "              |     |              "
echo    "           %cuatro%  |  %cinco%  |  %seis%           "                           7  8  9
echo    "          ____|_____|____          "   Player 1    :  %PL1%
echo    "              |     |              "                           4  5  6
echo    "           %uno%  |  %dos%  |  %tres%           "   Player 2    :  %PL2%
echo    "              |     |              "                           1  2  3
echo    "                                   "   Empates     :  %empates%
echo    " " " " " " " " " " " " " " " " " " "
echo Presione M para Menu principal
echo Presione Q para salir
echo -------------------------------------------------------------------

if %uno%%dos%%tres%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %cuatro%%cinco%%seis%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %siete%%ocho%%nueve%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %siete%%cuatro%%uno%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %ocho%%cinco%%dos%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %nueve%%seis%%tres%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %uno%%cinco%%nueve%==%PLA2%%PLA2%%PLA2% goto ganaPLA2
if %siete%%cinco%%tres%==%PLA2%%PLA2%%PLA2% goto ganaPLA2

if %uno%%dos%%tres%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %cuatro%%cinco%%seis%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %siete%%ocho%%nueve%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %siete%%cuatro%%uno%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %ocho%%cinco%%dos%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %nueve%%seis%%tres%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %uno%%cinco%%nueve%==%PLA1%%PLA1%%PLA1% goto ganaPLA1
if %siete%%cinco%%tres%==%PLA1%%PLA1%%PLA1% goto ganaPLA1

if %uno%==%guion% goto usuario2_juega
if %dos%==%guion% goto usuario2_juega
if %tres%==%guion% goto usuario2_juega
if %cuatro%==%guion% goto usuario2_juega
if %cinco%==%guion% goto usuario2_juega
if %seis%==%guion% goto usuario2_juega
if %siete%==%guion% goto usuario2_juega
if %ocho%==%guion% goto usuario2_juega
if %nueve%==%guion% (goto usuario2_juega) else (goto empate2)

:usuario2_juega

echo  Juega el player 2 con %PLA2%
echo.
set /p usuario2=  elige tu jugada (1-9):
if %usuario2%==[%1]==[] goto otro3
if %usuario2%==%one% (goto usuario2_uno)
if %usuario2%==%two% (goto usuario2_dos)
if %usuario2%==%three% (goto usuario2_tres)
if %usuario2%==%four% (goto usuario2_cuatro)
if %usuario2%==%five% (goto usuario2_cinco)
if %usuario2%==%six% (goto usuario2_seis)
if %usuario2%==%seven% (goto usuario2_siete)
if %usuario2%==%eight% (goto usuario2_ocho)
if %usuario2%==%nine% (goto usuario2_nueve)
if %usuario2%==1234 (goto Privado)
if %usuario2%==Q goto exit
if %usuario2%==q goto exit
if %usuario2%==M goto menup
if %usuario2%==m goto menup else (goto otro3)

:otro3
echo.
echo  Esa tecla no es valida
pause>nul
goto inicio2

:usuario2_uno
if %uno%==%circulo2% (goto ocu3)
if %uno%==%cruz2% (goto ocu3)
set uno=%PLA2%
goto inicio3

:usuario2_dos
if %dos%==%circulo2% (goto ocu3)
if %dos%==%cruz2% (goto ocu3)
set dos=%PLA2%
goto inicio3

:usuario2_tres
if %tres%==%circulo2% (goto ocu3)
if %tres%==%cruz2% (goto ocu3)
set tres=%PLA2%
goto inicio3

:usuario2_cuatro
if %cuatro%==%circulo2% (goto ocu3)
if %cuatro%==%cruz2% (goto ocu3)
set cuatro=%PLA2%
goto inicio3

:usuario2_cinco
if %cinco%==%circulo2% (goto ocu3)
if %cinco%==%cruz2% (goto ocu3)
set cinco=%PLA2%
goto inicio3

:usuario2_seis
if %seis%==%circulo2% (goto ocu3)
if %seis%==%cruz2% (goto ocu3)
set seis=%PLA2%
goto inicio3

:usuario2_siete
if %siete%==%circulo2% (goto ocu3)
if %siete%==%cruz2% (goto ocu3)
set siete=%PLA2%
goto inicio3

:usuario2_ocho
if %ocho%==%circulo2% (goto ocu3)
if %ocho%==%cruz2% (goto ocu3)
set ocho=%PLA2%
goto inicio3

:usuario2_nueve
if %nueve%==%circulo2% (goto ocu3)
if %nueve%==%cruz2% (goto ocu3)
set nueve=%PLA2%
goto inicio3

:ocu3
echo.
echo Esta casilla ya esta ocupada
pause>nul
goto inicio2

:ganaPLA1
echo.
echo       Gana %PLA1%
echo.
set /a PL1=PL1+1
pause>nul
goto randomize2


:ganaPLA2
echo.
echo       Gana %PLA2%
echo.
set /a PL2=PL2+1
pause>nul
goto randomize2


:empate2
echo.
echo      Empate 
set /a empates=empates+1
echo.
pause>nul
goto randomize2

:exit
exit
::---------------------------------------------------------------------------
:worms
color 0C
echo Comando correcto
echo Abriendo Worms...
pause>nul
cd..
cd "Worms Online-3.6.31.0"
call aPLAY.bat
exit

::---------------------------------------------------------------------------


:Privado
color 0C
if exist Priv2.{2559a1f2-21d7-11d4-bdaf-00c04f60b9f0} goto desbloquear
if not exist Priv goto carpeta

:ocultar
echo Desea ocultar el archivo (S/N)
set/p "var=>"
if %var%==[%1]==[] goto si
if %var%==S goto si
if %var%==s goto si
if %var%==N goto no
if %var%==n goto no

:si
ren Priv "Priv2.{2559a1f2-21d7-11d4-bdaf-00c04f60b9f0}"
attrib +h +s %CD%\"Priv2.{2559a1f2-21d7-11d4-bdaf-00c04f60b9f0}"
echo Se oculto correctamente el archivo
pause>nul
exit

:no
exit

:desbloquear
echo Contrase¤a correcta!
attrib -h -s %CD%\"Priv2.{2559a1f2-21d7-11d4-bdaf-00c04f60b9f0}"
ren Priv2.{2559a1f2-21d7-11d4-bdaf-00c04f60b9f0} Priv
echo Ha desbloqueado el archivo correctamente
echo Esta carpeta es una carpeta secreta en la que podrás guardar tus archivos y protegerlos de modificaciones o hurto>L‚eme.txt
move>nul %CD%\L‚eme.txt %CD%\Priv
pause>nul
exit

:error
echo Contraseña incorrecta
pause>nul
exit

:carpeta
echo La carpeta se creo correctamente
pause>nul
md Priv
echo Esta carpeta es una carpeta secreta en la que podrás guardar tus archivos y protegerlos de modificaciones o hurto>L‚eme.txt
move>nul %CD%\L‚eme.txt %CD%\Priv?
ME GUSTANO ME GUSTA