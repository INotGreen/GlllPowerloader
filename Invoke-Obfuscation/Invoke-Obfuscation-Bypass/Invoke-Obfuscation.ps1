 SeT-ITem ("vaR"+"Iable"+":fsw"+"Bao") (  [TyPe]("{3}{0}{1}{2}"-F 'sT','Em.io.PaT','h','SY'))  ;  $4DO6J=  [tYpE]("{1}{0}"-f'Le','Io.fI')  ;   $yb3G =  [TYpe]("{3}{0}{2}{4}{1}{5}" -F 'YsTEm.','c','tE','s','Xt.eN','odInG')  ; Set ("Tz"+"cbE"+"F")  ( [tYPE]("{3}{4}{1}{0}{2}" -f 'E','.cOnv','RT','S','ystEm')) ; SET-vaRiABLe ("3E"+"h") ( [tyPe]("{0}{2}{4}{1}{5}{3}" -F're','.A','fleC','Ly','TIoN','SSeMb'))  ;  set-VaRIABle  zBu  ( [tYpe]("{1}{5}{3}{2}{0}{4}"-F 'A','WINdOws.F','iPbo','cl','Rd','OrMs.') ) ; 


















Function INVOKE-oB`F`UScaTI`On
{


    [CmdletBinding(defAUltpaRamETERseTNAME = {"{1}{0}{2}"-f 'ptBloc','Scri','k'})] Param (
        [Parameter(poSitIon = 0, VAluefrOMPIPELine = ${TR`Ue}, ParAMEteRSEtNaMe = "ScrIp`T`BloCk")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${S`CriPt`BlO`cK},

        [Parameter(posITIOn = 0, pARAmeTerSeTnAme = "sCrI`p`Tpath")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${S`C`RIptp`AtH},
        
        [String]
        ${c`OM`MaND},
        
        [Switch]
        ${n`OeX`iT},
        
        [Switch]
        ${Qu`IET}
    )

    
    ${s`C`RI`pT:clICO`mMan`dS}       = @()
    ${ScriPt`:`ComP`OUNdcO`MmaNd}   = @()
    ${s`CrIPt:`qUIeTwAss`Pecif`ieD} = ${F`ALSE}
    ${ClI`w`AsS`peci`FiED}          = ${F`Alse}
    ${n`O`EXITWa`ssPe`cif`I`Ed}       = ${fa`l`SE}

    
    If(${psbouND`PARa`mETe`Rs}[("{2}{1}{0}"-f'tBlock','ip','Scr')])
    {
        ${ScrIPT`:`CL`I`ComMAnds} += (("{0}{3}{1}{2}" -f'set sc','iptbloc','k ','r') + [String]${scRipt`BlO`CK})
    }
    If(${pSB`o`UNdPAra`meterS}[("{1}{2}{0}"-f'th','Sc','riptPa')])
    {
        ${SCRIp`T:Cl`icom`mAn`Ds} += (("{3}{1}{2}{0}" -f'ath ','i','ptp','set scr') + ${s`CRIP`T`PAth})
    }

    
    If(${PSb`O`UNdPA`RameTeRS}[("{0}{2}{1}"-f 'Com','d','man')])
    {
        ${S`CRipt`:cl`I`COMmA`Nds} += ${COM`m`AND}.("{0}{1}"-f'Spl','it').Invoke(',')
        ${cLIwA`s`s`P`ecifIeD} = ${tr`Ue}

        If(${PS`BOunDParA`mE`TErs}[("{0}{1}" -f'NoEx','it')])
        {
            ${NoeXI`TWAsS`pecIF`ied} = ${TR`UE}
        }

        If(${Ps`BO`Un`Dp`ArametErS}[("{0}{1}" -f 'Qu','iet')])
        {
            
            Function W`RIte-`Host {}
            Function S`TAr`T-SL`eEp {}
            ${ScRI`pt`:`QuIE`TwaSSPEc`ifieD} = ${T`Rue}
        }
    }

    
    
    

    
    
    ${SCRIPt:s`CRi`Pt`PAtH}   = ''
    ${SCrip`T:`s`CRI`pTBlOCK}  = ''
    ${Sc`RIP`T:cLis`Y`NTAX}         = @()
    ${s`CrIPT:EXEc`U`TiONc`OM`MA`Nds} = @()
    ${sCriPT:ob`FU`sCatEdco`MM`AnD} = ''
    ${s`Cript:oBFuS`CA`T`e`DCO`M`MaN`D`HIStorY} = @()
    ${S`cR`IPT:OB`F`UsCaTionl`engtH} = ''
    ${SCr`I`pt:`OptIO`N`SMenu} =   @()
    ${sc`RipT:op`T`IO`N`SmENU} += , @(("{2}{1}{0}" -f' ','iptPath','Scr')       , ${S`cri`PT:`ScRIPT`PAtH}       , ${tr`UE})
    ${Sc`Rip`T:op`TiOnS`MENU} += , @(("{1}{2}{0}{3}"-f 'tB','Scr','ip','lock')       , ${SCr`IP`T:sC`RIP`TBLoCK}      , ${Tr`UE})
    ${S`c`RIPT`:oP`TioNS`MEnu} += , @(("{0}{3}{1}{2}{4}" -f 'Co','d','LineSynta','mman','x') , ${S`cRIPt:clisYn`T`Ax}        , ${F`Al`se})
    ${s`C`RipT`:OPtiONS`meNU} += , @(("{5}{4}{2}{0}{1}{3}"-f 'mm','and','nCo','s','tio','Execu') , ${sc`R`I`p`T:e`xECUTIO`NCo`MmaNDs}, ${fa`lsE})
    ${S`CRip`T:OptIon`s`meNU} += , @(("{4}{5}{3}{0}{1}{2}" -f 'tedComm','a','nd','ca','Obf','us') , ${SC`R`iPT:oBF`USc`ATe`DcomM`ANd}, ${F`AlSe})
    ${ScRiPT:`opTiOn`S`mE`NU} += , @(("{4}{0}{3}{2}{1}" -f 'scati','gth','nLen','o','Obfu') , ${s`Cript`:`ob`FUsca`TEDC`OMMaND}, ${f`A`lse})
    
    ${Se`TtaBleiNpU`T`Op`TioNs} = @()
    ForEach(${OpT`i`ON} in ${sCrIPT:`OpTiO`N`s`MeNU})
    {
        If(${O`PtioN}[2]) {${s`EttABleIN`PUtOP`Ti`ONs} += ([String]${op`TIOn}[0]).("{0}{1}"-f'ToL','ower').Invoke().("{0}{1}"-f 'Tr','im').Invoke()}
    }

    
    ${scr`iP`T`:l`AUNchERAP`PL`ied} = ${fAL`SE}

    
    If(!(GE`T-MoD`UlE ("{0}{3}{5}{4}{2}{1}"-f 'In','n','scatio','vo','bfu','ke-O') | WHere-`O`Bje`CT {${_}."Mod`ULe`TYpe" -eq ("{1}{2}{0}"-f 'st','M','anife')}))
    {
        ${pA`Th`TOPSD1} = "$ScriptDir\Invoke-Obfuscation.psd1"
        If(${PAt`hto`psd1}.("{2}{1}{0}" -f 'ins','ta','Con').Invoke(' ')) {${P`ATHTO`PsD1} = '"' + ${p`A`ThT`Opsd1} + '"'}
        wri`Te-H`oST ("`n`nERROR: "+'Invoke'+'-Obfu'+'sc'+'atio'+'n '+'module'+' '+'i'+'s '+'no'+'t '+'loaded.'+' '+'You'+' '+'m'+'ust '+'r'+'un:') -ForegroundColor ("{0}{1}"-f 'Re','d')
        wRI`Te`-hOSt (' '+' '+' '+' '+' '+' '+' '+'Imp'+'ort-'+'Modu'+'le '+"$PathTopsd1`n`n") -ForegroundColor ("{0}{1}" -f 'Ye','llow')
        Sta`RT-s`LeeP -Seconds 3
        Exit
    }

    
    ${Cm`Dm`AxLENg`TH} = 8190
    
    
    ${LiN`es`p`ACing} = ("{1}{0}"-f'*] ','[')
    
    
    ${m`eNUL`Evel} =   @()
    ${m`E`NUlEV`el}+= , @(${L`iNEs`P`Acing}, ("{1}{0}" -f'OKEN','T')    , ("{7}{6}{1}{2}{9}{8}{5}{3}{4}{0}{10}" -f 'Tok','we','rShell c','d ','<','an','scate Po','Obfu','mm','o','ens>'))
    ${mE`NulEv`eL}+= , @(${linEs`P`AcI`Ng}, 'AST'      , ("`tObfuscate "+'P'+'owerShell'+' '+'<Ast'+'>'+' '+'no'+'des '+'<('+'PS3.'+'0+)'+'>'))    
    ${MENu`LE`VeL}+= , @(${lInes`paC`I`Ng}, ("{1}{0}" -f 'RING','ST')   , ("{3}{0}{5}{1}{2}{4}{6}{7}{9}{8}" -f 'bfu','entir','e comm','O','and ','scate ','as a',' ','g>','<Strin'))
    ${menU`LEV`el}+= , @(${lInEsp`AC`I`NG}, ("{0}{1}" -f'ENCO','DING') , ("{7}{1}{0}{6}{2}{4}{5}{3}" -f 'en','bfuscate ','re command ','coding>','vi','a <En','ti','O'))
    ${mENu`l`E`Vel}+= , @(${li`NE`spaciNg}, ("{2}{1}{0}" -f 'S','PRES','COM')       , ("{3}{4}{10}{2}{5}{13}{12}{1}{14}{0}{8}{6}{7}{11}{9}" -f'r and <','-l','rt entir','Co','n','e comma','p','r','Com','ss>','ve','e','e','nd to on','ine'))
    ${M`eN`UlEvEl}+= , @(${LINeS`Paci`Ng}, ("{0}{1}"-f'LA','UNCHER')       , (("{7}{14}{1}{2}{16}{13}{18}{10}{17}{11}{4}{3}{5}{8}{15}{12}{6}{9}{0}" -f ')','u','scate com','aunc','L','her>','e a','Ob',' t','t end','s','/<','ues (run onc','nd ar','f','echniq','ma',' w','g')))
    
    
    ${M`eNule`VeL`_`Token}                 =   @()
    ${MEnULEve`L_`T`OkEN}                += , @(${LiNeSP`A`CI`NG}, ("{1}{0}"-f'G','STRIN')     , (("{0}{5}{3}{6}{2}{11}{4}{10}{7}{12}{1}{9}{8}" -f 'Obfus',' to',' <S','at','ns ','c','e','gg',')',' run first','(su','tring> toke','ested')))
    ${mENu`lE`V`eL_tok`en}                += , @(${l`iN`ESp`ACiNg}, ("{1}{0}{2}"-f'OMM','C','AND')    , ("{4}{0}{2}{3}{1}"-f 'te','tokens',' <Comma','nd> ','Obfusca'))
    ${Me`N`ULeve`l_to`kEN}                += , @(${LinE`SPAci`Ng}, ("{1}{0}{2}" -f 'E','ARGUM','NT')   , ("{0}{4}{3}{1}{2}{5}" -f 'Obfus','ent','> ','te <Argum','ca','tokens'))
    ${Menul`eVEL_`TO`kEN}                += , @(${LIn`ESp`AC`ING}, ("{0}{1}"-f'MEMBE','R')     , ("{0}{4}{3}{1}{2}" -f'Obf','r','> tokens','be','uscate <Mem'))
    ${Me`NU`le`VE`l_TO`keN}                += , @(${LI`NESP`ACIng}, ("{1}{2}{0}" -f'E','V','ARIABL')   , ("{4}{0}{6}{2}{5}{3}{1}"-f 'usc','okens','te <V',' t','Obf','ariable>','a'))
    ${me`NuLe`Vel_TOKen}                += , @(${lI`NES`pA`CInG}, ("{0}{1}"-f 'TY','PE  ')     , ("{4}{5}{2}{6}{0}{1}{7}{3}" -f 'te ','<Type> t','fu','ens','O','b','sca','ok'))
    ${meNul`eVE`l_`T`oKEN}                += , @(${lI`NEsP`AcinG}, ("{1}{2}{0}" -f'NT','COM','ME')    , ("{4}{6}{7}{5}{3}{0}{1}{2}"-f'ment','> token','s','l <Com','Re','ve al','m','o'))
    ${mEnuLev`eL_`Tok`En}                += , @(${L`INesP`AcI`Ng}, ("{1}{2}{0}"-f 'ITESPACE','W','H') , (("{1}{10}{9}{7}{6}{0}{12}{2}{8}{11}{3}{4}{5}"-f 't','Ins','spac','to run las','t',')','Whi','om <','e> (s','rand','ert ','uggested ','e')))
    ${m`E`N`ULE`Vel_tOken}                += , @(${L`INESP`Ac`ING}, ("{0}{1}" -f 'AL','L   ')     , ("{8}{11}{0}{4}{3}{2}{5}{7}{1}{6}{10}{9}{12}"-f ' <All> c',' ','m ','fro','hoices ','abo','(rando','ve','Sele','d','m or','ct','er)'))
    
    ${MENu`lE`VeL_TOK`EN_ST`RIng}          =   @()
    ${menu`L`EveL_ToKE`N`_`s`Tri`Ng}         += , @(${liNEs`p`A`CINg}, '1' , ((("{10}{2}{9}{14}{4}{5}{7}{12}{3}{6}{13}{11}{8}{0}{1}" -f'hefxh',')>','c','(f','te -','-','xh','> e.','+fx','aten','Con','+fxhffefxh','g. <','cofxh','a'))."REp`LacE"(([chAr]102+[chAr]120+[chAr]104),[strINg][chAr]39))                           , @(("{3}{2}{1}{4}{0}"-f'nCommand','uscatedTok','Obf','Out-','e'), ("{1}{0}"-f 'ing','Str'), 1))
    ${M`E`NulEveL_TOkEN_St`RINg}         += , @(${LiNES`pA`Cing}, '2' , "Reorder     --> e.g. <('{1}{0}'-f'ffee','co')>"                    , @(("{6}{5}{1}{3}{0}{4}{2}"-f'omm','ca','d','tedTokenC','an','Obfus','Out-'), ("{0}{2}{1}" -f 'Stri','g','n'), 2))
    
    ${m`EnU`lEvE`l_tO`kE`N_`cO`mmaND}         =   @()
    ${ME`NuLeVeL_`TOKeN_`Comm`AND}        += , @(${l`I`Nespa`cing}, '1' , ('Tick'+'s '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+'-->'+' '+'e'+'.g. '+(('<'+'Ne'+'o5'+'kw-Oo5kB'+'ject>')-CREPLaCe'o5k',[CHAr]96))                   , @(("{4}{1}{5}{0}{3}{2}"-f'dToken','bfu','nd','Comma','Out-O','scate'), ("{1}{2}{0}"-f'nd','Comm','a'), 1))
    ${MEnU`lEv`E`l_TO`kE`N_`coMmanD}        += , @(${liNE`sp`A`CIng}, '2' , ((("{11}{5}{10}{18}{3}{16}{6}{14}{8}{9}{1}{17}{2}{19}{4}{12}{7}{0}{15}{13}"-f 'jec','n','CE','onca','CEnw-ObCE','ttin','enate -','n','> e.g.',' <&(CE','g +','Spla','n+CE','CEn)>','-','t','t','Ne',' C','n+'))."REpL`AcE"('CEn',[stRInG][ChaR]39))          , @(("{3}{0}{4}{1}{2}"-f'ut-Ob','atedTokenCo','mmand','O','fusc'), ("{0}{2}{1}"-f'Co','and','mm'), 2))
    ${Me`NulevE`L`_to`kEN`_C`oMm`ANd}        += , @(${LinESP`AcI`NG}, '3' , "Splatting + Reorder     --> e.g. <&('{1}{0}'-f'bject','New-O')>"   , @(("{3}{0}{4}{1}{2}"-f't-ObfuscatedT','man','d','Ou','okenCom'), ("{1}{2}{0}" -f'mand','Co','m'), 3))
    
    ${MeNU`lEvE`L_TO`KEN_aRG`UmEnT}        =   @()
    ${mEnULEVEL_Toke`N`_A`R`g`UmENt}       += , @(${Li`NeS`PAcInG}, '1' , ("{1}{5}{8}{3}{7}{2}{6}{4}{0}"-f'T>','Ran','.','> e.g','en','dom','weBclI','. <nEt',' Case --')                              , @(("{2}{4}{0}{1}{3}" -f 'tedTo','kenComman','Out-Ob','d','fusca'), ("{0}{1}{2}{3}" -f'Comm','andArg','u','ment'), 1))
    ${ME`N`U`lE`VE`L_TokEN_A`RgUMEnt}       += , @(${liN`esPaC`i`NG}, '2' , ('Ticks'+' '+' '+' '+' '+' '+' '+' '+'-->'+' '+'e.g'+'. '+('<n'+'E'+'{0}T.we'+'{0}Bc'+'{0}l'+'Ie{0}'+'NT>') -F [cHAR]96)                          , @(("{3}{1}{4}{2}{0}"-f 'and','usca','mm','Out-Obf','tedTokenCo'), ("{1}{2}{0}{3}"-f'gume','Co','mmandAr','nt'), 2))
    ${Me`NuL`EVEl`_to`ke`N_aRG`UmENT}       += , @(${l`iNE`s`paCinG}, '3' , ((("{3}{8}{7}{10}{6}{0}{5}{1}{9}{4}{2}"-f'(7JF','e7JF','JF)>','Con','nt7','Ne7JF+7JFt.W','.g. <','nate ','cate','+7JFbClie','--> e'))-crePLACe([CHAR]55+[CHAR]74+[CHAR]70),[CHAR]39)                    , @(("{5}{3}{2}{4}{1}{6}{0}" -f'd','dT','s','Obfu','cate','Out-','okenComman'), ("{2}{3}{4}{0}{1}"-f 'g','ument','C','o','mmandAr'), 3))
    ${ME`NUlEveL_Tok`en_A`Rg`U`ME`NT}       += , @(${LIn`Espa`CiNG}, '4' , "Reorder     --> e.g. <('{1}{0}'-f'bClient','Net.We')>"             , @(("{1}{5}{6}{4}{2}{3}{0}{7}"-f'omman','Ou','dToken','C','ate','t-Ob','fusc','d'), ("{1}{0}{2}{3}"-f 'mmandAr','Co','gum','ent'), 4))
    
    ${meN`UL`evel_`T`OKeN_M`Em`Ber}          =   @()
    ${mE`NuLevel_t`O`K`E`N_`mE`mBER}         += , @(${l`Ine`Sp`AciNg}, '1' , ("{6}{2}{1}{5}{4}{0}{7}{3}" -f'ds','Case --> e.g','ndom ','Ring>','dOwnLoA','. <','Ra','T')                             , @(("{4}{0}{2}{3}{1}" -f'-Obfusc','nd','ate','dTokenComma','Out'), ("{2}{0}{1}"-f 'e','mber','M'), 1))
    ${mENuLEvel_t`OKe`N`_m`e`m`Ber}         += , @(${Li`N`eSPAc`iNG}, '2' , ('Ti'+'cks '+' '+' '+' '+' '+' '+' '+'-'+'-> '+'e.g.'+' '+(('<dLh'+'vO'+'wLhvNLo'+'AdLhvST'+'RinLh'+'v'+'g'+'>')  -RePlAce'Lhv',[cHar]96))                         , @(("{2}{0}{1}{5}{4}{3}{6}{7}"-f'Obfu','sc','Out-','Com','oken','atedT','man','d'), ("{1}{2}{0}"-f 'er','Mem','b'), 2))
    ${M`enUlEvE`l`_toKen_M`e`m`BEr}         += , @(${l`in`e`SpaCIng}, '3' , ((("{3}{5}{1}{15}{11}{2}{4}{10}{8}{13}{12}{6}{14}{16}{0}{7}{9}" -f'.Inv','. <(4','w','Concaten','nLo46R+4','ate --> e.g','RR','oke(','RAdsT4',')>','6','dO','R+46','6','in','6R','g46R)'))."Repl`A`cE"('46R',[StRIng][Char]39))          , @(("{1}{0}{4}{2}{3}{5}" -f'u','O','k','enComma','t-ObfuscatedTo','nd'), ("{1}{0}"-f'ber','Mem'), 3))
    ${menuleVe`L_T`o`K`eN_ME`m`BeR}         += , @(${LIn`es`pa`ciNg}, '4' , "Reorder     --> e.g. <('{1}{0}'-f'dString','Downloa').Invoke()>"   , @(("{5}{1}{3}{2}{4}{6}{0}" -f 'Command','bfusca','ed','t','Toke','Out-O','n'), ("{2}{0}{1}"-f 'm','ber','Me'), 4))
    
    ${M`EnUlEVel`_toK`en`_v`A`RIable}        =   @()
    ${me`Nu`LEVEl_`TokEn_vaRI`A`B`le}       += , @(${lINE`s`PacING}, '1' , 'Random Case + {} + Ticks --> e.g. <${c`hEm`eX}>'                   , @(("{1}{4}{7}{5}{8}{3}{2}{6}{0}" -f'and','O','m','TokenCo','ut-','at','m','Obfusc','ed'), ("{0}{1}{2}"-f 'Vari','ab','le'), 1))
    
    ${mE`N`UlEv`E`l_`ToKeN_typE}            =   @()
    ${mENUlEvEl`_t`o`k`e`N_ty`pE}           += , @(${liNeS`paC`iNG}, '1' , ((("{14}{3}{0}{13}{6}{12}{15}{11}{8}{10}{4}{1}{2}{5}{7}{16}{9}"-f 'ast ','{0}C','on{0}+{0}','ype C','](','sol','ate ','e{0','Typ',')>','e','. <[','-->','+ Concaten','T',' e.g','}')) -F  [ChaR]39)           , @(("{0}{5}{7}{3}{6}{2}{1}{4}" -f 'Out-O','enCom','k','T','mand','bfu','o','scated'), ("{1}{0}" -f'pe','Ty'), 1))
    ${MEnU`lE`VE`L_tokEn_tyPE}           += , @(${lIn`e`SpaC`INg}, '2' , "Type Cast + Reordered   --> e.g. <[Type]('{1}{0}'-f'sole','Con')>" , @(("{1}{2}{0}{6}{3}{5}{4}"-f 's','Out','-Obfu','okenCom','nd','ma','catedT'), ("{1}{0}"-f 'ype','T'), 2))
    
    ${meNUL`EV`EL_`T`oKEn_wHITEspacE}      =   @()
    ${mE`NU`LEVel`_T`OKEn_WhIt`eSpaCe}     += , @(${liNE`SPA`CI`Ng}, '1' , ("`tRandom "+'W'+'hit'+'espace'+' '+'-->'+' '+'e.g.'+' '+'<.('+' '+('8v'+'PNe8vP ')."rep`La`cE"('8vP',[STRINg][ChAr]39)+' '+('+'+'{0}'+'w-Ob'+'{0} ')  -F  [CHAR]39+'+ '+' '+('p8Ojec'+'tp'+'8O)>')."repl`AcE"(([chAR]112+[chAR]56+[chAR]79),[StRING][chAR]39))        , @(("{2}{3}{1}{6}{0}{5}{4}" -f 'enCo','catedT','Ou','t-Obfus','nd','mma','ok'), ("{3}{1}{2}{0}{4}" -f'Whi','d','om','Ran','tespace'), 1))
    
    ${M`ENul`e`V`eL_to`k`eN_CoMM`eNT}         =   @()
    ${menulEve`l`_TOKEn`_coMm`e`Nt}        += , @(${lI`NEsp`ACing}, '1' , ("{5}{9}{4}{10}{1}{2}{8}{3}{7}{0}{6}"-f'nator','ts ',' ','g. sel','o','Remove ','y','f-expla',' --> e.','C','mmen')                       , @(("{5}{3}{0}{4}{2}{1}{6}"-f 'bfus','kenCo','dTo','-O','cate','Out','mmand'), ("{1}{2}{0}" -f'nt','C','omme'), 1))

    ${mEnUleVE`l`_TOKEN`_`A`ll}             =   @()
    ${m`E`NU`LEvEl_tO`ken_ALL}            += , @(${l`i`NESpAC`InG}, '1' , ("`tExecute "+'<'+'ALL> '+'To'+'ken'+' '+'o'+'bf'+'uscation '+'t'+'e'+'chniqu'+'es '+'('+'rando'+'m '+'ord'+'er)')       , @(("{3}{2}{0}{4}{6}{5}{1}{7}{8}"-f't-Ob','Toke','u','O','fusc','ted','a','nCommandA','ll'), '', ''))
    
    
    ${mEnUL`eVEl`_A`St}                            =   @()
    ${mEN`U`LEV`EL_AST}                           += , @(${lin`eSpac`iNg}, ("{5}{1}{3}{0}{4}{6}{2}" -f'u','edAttr','Ast','ib','teArgumen','Nam','t') , ("{5}{0}{3}{10}{2}{6}{4}{1}{9}{11}{8}{7}"-f'fu','ntAst> n','amedAttrib','sca','gume','Ob','uteAr','s','e','o','te <N','d'))
    ${M`eNule`Vel_`ASt}                           += , @(${liNE`Spac`iNg}, ("{2}{1}{0}" -f'kAst','aramBloc','P')             , ("`t`tObfuscate "+'<P'+'ar'+'amBlock'+'A'+'st> '+'nod'+'es'))
    ${meNu`L`EVe`L`_AST}                           += , @(${lInesPa`c`I`NG}, ("{1}{0}{2}{3}"-f 'p','Scri','tBlockAs','t')            , ("`t`tObfuscate "+'<Sc'+'ri'+'ptBlock'+'Ast> '+'no'+'des'))
    ${mEN`UL`Eve`l_aSt}                           += , @(${lInESP`A`C`inG}, ("{1}{3}{0}{2}"-f'A','Attribu','st','te')              , ("`t`tObfuscate "+'<Attr'+'ibut'+'eAs'+'t> '+'no'+'des'))
    ${m`enuLeVe`L`_ASt}                           += , @(${L`iNeS`p`AcIng}, ("{1}{2}{5}{0}{4}{3}{6}"-f 'xp','Bina','r','sion','res','yE','Ast')       , ("`tObfuscate "+'<Bina'+'ryExp'+'re'+'ssionAst'+'>'+' '+'nod'+'es'))
    ${meNu`LEV`E`L_asT}                           += , @(${LiNe`sp`ACI`NG}, ("{1}{0}{3}{2}"-f'l','Hashtab','t','eAs')              , ("`t`tObfuscate "+'<Ha'+'shta'+'b'+'leAst> '+'n'+'odes'))
    ${me`Nul`evEL`_AsT}                           += , @(${Line`s`PaciNg}, ("{0}{1}{2}" -f 'Co','mmand','Ast')                , ("`t`tObfuscate "+'<'+'C'+'ommandAst'+'> '+'no'+'des'))
    ${Me`NU`LEvEl_`ASt}                           += , @(${LI`Ne`s`pACIng}, ("{1}{4}{2}{0}{3}" -f 'temen','Assignme','Sta','tAst','nt')    , ("`tObfuscate "+'<Assig'+'nmen'+'t'+'StatementAs'+'t> '+'n'+'odes'))
    ${M`EnulEV`El`_aSt}                           += , @(${lI`NesPa`C`Ing}, ("{2}{5}{4}{3}{0}{1}"-f'A','st','Ty','ion','ss','peExpre')         , ("`tObfuscate "+'<'+'T'+'ypeExp'+'re'+'s'+'sio'+'nAst> '+'node'+'s'))
    ${mE`NUl`Evel_`AsT}                           += , @(${LI`Nesp`A`ciNG}, ("{0}{2}{3}{1}{4}"-f 'Typ','n','eConst','rai','tAst')         , ("`tObfuscate "+'<Ty'+'p'+'eCon'+'str'+'ai'+'ntAs'+'t> '+'no'+'des'))
    ${me`NUL`eVeL_Ast}                           += , @(${LI`NES`PaciNg}, 'ALL'                       , ("`t`t`tSelect "+'<Al'+'l'+'> '+'choic'+'es'+' '+'fr'+'om '+'ab'+'ove'))
    
    ${m`En`UlEveL_AsT_nA`MEDaT`TrI`Bu`TE`A`RG`UMe`Ntast}  =   @()
    ${MeNULev`eL`_Ast_N`AmedATt`R`iBUteaR`GuMENtAst} += , @(${LInEs`p`Ac`ing}, '1' , ('Reor'+'d'+'er '+'e.g.'+' '+'<[Pa'+'rameter(Man'+'dat'+'or'+'y'+', '+'V'+'alu'+'eFromPi'+'peline '+'= '+('{0}Tr'+'ue)]> ')-F  [CHaR]36+'--'+'> '+'<[Para'+'met'+'er(Man'+'dat'+'ory '+'= '+('{'+'0'+'}T'+'rue, ')-F [CHAR]36+'Valu'+'e'+'From'+'Pipelin'+'e'+')]>')                     , @(("{3}{2}{0}{5}{1}{4}" -f'fus','a','t-Ob','Ou','tedAst','c'), @(("{11}{7}{3}{14}{8}{13}{4}{0}{10}{6}{1}{2}{9}{5}{12}{15}"-f'ngu','ttr','ibut','ag','mation.La','umen','medA','ystem.Man','men','eArg','age.Na','S','t','t.Auto','e','Ast')), 1))

    ${MEnuL`eVE`l_`As`T_pARAm`BLockASt}              =   @()
    ${MenuL`EVe`L_As`T_param`BloCKaST}             += , @(${L`inESP`A`cINg}, '1' , ('R'+'eo'+'rder '+'e'+'.g. '+(('<Param([Int]rS'+'m'+'On'+'e,'+' ') -RepLace'rSm',[cHar]36)+(('[I'+'nt]c'+'FG'+'Two)> ')-CrepLaCE  'cFG',[CHar]36)+'--'+'> '+('<P'+'aram(['+'In'+'t]{'+'0}T'+'wo'+', ')  -f  [CHAr]36+(('[I'+'nt]aA'+'BOne)'+'>') -CREpLaCE([chaR]97+[chaR]65+[chaR]66),[chaR]36))                                                                 , @(("{3}{0}{2}{1}"-f '-Ob','catedAst','fus','Out'), @(("{2}{1}{8}{9}{5}{3}{6}{7}{0}{4}{10}"-f 'nguage.','nag','System.Ma','utomati','ParamB','t.A','on.L','a','e','men','lockAst')), 1))

    ${MeNulE`VE`l_AST_sc`RIPtBl`Oc`kaST}             =   @()
    ${me`NuLeVel`_As`T_scrip`TblOcKa`St}            += , @(${liN`esPAC`i`Ng}, '1' , 'Reorder e.g. <{ Begin {} Process {} End {} }> --> <{ End {} Begin {} Process {} }>'                                                           , @(("{3}{1}{0}{2}"-f 'ObfuscatedA','-','st','Out'), @(("{3}{4}{0}{7}{13}{12}{8}{5}{2}{15}{6}{11}{14}{10}{9}{1}" -f'm','ockAst','u','Syst','e','.A','tion.Langua','.','ent','l','tB','g','nagem','Ma','e.Scrip','toma')), 1))

    ${Me`NuL`evE`l`_AsT`_A`T`TRibUTeaSt}               =   @()
    ${mE`Nul`eVel_AST_ATtR`i`Bu`T`EAst}              += , @(${liNe`SpAcI`Ng}, '1' , (("{18}{16}{4}{22}{0}{3}{5}{17}{13}{8}{7}{15}{11}{12}{14}{1}{23}{19}{21}{6}{9}{2}{10}{20}"-f'. <[Pa','m','ory, Position ','r','de','amete','and','0, Mandator','ion = ','at','=',']> ','--> <[P','osit','ara','y)','r','r(P','Reo','er',' 0)]>','(M','r e.g','et'))                                               , @(("{3}{5}{2}{4}{1}{0}" -f 'atedAst','c','fu','Out-','s','Ob'), @(("{6}{7}{1}{0}{2}{4}{5}{3}{8}" -f 'nagement.Auto','m.Ma','ma','ributeAs','tion.Language.','Att','S','yste','t')), 1))

    ${MeN`Ule`VEl`_`ASt_bI`NArYexpREssIoNAst}        =   @()
    ${m`En`UlevEl_ASt`_`Bi`N`A`RY`E`XPrEsSION`ASt}       += , @(${LIN`E`sPAcINg}, '1' , ("{2}{3}{1}{4}{7}{6}{0}{5}"-f ' * (3 +','(2 + 3','Re','order e.g. <',') ',' 2)>','> --> <4','* 4')                                                                                                 , @(("{1}{2}{3}{4}{0}"-f 'dAst','Ou','t-Obfusca','t','e'), @(("{10}{12}{5}{4}{2}{11}{9}{8}{0}{7}{6}{3}{14}{13}{1}" -f'ge.B','Ast','Man','pr','m.','e','x','inaryE','ngua','nt.Automation.La','S','ageme','yst','sion','es')), 1))
    
    ${ME`NULeVe`L_a`S`T_`ha`S`HTAb`lEAsT}               =   @()
    ${menulEvE`L`_As`T`_haSHT`AbLe`A`st}              += , @(${LiNE`sP`ACing}, '1' , "Reorder e.g. <@{ProviderName = 'Microsoft-Windows-PowerShell'; Id = 4104}> --> <@{Id = 4104; ProviderName = 'Microsoft-Windows-PowerShell'}>" , @(("{2}{3}{0}{5}{1}{4}"-f 'usca','e','Out-O','bf','dAst','t'), @(("{9}{11}{6}{4}{10}{1}{3}{7}{2}{0}{8}{5}"-f 'A','mation.La','able','ngua','agement.A','t','n','ge.Hasht','s','System.M','uto','a')), 1))

    ${MeNUlev`el_A`ST_cO`mMAn`d`ASt}                 =   @()
    ${M`E`Nu`LevEl`_`AsT_CO`mmaNdaST}                += , @(${LiNEs`p`AcIng}, '1' , ("{16}{8}{13}{18}{4}{5}{14}{9}{3}{0}{15}{17}{12}{2}{11}{6}{10}{1}{7}" -f '100> --> ',' ','andom -M','x ','-R','a','1','1>','.g. ',' -Ma','00 -Min','ax ','t-R','<Ge','ndom -Min 1','<G','Reorder e','e','t')                                                                   , @(("{2}{1}{0}{4}{3}"-f't-O','u','O','st','bfuscatedA'), @(("{7}{5}{3}{4}{1}{0}{8}{6}{2}" -f 't','en','guage.CommandAst','e','m.Managem','t','mation.Lan','Sys','.Auto')), 1))
    
    ${m`eNUlev`El`_Ast_`A`S`SIgNmenTS`TAT`emENt`Ast}     =   @()
    ${mEN`UL`e`V`El_Ast_AS`siGNm`EN`TsTATe`M`E`N`Tast}    += , @(${L`i`NesPAC`ing}, '1' , ('Rename'+' '+'e.'+'g. '+(('<s2'+'kExam'+'p'+'le ')  -REPlAcE  ([chAR]115+[chAR]50+[chAR]107),[chAR]36)+'= '+('O'+'oxEx'+'amp'+'leOox>'+' ')."R`epL`Ace"(([chAR]79+[chAR]111+[chAR]120),[sTRING][chAR]34)+'-'+'-> '+'<Set-'+'Variabl'+'e '+'-Name'+' '+'E'+'xamp'+'le '+'-Valu'+'e '+('('+'3V'+'SE'+'xam'+'ple3VS)>')."RE`pl`ACe"('3VS',[STRing][cHaR]34))                                                       , @(("{0}{2}{1}{3}" -f'Out-Obf','sc','u','atedAst'), @(("{1}{12}{9}{8}{13}{14}{4}{10}{5}{2}{7}{0}{3}{6}{11}"-f'nmen','System.Manag','ge','tStateme','tomat','ngua','ntAs','.Assig','n','me','ion.La','t','e','t.','Au')), 1))
    
    ${M`eNU`L`E`VEl_ast`_TyPEex`pResSiON`ASt}          =   @()
    ${Menu`Le`Vel`_AST`_`TY`pEEXPREsSIonaST}         += , @(${liN`Es`paCINg}, '1' , ("{11}{1}{10}{4}{2}{8}{5}{7}{0}{12}{3}{6}{9}"-f 'M','.g.','ck]','tom','o',' -->','at',' <[','>','ion.ScriptBlock]>',' <[ScriptBl','Rename e','anagement.Au')                                                                        , @(("{3}{0}{4}{1}{2}"-f'-O','scat','edAst','Out','bfu'), @(("{3}{5}{0}{8}{6}{7}{4}{2}{1}"-f'.Automation','onAst','ssi','Sys','ypeExpre','tem.Management','e.','T','.Languag')), 1))

    ${m`eN`U`Le`Vel_ASt_TYP`eC`ONStra`I`N`TaST}          =   @()
    ${M`enU`l`eVEL_As`T_`TYpECo`N`sTRainta`st}         += , @(${li`N`esPAC`inG}, '1' , ('R'+'ena'+'me '+'e.g.'+' '+'<[Int'+']'+' '+('{0}'+'Integ'+'er ')-F[chaR]36+'= '+'1'+'> '+'-->'+' '+'<['+'S'+'ys'+'tem.'+'Int32] '+('{0}'+'Intege'+'r ')  -F[cHAr]36+'= '+'1>')                                                                             , @(("{4}{2}{3}{5}{0}{1}" -f'dA','st','-O','bf','Out','uscate'), @(("{11}{1}{3}{12}{6}{2}{0}{5}{8}{13}{9}{7}{10}{4}" -f 'ion.L','ystem.M','mat','ana','raintAst','a','to','n','n','ypeCo','st','S','gement.Au','guage.T')), 1))

    ${meNu`levEL`_`As`T_aLl}                        =   @()
    ${Me`NU`l`EVEl_asT_aLl}                       += , @(${linEs`PA`C`iNG}, '1' , ("`tExecute "+'<ALL'+'> '+'Ast'+' '+'obf'+'uscat'+'ion'+' '+'tech'+'ni'+'ques')                                                                                                   , @(("{5}{4}{3}{1}{2}{0}"-f 'dAst','bfus','cate','O','-','Out'), @(("{10}{0}{3}{11}{7}{2}{14}{4}{18}{9}{12}{16}{15}{6}{17}{13}{5}{1}{8}" -f'.M','As','mation.Langu','an','.N','nt','ute','ent.Auto','t','e','System','agem','dA','ume','age','b','ttri','Arg','am'), ("{8}{2}{3}{6}{4}{0}{1}{7}{5}" -f'toma','tion.Langua','.Man','a','u','ckAst','gement.A','ge.ParamBlo','System'), ("{13}{5}{0}{6}{12}{2}{8}{4}{10}{11}{3}{7}{1}{14}{9}" -f'n','ScriptBl','Aut','g','on','geme','t','e.','omati','kAst','.','Langua','.','System.Mana','oc'), ("{6}{0}{13}{3}{14}{11}{4}{2}{10}{8}{12}{5}{7}{1}{9}" -f 'ystem.Man','bu','Lan','ment','n.','ttr','S','i','a','teAst','gu','Automatio','ge.A','age','.'), ("{8}{1}{0}{4}{5}{12}{2}{10}{11}{6}{3}{7}{9}{13}"-f'm.Management','te','.','y','.A','utoma','r','Exp','Sys','re','Language','.Bina','tion','ssionAst'), ("{0}{8}{1}{7}{4}{3}{2}{6}{5}" -f 'S','ment.Aut','a','on.Language.Hasht','mati','Ast','ble','o','ystem.Manage'), ("{2}{9}{7}{3}{1}{4}{8}{6}{5}{10}{0}" -f'ndAst','omati','Sys','nt.Aut','on.La','.C','ge','.Manageme','ngua','tem','omma'), ("{9}{13}{10}{11}{0}{6}{3}{14}{4}{5}{8}{2}{1}{7}{12}"-f 'ment','tS','en','mation','Langu','age.As','.Auto','tatemen','signm','Sy','em.Manag','e','tAst','st','.'), ("{11}{9}{2}{8}{10}{7}{4}{6}{1}{3}{0}{5}"-f 'io','eEx','en','press','e.T','nAst','yp','g','t','nagem','.Automation.Langua','System.Ma'), ("{2}{4}{9}{7}{0}{8}{6}{3}{1}{5}" -f 'on.Langu','strai','S','peCon','ystem.M','ntAst','.Ty','agement.Automati','age','an')), ''))
    
    
    ${MEnu`l`evEL_St`Ri`Ng}                =   @()
    ${MeNul`EVEl`_`sTriNg}               += , @(${LI`NEs`paCi`Ng}, '1' , ("{4}{3}{6}{7}{0}{5}{1}{2}"-f'e co','a','nd','Con','<','mm','ca','tenate> entir')                                      , @(("{5}{1}{4}{0}{2}{3}"-f'dStrin','t-Obfu','g','Command','scate','Ou'), '', 1))
    ${Me`Nu`l`ev`el`_sTrIng}               += , @(${L`INe`spaCI`NG}, '2' , ("{2}{7}{5}{0}{6}{1}{3}{4}{8}" -f'mand','te','<Reorder> e','r con','cate','re com',' af','nti','nating')                      , @(("{3}{7}{4}{6}{0}{5}{2}{1}"-f 'Strin','d','an','Out-Obf','s','gComm','cated','u'), '', 2))
    ${men`ULe`V`El_`stri`NG}               += , @(${liNesPa`ci`NG}, '3' , ("{6}{9}{10}{1}{4}{3}{2}{5}{7}{0}{8}"-f 'oncat','> entire ','mman','o','c','d a','<Reve','fter c','enating','rs','e')                      , @(("{1}{3}{0}{2}{4}{5}"-f 't-Obfuscate','O','dString','u','Com','mand'), '', 3))

    
    ${men`Ule`VEl`_eNCodING}              =   @()
    ${meN`UL`evel_eN`co`dING}             += , @(${LI`NE`SPaC`InG}, '1' , ("`tEncode "+'en'+'tir'+'e '+'c'+'om'+'mand '+'a'+'s '+'<AS'+'C'+'II>')                                , @(("{3}{1}{2}{0}{5}{4}" -f 'dedAsci','E','nco','Out-','nd','iComma')           , '', ''))
    ${m`EnU`leVeL_en`CO`di`NG}             += , @(${l`ineSpaC`I`NG}, '2' , ("`tEncode "+'e'+'nt'+'ire '+'co'+'mmand '+'as'+' '+'<H'+'ex>')                                  , @(("{3}{6}{4}{1}{2}{5}{0}" -f 'd','ex','Com','Ou','-EncodedH','man','t')             , '', ''))
    ${meN`Ul`eVEL`_encodIng}             += , @(${lI`NEsPA`ci`Ng}, '3' , ("`tEncode "+'entire'+' '+'co'+'mmand '+'as'+' '+'<Oc'+'t'+'al>')                                , @(("{2}{5}{4}{3}{1}{0}" -f'and','lComm','Out','ta','EncodedOc','-')           , '', ''))
    ${mE`NULEvE`L_en`co`DI`Ng}             += , @(${liNe`S`pAciNg}, '4' , ("`tEncode "+'en'+'ti'+'re '+'co'+'mm'+'and '+'a'+'s '+'<Bi'+'nary>')                               , @(("{0}{3}{4}{2}{1}" -f 'Out-','nd','ryComma','E','ncodedBina')          , '', ''))
    ${m`e`N`ULEvel_eN`Co`D`iNG}             += , @(${L`I`NEspacING}, '5' , ("`tEncrypt "+'entire'+' '+'com'+'mand '+'as'+' '+'<'+'SecureStr'+'ing> '+'('+'AES)')                  , @(("{2}{1}{3}{0}{4}"-f 'tri','ut-','O','SecureS','ngCommand')           , '', ''))
    ${mENU`leveL_`ENCOD`i`NG}             += , @(${Lin`ESpa`ci`NG}, '6' , ("`tEncode "+'en'+'tire '+'comm'+'and '+'as'+' '+'<BXO'+'R>')                                 , @(("{1}{2}{3}{0}{4}"-f'a','Out','-Enco','dedBXORComm','nd')            , '', ''))
    ${MenULeVEL_en`CO`D`ING}             += , @(${lin`e`SPACing}, '7' , ("`tEncode "+'enti'+'re'+' '+'com'+'man'+'d '+'as'+' '+'<S'+'peci'+'al '+'Ch'+'ara'+'cters>')                   , @(("{5}{6}{2}{0}{4}{1}{7}{3}" -f 'rOnl','omm','ialCha','d','yC','Out-Enc','odedSpec','an') , '', ''))
    ${M`EnuLeVEL`_`enCoDinG}             += , @(${Li`NeSP`ACinG}, '8' , ("`tEncode "+'ent'+'ire '+'comm'+'a'+'nd '+'a'+'s '+'<W'+'hi'+'tespace>')                           , @(("{0}{3}{1}{2}{4}{6}{5}" -f'Out-Enco','edWhite','sp','d','aceC','mmand','o')      , '', ''))

    
    ${mEN`ULeVel`_C`O`mP`RESS}              =   @()
    ${M`e`NUlEV`eL`_COMpRess}             += , @(${lIN`eS`PAC`ing}, '1' , ("{2}{7}{8}{3}{5}{11}{9}{12}{0}{10}{1}{6}{4}"-f'ner','pr','Convert ','re','>',' co','ess','en','ti','o',' and <com','mmand to ','ne-li')                , @(("{0}{4}{2}{3}{5}{1}"-f'Ou','nd','ess','edComm','t-Compr','a')             , '', ''))
    
    
    ${m`eNU`L`EVEL_La`U`NcH`eR}              =   @()
    ${mEnULe`VEL`_l`AunChER}             += , @(${LIn`ESPA`CI`Ng}, 'PS'            , "`t<PowerShell>")
    ${me`NulE`VEL`_lA`UNcher}             += , @(${l`Ine`sPA`Cing}, 'CMD'           , ("{2}{4}{3}{0}{5}{1}"-f 'ow','l','<',' + P','Cmd>','erShel'))
    ${ME`NUle`VeL_`lauNC`Her}             += , @(${li`NesP`A`CinG}, ("{1}{0}" -f 'IC','WM')          , ("{3}{1}{2}{0}{4}" -f'erS','c> + P','ow','<Wmi','hell'))
    ${MenULe`V`el`_lau`NcHeR}             += , @(${L`ineSp`ACiNG}, ("{0}{2}{1}" -f 'R','DLL','UN')        , ("{6}{3}{0}{5}{2}{4}{1}" -f'll3','ll','S','nd','he','2> + Power','<Ru'))
    ${MEn`U`lEv`eL`_`LAuNCHer}             += , @(${lInes`pA`Ci`NG}, ("{0}{1}"-f'VAR','+')          , ("{6}{1}{8}{5}{3}{9}{0}{4}{10}{7}{2}" -f'&& Pow','set ','<Var>','ar>','erShell i','V','Cmd + ',' ','<',' ','ex'))
    ${mENU`LEv`e`L_lAuNCHEr}             += , @(${lI`NES`Pa`cinG}, ("{0}{1}" -f'STDI','N+')        , ((("{1}{7}{3}{6}{5}{0}{8}{4}{2}" -f'r','Cm',' (stdin)',' + <E','ll -','D0V Powe','cho> ','d','She')) -REPlAce'D0V',[cHaR]124))
    ${ME`NU`lEvE`L_LaUnC`HER}             += , @(${LiN`esp`AC`INg}, ("{0}{1}" -f'CLI','P+')         , ((("{10}{5}{3}{9}{2}{1}{7}{6}{8}{4}{0}" -f'd>','& ','p &','<Echo> {0} C',' <clipboar',' ','owerSh','P','ell iex','li','Cmd +'))  -f  [cHAR]124))
    ${Men`ULe`VEl`_lAuNch`Er}             += , @(${lINe`S`P`AcING}, ("{1}{0}" -f '+','VAR+')         , ("{10}{9}{1}{6}{5}{4}{3}{0}{8}{2}{7}" -f'rShell','d','i','&& Powe','d ','& Cm',' + set <Var> &','ex <Var>',' ','m','C'))
    ${ME`N`ULeV`EL_LaUNChEr}             += , @(${Li`N`ESPac`INg}, ("{1}{0}{2}"-f'IN+','STD','+')       , ((("{10}{7}{6}{11}{9}{3}{2}{1}{4}{0}{5}{8}" -f'e','erS','<Echo> 2PO Pow','Cmd ','h','ll - (s',' ',' + set','tdin)',' && ','Cmd','<Var>'))."REPl`A`cE"(([cHAR]50+[cHAR]80+[cHAR]79),[sTrIng][cHAR]124)))
    ${meNuLEvE`l_`L`A`UnChER}             += , @(${LIN`e`sPACI`Ng}, ("{0}{1}{2}"-f'C','LIP+','+')        , ((("{11}{2}{15}{4}{5}{7}{10}{12}{13}{1}{14}{16}{9}{0}{6}{3}{8}" -f'i','iex ',' + <Echo>','ar',' Clip && Cmd &','& P','pbo','o','d>','l','wer','Cmd','Shell',' ','<',' a3j','c'))-cRePLACE  'a3j',[CHar]124))
    ${MeNUleveL`_`l`AUncHEr}             += , @(${li`Ne`SpAcInG}, ("{0}{2}{1}"-f'R','LL++','UND')      , ("{9}{11}{3}{2}{7}{4}{1}{0}{5}{8}{6}{10}"-f ' PowerShel','<Rundll32> &&','t Var',' se','& ','l ','V',' &','iex ','Cmd','ar',' +'))
    ${m`e`N`UleVel_lau`Nc`hER}             += , @(${L`inE`S`PaCinG}, ("{2}{0}{1}"-f 'TA','++','MSH')       , ("{2}{4}{10}{6}{11}{7}{8}{12}{3}{9}{5}{0}{1}{13}"-f'e','x Va','C','&&','m','ll i','+ set ',' &&',' <Msht',' PowerShe','d ','Var','a> ','r'))

    ${mE`NU`LEvEL_`L`A`UNcH`ER_pS}           =   @()
    ${M`eNU`LEvel_Laun`ChER_PS}          += , @(('Ente'+'r '+'strin'+'g '+'of'+' '+'n'+'umbers'+' '+'w'+'ith '+'al'+'l '+'desi'+'r'+'ed '+'f'+'lags '+'to'+' '+'pas'+'s '+'to'+' '+'fun'+'cti'+'on.'+' '+'('+'e.'+'g. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MENul`Eve`L`_lAU`N`CH`ER_pS}          += , @(${linE`SP`AC`iNg}, '0' , ("{0}{1}{3}{4}{2}" -f'N','O EX','ON FLAGS','ECUT','I')                                          , @(("{5}{1}{2}{3}{4}{6}{0}" -f 'her','t','-','Powe','rShel','Ou','lLaunc'), '', '1'))
    ${MEnuLeV`el_`l`AuNCHer`_Ps}          += , @(${liN`E`spAciNg}, '1' , ("{2}{0}{1}" -f'NoExi','t','-')                                                     , @(("{2}{3}{0}{5}{1}{6}{4}" -f 'e','Sh','Out-P','ow','Launcher','r','ell'), '', '1'))
    ${M`E`NulevE`l_l`AUN`c`Her_PS}          += , @(${LIN`esPA`c`InG}, '2' , ("{2}{3}{1}{0}" -f 'ctive','a','-','NonInter')                                             , @(("{2}{1}{3}{4}{0}" -f 'auncher','t-Powe','Ou','rShell','L'), '', '1'))
    ${MENu`lEve`L`_lAuNchE`R`_`ps}          += , @(${Li`NeSP`ACing}, '3' , ("{0}{1}"-f'-','NoLogo')                                                     , @(("{0}{3}{1}{6}{4}{2}{5}"-f 'Out-Po','e','ll','w','She','Launcher','r'), '', '1'))
    ${m`e`NuLE`VEl_lA`UnchEr_PS}          += , @(${li`Ne`spAcI`NG}, '4' , ("{0}{2}{1}"-f '-NoProf','le','i')                                                  , @(("{3}{0}{1}{2}" -f 'owe','rShellLaun','cher','Out-P'), '', '1'))
    ${MEnuL`eVE`l_`lA`UN`C`her_pS}          += , @(${L`InespAc`INg}, '5' , ("{0}{1}{2}" -f '-','C','ommand')                                                    , @(("{2}{0}{4}{3}{1}"-f 'ut','uncher','O','rShellLa','-Powe'), '', '1'))
    ${MENU`L`EV`el_launC`hEr`_`ps}          += , @(${LI`Ne`SpAc`iNG}, '6' , ("{2}{0}{5}{3}{4}{1}" -f 'W','idden','-','St','yle H','indow')                                         , @(("{2}{4}{1}{0}{3}" -f'nc','au','Out','her','-PowerShellL'), '', '1'))
    ${ME`N`UlEvEL`_lauNcHEr`_pS}          += , @(${Lin`eS`p`AcinG}, '7' , ("{1}{2}{3}{6}{7}{4}{5}{0}" -f 'Bypass','-','Ex','ecut','licy',' ','io','nPo')                                     , @(("{3}{0}{4}{5}{1}{2}{6}"-f 'ut-Power','lL','aunch','O','S','hel','er'), '', '1'))
    ${M`E`N`ULE`VEL_lauNcheR`_ps}          += , @(${LINesp`AC`I`Ng}, '8' , (("{10}{1}{2}{9}{8}{11}{6}{7}{5}{4}{3}{0}" -f 'e)','4 ','(to ','x','.e','ershell','2','-bit pow','ath','p','-Wow6',' 3'))                      , @(("{2}{3}{4}{1}{0}" -f'cher','llLaun','Out','-PowerS','he'), '', '1'))

    ${MenulevE`l_`LA`UNche`R`_c`MD}          =   @()
    ${mEN`ULE`Vel_lAUnCHE`R_`Cmd}         += , @(('En'+'ter '+'str'+'ing '+'of'+' '+'numbe'+'rs'+' '+'with'+' '+'a'+'ll '+'des'+'i'+'red '+'flags'+' '+'t'+'o '+'pass'+' '+'to'+' '+'funct'+'ion.'+' '+'('+'e.g. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${Me`NuL`EveL_la`UNch`E`R_CMD}         += , @(${lInE`SPa`C`iNg}, '0' , ("{4}{1}{2}{3}{0}{5}"-f'N FLA','O EXECUT','I','O','N','GS')                                          , @(("{1}{4}{2}{3}{0}" -f 'er','Out-','lLaun','ch','PowerShel'), '', '2'))
    ${MeN`U`l`evEl`_`lAuN`cher_`CMD}         += , @(${LiNe`spac`InG}, '1' , ("{1}{2}{0}"-f 't','-','NoExi')                                                     , @(("{2}{4}{1}{3}{0}" -f 'uncher','rShell','Out','La','-Powe'), '', '2'))
    ${M`en`Ul`E`VeL_LA`Un`cHER_CMD}         += , @(${LIne`SpA`ciNg}, '2' , ("{1}{4}{3}{2}{0}" -f'e','-No','v','acti','nInter')                                             , @(("{2}{3}{0}{1}{4}" -f'h','ellLaunc','O','ut-PowerS','her'), '', '2'))
    ${M`EnulEvEL`_`l`Au`N`CheR_CMD}         += , @(${Lin`Espa`CInG}, '3' , ("{0}{1}{2}" -f'-','NoLo','go')                                                     , @(("{3}{5}{0}{1}{6}{2}{4}"-f 'PowerShe','llL','nch','Ou','er','t-','au'), '', '2'))
    ${MEnulE`Vel_laUnc`hER_c`Md}         += , @(${l`i`NeS`pAcInG}, '4' , ("{1}{0}{2}{3}" -f 'oPro','-N','fi','le')                                                  , @(("{0}{2}{1}{4}{3}{5}"-f'Out-Po','erSh','w','aunch','ellL','er'), '', '2'))
    ${MenULeve`l`_`la`UNChEr_CmD}         += , @(${LiN`Esp`A`CInG}, '5' , ("{1}{0}"-f 'and','-Comm')                                                    , @(("{5}{4}{2}{1}{3}{0}"-f'uncher','ll','werShe','La','-Po','Out'), '', '2'))
    ${ME`N`U`LEVEL_L`AuNC`HER_c`Md}         += , @(${L`I`NesPAc`inG}, '6' , ("{1}{2}{3}{0}"-f 'en','-WindowStyl','e H','idd')                                         , @(("{3}{0}{2}{4}{1}"-f 'erShellL','cher','a','Out-Pow','un'), '', '2'))
    ${Menu`lEVel_l`AU`Nch`Er_`cMd}         += , @(${l`I`NeSpaCINg}, '7' , ("{1}{4}{0}{2}{3}{6}{5}" -f 'ut','-E','i','on','xec','ass','Policy Byp')                                     , @(("{3}{2}{0}{4}{5}{1}"-f'we','r','-Po','Out','rShellLaunc','he'), '', '2'))
    ${me`NUlEveL`_`lAuNchER_cmD}         += , @(${LiNeSP`Ac`i`NG}, '8' , ("{2}{5}{3}{0}{4}{1}{6}"-f' p','ershel','-Wow64 (to p','it','ow','ath 32-b','l.exe)')                      , @(("{3}{1}{0}{4}{2}{5}" -f 'rSh','Powe','n','Out-','ellLau','cher'), '', '2'))

    ${mEN`UL`E`VeL_`L`A`UNcHer_`wmiC}         =   @()
    ${Me`NuL`eVeL_`LA`UNChER`_wmic}        += , @(('Ente'+'r'+' '+'st'+'ring '+'of'+' '+'num'+'bers '+'wit'+'h '+'a'+'ll '+'des'+'ire'+'d '+'fl'+'ags '+'to'+' '+'pass'+' '+'to'+' '+'func'+'tion'+'.'+' '+'(e.'+'g. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${Me`N`UlE`VeL_L`Aun`Che`R_WmIC}        += , @(${Li`NE`Spac`INg}, '0' , ("{0}{1}{3}{2}" -f'NO E','XECUTION F','AGS','L')                                          , @(("{4}{3}{5}{2}{1}{0}" -f'her','werShellLaunc','o','t-','Ou','P'), '', '3'))
    ${MeNUlEv`el`_lAUNCHeR_`w`mIc}        += , @(${linE`spA`CiNG}, '1' , ("{2}{1}{0}" -f'Exit','No','-')                                                     , @(("{3}{1}{4}{0}{2}{5}{6}" -f 'wer','ut-','ShellLaunch','O','Po','e','r'), '', '3'))
    ${mE`NuLEV`El_L`A`UnCher`_wmIc}        += , @(${LiN`esPa`C`ing}, '2' , ("{4}{1}{3}{2}{0}" -f've','onInt','racti','e','-N')                                             , @(("{4}{0}{1}{3}{2}{5}" -f 'u','t-PowerShel','Laun','l','O','cher'), '', '3'))
    ${mENU`LevE`L_LAUNc`heR_`wMIc}        += , @(${L`iNESpacI`Ng}, '3' , ("{1}{2}{0}" -f'o','-NoL','og')                                                     , @(("{3}{2}{1}{4}{0}" -f'her','un','PowerShellLa','Out-','c'), '', '3'))
    ${m`enuLEvEl`_lAuN`Cher`_W`M`Ic}        += , @(${L`InE`sPAciNG}, '4' , ("{0}{1}{2}"-f'-NoPro','f','ile')                                                  , @(("{4}{5}{6}{3}{0}{1}{2}"-f'h','e','r','nc','Out-','Po','werShellLau'), '', '3'))
    ${m`EnulE`Ve`L`_lAUn`Che`R_WmiC}        += , @(${lI`NEsP`ACi`Ng}, '5' , ("{1}{0}{2}"-f 'm','-Com','and')                                                    , @(("{3}{0}{1}{4}{2}{5}"-f '-Pow','e','unc','Out','rShellLa','her'), '', '3'))
    ${men`U`lev`el_La`UnChE`R_WmIC}        += , @(${LIn`espACI`NG}, '6' , ("{3}{2}{1}{0}"-f'dden','e Hi','wStyl','-Windo')                                         , @(("{2}{0}{4}{3}{5}{1}" -f'owerShel','cher','Out-P','L','l','aun'), '', '3'))
    ${mEn`ULEVel`_`lAU`NchER_WmIc}        += , @(${lIneS`pac`i`NG}, '7' , ("{0}{1}{5}{2}{6}{3}{4}{7}" -f'-','Execut','onP','cy By','pas','i','oli','s')                                     , @(("{0}{3}{1}{4}{2}" -f 'O','S','ncher','ut-Power','hellLau'), '', '3'))
    ${me`Nule`VEL_L`Au`NcHEr_W`Mic}        += , @(${LIneSPa`c`I`NG}, '8' , (("{1}{9}{2}{7}{5}{0}{4}{8}{6}{3}" -f 'th 32-bit ','-','o','e)','po','to pa','rshell.ex','w64 (','we','W'))                      , @(("{3}{0}{4}{1}{2}" -f 'w','rShel','lLauncher','Out-Po','e'), '', '3'))

    ${meNULeV`eL`_lA`UnCH`eR`_ruNDll}       =   @()
    ${MEnul`EvEL_L`AUn`c`he`R_`RUnD`Ll}      += , @(('E'+'nter '+'st'+'ring '+'o'+'f '+'numbers'+' '+'wi'+'th '+'al'+'l '+'des'+'ir'+'ed '+'f'+'lag'+'s '+'t'+'o '+'pass'+' '+'to'+' '+'f'+'unctio'+'n. '+'(e.'+'g'+'. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${menUlEv`el_LA`U`NCH`er_rUndLL}      += , @(${lI`Ne`SpaCI`NG}, '0' , ("{3}{0}{2}{1}"-f'XECU','N FLAGS','TIO','NO E')                                          , @(("{1}{4}{0}{2}{3}"-f'Sh','Out-P','ellLaun','cher','ower'), '', '4'))
    ${ME`Nule`Vel_L`AU`N`Ch`ER_RU`NdlL}      += , @(${Lin`E`S`pacING}, '1' , ("{2}{0}{1}" -f 'x','it','-NoE')                                                     , @(("{1}{4}{5}{3}{2}{0}"-f 'cher','O','Laun','ll','ut-Pow','erShe'), '', '4'))
    ${ME`NUlEVel_`L`A`UNche`R_rUNdLL}      += , @(${L`i`NeSpAcINg}, '2' , ("{3}{1}{0}{2}" -f 'ractiv','nte','e','-NonI')                                             , @(("{1}{2}{3}{0}"-f'her','Out-Pow','erS','hellLaunc'), '', '4'))
    ${mEN`ULE`Vel_LauNcH`eR`_rUnD`ll}      += , @(${LI`NEs`paCING}, '3' , ("{0}{2}{1}"-f'-N','Logo','o')                                                     , @(("{0}{3}{2}{1}{4}"-f 'Out-Powe','nc','ellLau','rSh','her'), '', '4'))
    ${MEnuLeVeL`_Lau`NC`Her_`RUn`dll}      += , @(${L`inE`Sp`ACinG}, '4' , ("{0}{1}{2}"-f '-No','P','rofile')                                                  , @(("{3}{0}{2}{1}{5}{4}" -f't-Po','e','werSh','Ou','lLauncher','l'), '', '4'))
    ${menUl`E`VEL_L`Au`NCHER`_RuN`dLL}      += , @(${li`NESpAC`iNG}, '5' , ("{0}{1}{2}" -f'-C','om','mand')                                                    , @(("{3}{5}{4}{0}{2}{1}" -f 'ellL','r','aunche','O','h','ut-PowerS'), '', '4'))
    ${M`eNule`V`E`L`_L`A`UnCHER`_RUndLl}      += , @(${L`iNEs`pacinG}, '6' , ("{1}{3}{0}{2}" -f'Style Hi','-Wi','dden','ndow')                                         , @(("{0}{1}{3}{6}{5}{2}{4}"-f'Out-','Pow','h','er','er','lLaunc','Shel'), '', '4'))
    ${m`eNulE`V`EL_lAU`Nc`hER`_RUnD`lL}      += , @(${li`NEsPAC`I`NG}, '7' , ("{2}{3}{4}{0}{1}" -f'p','ass','-Exec','utio','nPolicy By')                                     , @(("{3}{4}{0}{1}{5}{2}"-f'ow','erS','Launcher','O','ut-P','hell'), '', '4'))
    ${m`ENulevEl`_Lau`NCHe`R_`RU`NDLL}      += , @(${lI`N`e`sPaCINg}, '8' , (("{9}{10}{11}{5}{3}{7}{2}{0}{8}{6}{1}{4}"-f'it','l.ex','b',' path 32','e)','(to','l','-',' powershe','-','Wow6','4 '))                      , @(("{2}{4}{3}{1}{0}"-f'r','he','Out-P','ellLaunc','owerSh'), '', '4'))

    ${MenuLevel_Launcher_VAR+}       =   @()
    ${MenuLevel_Launcher_VAR+}      += , @(('Ente'+'r '+'s'+'tring '+'of'+' '+'num'+'bers'+' '+'w'+'ith '+'a'+'ll '+'desired'+' '+'f'+'lags '+'to'+' '+'p'+'ass '+'t'+'o '+'f'+'unct'+'i'+'on. '+'('+'e.g.'+' '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_VAR+}      += , @(${LiNe`SPACi`NG}, '0' , ("{1}{0}{3}{2}{5}{4}"-f'E','NO EX','UTI','C','LAGS','ON F')                                          , @(("{2}{1}{4}{3}{0}" -f'er','-PowerShellLa','Out','h','unc'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${LIN`esp`AC`InG}, '1' , ("{0}{1}{2}"-f '-NoE','x','it')                                                     , @(("{2}{0}{4}{3}{1}"-f 't-Powe','llLauncher','Ou','She','r'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${lI`NESP`AcI`NG}, '2' , ("{1}{3}{0}{2}"-f 'n','-N','Interactive','o')                                             , @(("{4}{0}{3}{2}{1}"-f'Po','cher','Laun','werShell','Out-'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${li`NesPAC`ing}, '3' , ("{2}{1}{0}" -f 'oLogo','N','-')                                                     , @(("{4}{5}{1}{0}{2}{3}"-f'll','he','La','uncher','Out-Power','S'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${lI`NEspA`c`InG}, '4' , ("{2}{0}{1}" -f 'Prof','ile','-No')                                                  , @(("{0}{5}{3}{1}{2}{4}" -f'Ou','aunch','e','owerShellL','r','t-P'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${L`IneS`PA`ciNG}, '5' , ("{2}{1}{0}"-f'd','an','-Comm')                                                    , @(("{5}{0}{6}{4}{3}{2}{1}"-f 't-P','her','c','ellLaun','h','Ou','owerS'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${L`inES`P`ACInG}, '6' , ("{0}{3}{1}{4}{2}" -f '-','S','n','Window','tyle Hidde')                                         , @(("{2}{1}{0}{4}{3}"-f 'hellLaun','-PowerS','Out','er','ch'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${lI`NESPA`ci`Ng}, '7' , ("{5}{2}{4}{3}{0}{1}"-f 'Byp','ass','utionPol','cy ','i','-Exec')                                     , @(("{6}{1}{3}{4}{2}{0}{5}"-f 'he','u','PowerShellLaunc','t','-','r','O'), '', '5'))
    ${MenuLevel_Launcher_VAR+}      += , @(${l`IN`ESPAcIng}, '8' , ("{3}{7}{8}{5}{0}{6}{1}{2}{4}" -f 'owers','l','.ex','-Wow64 (t','e)','2-bit p','hel','o path ','3')                      , @(("{3}{1}{0}{4}{2}"-f'PowerS','-','uncher','Out','hellLa'), '', '5'))

    ${MenuLevel_Launcher_STDIN+}     =   @()
    ${MenuLevel_Launcher_STDIN+}    += , @(('Ente'+'r '+'strin'+'g '+'o'+'f '+'nu'+'mbe'+'rs '+'with'+' '+'al'+'l '+'desir'+'e'+'d '+'fl'+'ag'+'s '+'to'+' '+'pass'+' '+'to'+' '+'fun'+'c'+'tio'+'n. '+'('+'e.g. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_STDIN+}    += , @(${liNE`SP`ACIng}, '0' , ("{0}{2}{3}{4}{1}" -f'NO EXE','N FLAGS','CU','T','IO')                                          , @(("{2}{4}{3}{0}{1}" -f'h','er','Out-Power','aunc','ShellL'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${lInE`sPA`cInG}, '1' , ("{0}{1}" -f'-NoEx','it')                                                     , @(("{0}{5}{4}{3}{2}{1}" -f'O','ncher','au','lL','l','ut-PowerShe'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${liNeS`p`Ac`ing}, '2' , ("{2}{0}{3}{1}" -f'onInter','ive','-N','act')                                             , @(("{6}{4}{1}{3}{0}{5}{2}"-f'llLaunc','ow','r','erShe','t-P','he','Ou'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${l`In`EsPACi`Ng}, '3' , ("{0}{2}{1}"-f '-','go','NoLo')                                                     , @(("{1}{0}{2}{3}" -f 't-Po','Ou','werShellLaunc','her'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${li`N`eSPACInG}, '4' , ("{2}{1}{0}"-f 'Profile','No','-')                                                  , @(("{1}{4}{2}{3}{0}{5}{6}"-f'hellLau','Out-P','w','erS','o','nche','r'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${li`NEsPACi`NG}, '5' , ("{1}{2}{0}" -f 'and','-','Comm')                                                    , @(("{2}{3}{4}{0}{1}"-f'he','r','Out-Po','werShe','llLaunc'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${Li`NeSpA`cInG}, '6' , ("{3}{1}{2}{0}" -f'e Hidden','Windo','wStyl','-')                                         , @(("{4}{5}{0}{3}{2}{1}"-f 'h','er','llLaunch','e','Out-','PowerS'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${lINES`P`AcI`NG}, '7' , ("{0}{4}{2}{1}{5}{3}{6}" -f '-E','onPo','cuti','icy Byp','xe','l','ass')                                     , @(("{4}{3}{1}{0}{2}"-f 'llLaunch','erShe','er','ow','Out-P'), '', '6'))
    ${MenuLevel_Launcher_STDIN+}    += , @(${li`NesP`AcIng}, '8' , ("{6}{1}{2}{3}{9}{8}{0}{7}{5}{4}{10}"-f 't ',' ','(to path ','32','e','ershell.ex','-Wow64','pow','bi','-',')')                      , @(("{0}{1}{2}{4}{3}"-f 'Out-P','ow','erShe','cher','llLaun'), '', '6'))
    
    ${MenuLevel_Launcher_CLIP+}      =   @()
    ${MenuLevel_Launcher_CLIP+}     += , @(('Ent'+'er '+'string'+' '+'of'+' '+'num'+'bers '+'with'+' '+'a'+'ll '+'d'+'esir'+'ed '+'fl'+'ags'+' '+'to'+' '+'p'+'ass '+'t'+'o '+'fu'+'nctio'+'n'+'. '+'(e.g'+'. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_CLIP+}     += , @(${lI`N`eSPacINg}, '0' , ("{2}{3}{0}{1}"-f 'N ','FLAGS','NO EXE','CUTIO')                                          , @(("{2}{4}{1}{3}{0}"-f 'auncher','he','O','llL','ut-PowerS'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${LINeS`p`Aci`NG}, '1' , ("{1}{0}" -f 'Exit','-No')                                                     , @(("{4}{5}{0}{1}{3}{2}"-f'rShellL','aunc','er','h','Ou','t-Powe'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${L`INE`SPac`inG}, '2' , ("{0}{1}{2}" -f '-NonIn','t','eractive')                                             , @(("{5}{1}{0}{6}{3}{2}{4}"-f'w','o','aunche','ShellL','r','Out-P','er'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${LInE`sPac`Ing}, '3' , ("{1}{0}{2}" -f 'NoLog','-','o')                                                     , @(("{0}{1}{3}{5}{4}{2}"-f 'Out-Pow','er','r','ShellLaunc','e','h'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${lI`N`eSpaCI`Ng}, '4' , ("{1}{0}{2}" -f 'Pro','-No','file')                                                  , @(("{4}{1}{2}{5}{3}{0}" -f 'r','-','PowerShel','che','Out','lLaun'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${LinESP`A`CI`NG}, '5' , ("{0}{1}"-f '-Co','mmand')                                                    , @(("{6}{2}{1}{5}{3}{0}{4}" -f 'ch','rShellL','owe','un','er','a','Out-P'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${lIneS`PAC`iNG}, '6' , ("{3}{2}{0}{1}"-f 'ndow','Style Hidden','i','-W')                                         , @(("{0}{1}{4}{3}{2}"-f'Out','-','er','Launch','PowerShell'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${Line`s`paCinG}, '7' , ("{6}{1}{2}{5}{0}{3}{4}"-f 'c','xecu','tio','y Byp','ass','nPoli','-E')                                     , @(("{0}{3}{1}{4}{2}" -f'Out-','un','her','PowerShellLa','c'), '', '7'))
    ${MenuLevel_Launcher_CLIP+}     += , @(${L`iNEsp`A`ciNg}, '8' , ("{0}{1}{6}{3}{2}{7}{5}{4}" -f '-Wow64 (to pat','h 3','sh','-bit power','xe)','ll.e','2','e')                      , @(("{1}{0}{2}{3}{4}{5}"-f't-Pow','Ou','erSh','el','lLa','uncher'), '', '7'))
    
    ${MenuLevel_Launcher_VAR++}      =   @()
    ${MenuLevel_Launcher_VAR++}     += , @(('En'+'ter '+'stri'+'ng '+'o'+'f '+'numbe'+'rs'+' '+'with'+' '+'all'+' '+'de'+'si'+'red '+'fl'+'ags'+' '+'t'+'o '+'pass'+' '+'to'+' '+'function'+'.'+' '+'(e'+'.g'+'. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_VAR++}     += , @(${LI`NesP`AcInG}, '0' , ("{2}{4}{5}{1}{3}{0}"-f'LAGS','UTION ','NO ','F','EXE','C')                                          , @(("{3}{2}{0}{4}{1}" -f'w','er','-Po','Out','erShellLaunch'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${LiNes`P`ACI`Ng}, '1' , ("{1}{0}"-f 't','-NoExi')                                                     , @(("{3}{1}{0}{4}{2}" -f 'werShe','Po','her','Out-','llLaunc'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${liN`espa`cING}, '2' , ("{2}{1}{0}"-f'tive','erac','-NonInt')                                             , @(("{0}{5}{3}{6}{4}{1}{2}" -f'O','lLaunc','her','o','l','ut-P','werShe'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${L`INEsP`AC`ing}, '3' , ("{0}{1}" -f '-N','oLogo')                                                     , @(("{2}{3}{0}{1}" -f'Laun','cher','Out-Po','werShell'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${lI`NEs`pAc`inG}, '4' , ("{2}{0}{1}" -f'Pro','file','-No')                                                  , @(("{3}{4}{2}{5}{0}{1}{6}"-f 'el','lLaunche','rS','Out','-Powe','h','r'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${LiNeS`PA`CinG}, '5' , ("{1}{0}{2}" -f 'mman','-Co','d')                                                    , @(("{0}{1}{2}{3}" -f 'Out-Pow','erSh','ellL','auncher'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${liNe`S`paciNg}, '6' , ("{1}{2}{0}{3}"-f'd','-WindowSty','le Hi','den')                                         , @(("{3}{2}{4}{1}{0}"-f'ncher','ellLau','Power','Out-','Sh'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${li`N`E`SpaCing}, '7' , ("{0}{3}{4}{2}{1}{5}" -f'-Execut',' By','icy','ionPo','l','pass')                                     , @(("{3}{2}{1}{0}{4}" -f 'L','ell','PowerSh','Out-','auncher'), '', '8'))
    ${MenuLevel_Launcher_VAR++}     += , @(${LI`N`ESpAc`INg}, '8' , ("{6}{7}{1}{2}{0}{8}{9}{4}{3}{5}"-f 'wer','4 (','to path 32-bit po','.ex','l','e)','-Wow','6','sh','el')                      , @(("{0}{4}{3}{1}{5}{2}" -f 'Out-PowerShe','n','her','au','llL','c'), '', '8'))

    ${MenuLevel_Launcher_STDIN++}    =   @()
    ${MenuLevel_Launcher_STDIN++}   += , @(('Ent'+'er '+'str'+'ing '+'o'+'f '+'num'+'b'+'ers '+'with'+' '+'a'+'ll '+'desi'+'r'+'ed '+'flag'+'s '+'to'+' '+'pa'+'ss '+'to'+' '+'functi'+'on.'+' '+'(e.g'+'.'+' '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_STDIN++}   += , @(${li`NeSPac`InG}, '0' , ("`tNO "+'E'+'XECU'+'TION '+'FL'+'AGS')                                        , @(("{5}{3}{2}{4}{0}{1}" -f'nch','er','llL','werShe','au','Out-Po'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${L`I`NeSp`ACING}, '1' , "`t-NoExit"                                                   , @(("{0}{1}{4}{3}{2}" -f'Out-Powe','rShel','uncher','a','lL'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${l`INe`SPACiNg}, '2' , "`t-NonInteractive"                                           , @(("{2}{3}{0}{4}{1}"-f 'PowerShellLa','ncher','Ou','t-','u'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${liN`e`s`PaCing}, '3' , "`t-NoLogo"                                                   , @(("{6}{2}{5}{4}{1}{0}{3}"-f 'h','nc','t-PowerShell','er','au','L','Ou'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${Lin`E`spaCinG}, '4' , "`t-NoProfile"                                                , @(("{4}{0}{2}{3}{1}"-f 'er','ncher','Shell','Lau','Out-Pow'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${Li`NEsP`ACInG}, '5' , "`t-Command"                                                  , @(("{0}{4}{1}{2}{3}" -f 'Out-Po','erShellLaunch','e','r','w'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${l`inEspaCI`Ng}, '6' , ("`t-WindowStyle "+'Hi'+'dden')                                       , @(("{0}{4}{2}{3}{1}" -f 'Out-Po','er','h','ellLaunch','werS'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${LI`NE`SPAC`Ing}, '7' , ("`t-ExecutionPolicy "+'Bypa'+'ss')                                   , @(("{4}{3}{1}{2}{0}"-f 'llLauncher','Powe','rShe','ut-','O'), '', '9'))
    ${MenuLevel_Launcher_STDIN++}   += , @(${linES`p`Acing}, '8' , ("`t-Wow64 "+'(t'+'o '+'pa'+'th '+'32-b'+'it'+' '+'powersh'+'el'+'l.exe)')                    , @(("{5}{0}{2}{6}{1}{4}{3}"-f 'ut-P','Laun','o','r','che','O','werShell'), '', '9'))

    ${MenuLevel_Launcher_CLIP++}     =   @()
    ${MenuLevel_Launcher_CLIP++}    += , @(('Ente'+'r '+'s'+'tring '+'of'+' '+'nu'+'mbers'+' '+'wi'+'th '+'a'+'ll '+'d'+'esi'+'red '+'f'+'lags'+' '+'to'+' '+'pa'+'ss '+'t'+'o '+'f'+'unct'+'ion. '+'(e'+'.g.'+' '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_CLIP++}    += , @(${liN`E`sP`AcINg}, '0' , ("{5}{0}{4}{1}{3}{2}" -f' EXECUTION','F','S','LAG',' ','NO')                                          , @(("{6}{1}{3}{4}{0}{2}{5}"-f'au','-Powe','nche','r','ShellL','r','Out'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${LInE`spACI`NG}, '1' , ("{0}{1}"-f '-No','Exit')                                                     , @(("{0}{1}{3}{2}"-f 'Out-Power','ShellL','uncher','a'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${li`N`ESPAC`ing}, '2' , ("{0}{2}{1}{3}"-f '-','terac','NonIn','tive')                                             , @(("{1}{3}{6}{4}{2}{0}{5}" -f 'he','Out-Po','nc','wer','Lau','r','Shell'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${l`I`NEsP`ACiNG}, '3' , ("{1}{0}" -f 'NoLogo','-')                                                     , @(("{3}{0}{4}{2}{5}{1}"-f'S','r','llLau','Out-Power','he','nche'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${LiNe`spA`c`iNG}, '4' , ("{2}{1}{0}"-f'ofile','r','-NoP')                                                  , @(("{0}{1}{2}{4}{3}"-f'O','ut-Pow','erS','lLauncher','hel'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${line`SpaC`I`Ng}, '5' , ("{2}{1}{0}"-f 'mand','om','-C')                                                    , @(("{0}{2}{3}{1}{5}{4}" -f 'Out','owe','-','P','r','rShellLaunche'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${lI`NEs`pAc`ING}, '6' , ("{1}{4}{2}{3}{0}" -f 'n','-WindowSty','Hid','de','le ')                                         , @(("{3}{1}{0}{4}{2}{5}" -f'P','ut-','Lau','O','owerShell','ncher'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${lINEs`pAcI`NG}, '7' , ("{4}{0}{1}{2}{5}{3}"-f'ut','ionPolicy',' Byp','s','-Exec','as')                                     , @(("{3}{1}{2}{0}"-f 'her','-PowerShellLaun','c','Out'), '', '10'))
    ${MenuLevel_Launcher_CLIP++}    += , @(${l`INes`PAcInG}, '8' , ("{3}{6}{0}{2}{4}{7}{5}{8}{1}{9}" -f'4 ','wershell','(to','-W',' ','th 32-bi','ow6','pa','t po','.exe)')                      , @(("{3}{1}{4}{5}{0}{6}{2}"-f 'au','ut-PowerS','her','O','hel','lL','nc'), '', '10'))

    ${MenuLevel_Launcher_RUNDLL++}   =   @()
    ${MenuLevel_Launcher_RUNDLL++}  += , @(('En'+'ter '+'str'+'ing'+' '+'o'+'f '+'n'+'umber'+'s '+'with'+' '+'al'+'l '+'desired'+' '+'flag'+'s'+' '+'to'+' '+'pas'+'s '+'to'+' '+'fu'+'nctio'+'n. '+'('+'e.g. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${li`NeSPaC`i`Ng}, '0' , ("{0}{3}{1}{2}"-f 'NO E','E','CUTION FLAGS','X')                                          , @(("{2}{1}{4}{3}{5}{0}" -f 'uncher','t-','Ou','erShellL','Pow','a'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${lin`EsPacI`NG}, '1' , ("{2}{1}{0}"-f 't','i','-NoEx')                                                     , @(("{2}{3}{1}{4}{6}{5}{0}" -f 'cher','owerS','O','ut-P','hel','Laun','l'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${L`I`NesPaCI`Ng}, '2' , ("{1}{0}{4}{3}{2}"-f 'onI','-N','ve','i','nteract')                                             , @(("{1}{2}{4}{0}{3}" -f 'owerShellL','Out','-','auncher','P'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${LIN`E`SPaC`InG}, '3' , ("{0}{1}"-f'-NoLog','o')                                                     , @(("{0}{2}{6}{4}{3}{5}{1}"-f'Out-','r','P','a','rShellL','unche','owe'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${L`iNeSpAC`Ing}, '4' , ("{2}{0}{1}"-f 'NoP','rofile','-')                                                  , @(("{3}{2}{0}{4}{5}{1}{6}" -f 'll','unch','owerShe','Out-P','L','a','er'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${LiNEs`pACi`Ng}, '5' , ("{1}{0}{2}"-f'mman','-Co','d')                                                    , @(("{0}{3}{5}{1}{2}{4}"-f'Out','rS','hellLaunch','-Po','er','we'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${liNEsp`A`cI`NG}, '6' , ("{4}{2}{0}{5}{1}{3}"-f'Style','d','dow','den','-Win',' Hi')                                         , @(("{0}{1}{4}{3}{6}{2}{5}"-f'Out-','Pow','llLaun','Sh','er','cher','e'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${LI`NeSpA`CI`NG}, '7' , ("{1}{6}{0}{3}{4}{2}{5}" -f 'ecutionPolic','-','Byp','y',' ','ass','Ex')                                     , @(("{4}{0}{2}{3}{1}"-f 'ut-Pow','auncher','er','ShellL','O'), '', '11'))
    ${MenuLevel_Launcher_RUNDLL++}  += , @(${L`i`N`ESpaCiNG}, '8' , (("{4}{5}{9}{7}{10}{1}{3}{2}{8}{0}{6}"-f 'hell','i','p','t ','-','Wow6','.exe)','to pa','owers','4 (','th 32-b'))                      , @(("{5}{1}{2}{4}{3}{6}{0}"-f 'er','r','Shel','u','lLa','Out-Powe','nch'), '', '11'))

    ${MenuLevel_Launcher_MSHTA++}    =   @()
    ${MenuLevel_Launcher_MSHTA++}   += , @(('En'+'ter '+'st'+'rin'+'g '+'o'+'f '+'num'+'b'+'ers '+'wi'+'th '+'al'+'l '+'desi'+'red'+' '+'f'+'lag'+'s '+'t'+'o '+'p'+'ass '+'t'+'o '+'fu'+'nctio'+'n'+'. '+'(e.g'+'. '+"23459)`n"), ''  , ''   , @('', '', ''))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${LinEs`PaCI`Ng}, '0' , ("{2}{0}{1}{3}"-f'O ','EXECUT','N','ION FLAGS')                                          , @(("{3}{4}{6}{1}{0}{5}{2}" -f 'rS','e','her','Ou','t-Po','hellLaunc','w'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${LinES`pA`C`ing}, '1' , ("{0}{1}" -f'-NoE','xit')                                                     , @(("{2}{5}{1}{3}{6}{4}{0}"-f'r','ell','O','Launc','e','ut-PowerSh','h'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${lInEs`Pac`I`NG}, '2' , ("{0}{1}{2}{3}"-f '-','NonInteract','i','ve')                                             , @(("{6}{0}{4}{2}{5}{3}{1}" -f'u','r','owerShe','che','t-P','llLaun','O'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${Li`NEsPA`cing}, '3' , ("{2}{1}{0}" -f'Logo','No','-')                                                     , @(("{3}{6}{4}{2}{0}{1}{5}" -f 'aunc','he','L','Ou','PowerShell','r','t-'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${LI`NeSpA`cING}, '4' , ("{3}{0}{1}{2}" -f'NoPro','fi','le','-')                                                  , @(("{3}{1}{0}{2}{4}"-f 'o','P','werShellLa','Out-','uncher'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${liN`eS`Pac`ING}, '5' , ("{0}{1}{2}"-f '-Com','man','d')                                                    , @(("{2}{4}{3}{0}{1}" -f'ellLaunche','r','Out-','werSh','Po'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${Li`NEsp`AcING}, '6' , ("{2}{0}{1}{3}{4}"-f'W','in','-','dowSt','yle Hidden')                                         , @(("{3}{4}{2}{1}{5}{0}"-f 'ncher','hellLa','erS','Out-','Pow','u'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${LI`NeSp`Ac`ING}, '7' , ("{0}{3}{2}{1}{5}{6}{4}"-f '-Exec','Pol','ion','ut','y Bypass','i','c')                                     , @(("{1}{4}{2}{5}{3}{0}" -f'uncher','Out','rS','llLa','-Powe','he'), '', '12'))
    ${MenuLevel_Launcher_MSHTA++}   += , @(${L`inespa`CiNG}, '8' , (("{0}{2}{5}{8}{4}{1}{7}{6}{3}"-f '-W','path 32-bit power','ow','.exe)',' ','64 ','hell','s','(to'))                      , @(("{3}{1}{5}{2}{4}{0}"-f'uncher','erS','e','Out-Pow','llLa','h'), '', '12'))

    
    ${tUt`OrIaLInPuT`op`T`IoNS}         = @(@(("{0}{2}{1}"-f'tut','ial','or'))                            , ('<Tu'+'torial'+'> '+'of'+' '+'how'+' '+'t'+'o '+'use'+' '+'th'+'is '+'t'+'ool '+' '+' '+' '+' '+' '+' '+' '+"`t "+' '+'') )
    ${menui`NpUt`o`pTiOnSShow`helP}     = @(@(("{0}{1}"-f'hel','p'),("{0}{2}{1}" -f 'get','p','-hel'),'?','-?','/?',("{1}{0}"-f'enu','m')), ('S'+'how '+'t'+'his '+'<He'+'l'+'p> '+'Men'+'u '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+"`t "+' '+'') )
    ${Me`NuInPu`To`ptionssHow`OpT`IOns}  = @(@(("{3}{1}{0}{2}"-f ' op','ow','tions','sh'),("{0}{1}"-f'sho','w'),("{0}{1}"-f 'o','ptions'))       , ('<Sho'+'w '+'options'+'>'+' '+'fo'+'r '+'payloa'+'d'+' '+'t'+'o '+'o'+'bfus'+'cate'+' '+' '+' '+"`t "+' '+'') )
    ${cl`eARScrEE`N`iN`PuT`O`p`TIons}      = @(@(("{1}{0}"-f'lear','c'),("{0}{1}{2}"-f'c','lear-h','ost'),'cls')            , ('<Clear>'+' '+'scree'+'n '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+"`t "+' '+'') )
    ${CoPyTo`clip`BoAR`DiNpUTO`p`TIo`NS}  = @(@(("{1}{0}"-f'py','co'),("{1}{0}"-f'ip','cl'),("{2}{0}{1}"-f 'li','pboard','c'))             , ('<'+'Co'+'py> '+'Obfus'+'ca'+'ted'+'Comma'+'n'+'d '+'t'+'o '+'clip'+'boar'+'d '+' '+' '+' '+' '+"`t "+' '+'') )
    ${ouTPuttO`D`I`sk`Inputo`pTI`oNs}     = @(@('out')                                 , ('Wri'+'te'+' '+'O'+'bfuscate'+'d'+'Comma'+'nd'+' '+'<O'+'ut> '+'to'+' '+'di'+'sk '+' '+' '+' '+' '+"`t "+' '+'') )
    ${exE`C`UtiO`NiNPutop`TIOns}        = @(@(("{1}{0}"-f'ec','ex'),("{0}{1}{2}" -f 'ex','ec','ute'),("{0}{1}"-f'tes','t'),'run')         , ('<Execut'+'e'+'> '+'Obfusc'+'atedCo'+'mman'+'d '+'l'+'ocall'+'y '+' '+' '+' '+' '+' '+' '+"`t "+' '+'') )
    ${re`setO`BfU`SCatiONIn`Pu`TOp`TIOnS} = @(@(("{1}{0}" -f'et','res'))                               , ("{7}{5}{4}{2}{0}{6}{1}{3}{8}"-f'Ob','tedC','ALL obfuscation for ','o',' ','et>','fusca','<Res','mmand  '))
    ${undO`oBF`USc`At`ioni`NpUTop`Ti`o`NS}  = @(@(("{1}{0}"-f 'do','un'))                                , ("{13}{11}{4}{0}{8}{3}{12}{2}{10}{9}{6}{1}{7}{5}"-f'fu','e','n ','cati','AST ob','Command  ','fuscat','d','s',' Ob','for','o> L','o','<Und'))
    ${b`AC`Kc`O`mm`AnDINput`OP`TiOns}      = @(@(("{0}{1}"-f'ba','ck'),("{1}{0}"-f' ..','cd'))                        , ('Go'+' '+'<Ba'+'ck> '+'to'+' '+'previ'+'ous '+'obf'+'us'+'cation '+'m'+'enu '+' '+' '+' '+"`t "+' '+'') )
    ${eXItcomMaNdi`NPUTo`P`T`iOnS}      = @(@(("{0}{1}"-f'qui','t'),("{0}{1}" -f'e','xit'))                         , ('<'+'Quit>'+' '+'Inv'+'oke-O'+'b'+'fuscat'+'io'+'n '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+"`t "+' '+'') )
    ${HoMe`MENuinp`UtoPTi`oNs}         = @(@(("{0}{1}" -f'ho','me'),("{1}{0}"-f'ain','m'))                         , ('Retu'+'rn '+'t'+'o '+'<H'+'o'+'me> '+'Men'+'u '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+' '+"`t "+' '+'') )
    
    
    
    
    ${aL`lAvaILAb`lEInP`UtoP`TIoNSlists}   = @()
    ${ALlavaIlaB`lE`inPuTOpt`IoN`sLI`stS}  += , ${TuToR`Ia`li`Npu`TOp`TIO`Ns}
    ${aLL`AVA`I`lABLEINp`UTopTI`O`N`SLIsTs}  += , ${M`enuINpU`TOP`TiO`NsSHOWHeLp}
    ${Alla`VaIl`ABl`eINPu`TO`P`TIonsLiS`Ts}  += , ${MENuiNPuT`O`pT`ions`s`hoWO`PtiOns}
    ${aLlaV`A`IlAbLei`NpU`T`O`Pt`iO`NslISTs}  += , ${CLea`RS`CRe`eNINpUTOptI`Ons}
    ${aLlAV`A`Il`ABleINPutO`Pt`i`On`S`LiSTs}  += , ${exEcutIOn`i`Npu`TopTI`ONS}
    ${All`AVA`Il`AbLeINp`UT`oPtIonsLi`sTs}  += , ${cOpYto`C`li`PbOArdI`Np`UTo`ptions}
    ${AlLa`Va`ilab`leInp`UT`optiOn`S`lIstS}  += , ${o`UTpUTToD`IS`kInPuTOPTio`Ns}
    ${ALLa`VaILABL`E`iN`pU`ToPtiON`Sl`is`Ts}  += , ${r`E`setOBFus`c`A`TiOn`inPutOPT`iOnS}
    ${A`L`l`A`Vai`LA`BLEiNpUTOPT`IOnSl`iStS}  += , ${UN`DoObfUSCATI`oniNP`UTOP`TI`onS}
    ${aLlaVaiLA`BlE`INp`UtOpt`i`ONsL`ists}  += , ${b`ACK`coMMa`Nd`INPuTopt`IOnS}    
    ${A`lLA`V`A`ilAbLEinp`UtoPt`IOnsLI`sTS}  += , ${exi`TCO`mmaNDInp`U`To`ptI`ONs}
    ${all`A`V`AIlaBleinp`Ut`OpTIOnSLiSts}  += , ${hO`MeM`En`UinP`UTOpt`I`OnS}
    
    

    
    ${e`xI`TInPu`T`options} = ${EX`i`TComma`NdInPUTO`pTi`onS}[0]
    ${MEnui`NPuTO`ptI`ONS} = ${B`Ac`KCO`Mm`ANdinpUtOPT`I`Ons}[0]
    
    
    Sh`oW-A`SciIaRt
    sta`Rt`-SL`EEP -Seconds 2
    
    
    SHow`-`HeLPm`e`NU
    
    
    
    ${UsErre`sP`OnSE} = ''
    While(${eXit`iNPuto`pT`ioNS} -NotContains ([String]${usER`RES`P`OnSe}).("{0}{2}{1}"-f'ToL','r','owe').Invoke())
    {
        ${U`SEr`REsPonsE} = ([String]${UsE`RR`ESp`oNSe}).("{1}{0}" -f'rim','T').Invoke()

        If(${HomEM`E`NUinpU`TOPT`I`ONs}[0] -Contains ([String]${u`SErrES`poN`sE}).("{1}{2}{0}" -f'Lower','T','o').Invoke())
        {
            ${USeRR`E`SpONsE} = ''
        }

        
        If(Tes`T-`paTh (("{0}{2}{1}" -f 'V','able:','ari') + "MenuLevel$UserResponse"))
        {
            ${us`eRre`sPOn`se} = sHOw-`meNU (gE`T-Vari`AB`LE "MenuLevel$UserResponse")."val`Ue" ${uSErreS`pO`N`se} ${SC`RI`PT:o`PTiOns`MENU}
        }
        Else
        {
            wrI`T`E-ERROR ('Th'+'e '+'va'+'riab'+'le '+"MenuLevel$UserResponse "+'does'+' '+'n'+'ot '+'exi'+'s'+'t.')
            ${USe`RrESp`OnSE} = ("{0}{1}" -f 'q','uit')
        }
        
        If((${U`sERrESPON`sE} -eq ("{0}{1}"-f 'qui','t')) -AND ${cL`i`WASSPEcI`FIeD} -AND !${NOExI`TWASS`PEc`IFiEd})
        {
            wR`I`Te`-OUTpuT ${sCr`Ipt:obfu`SC`ATEd`cOMManD}.("{1}{0}"-f'm','Tri').Invoke("`n")
            ${u`sE`RinPUT} = ("{0}{1}" -f'qu','it')
        }
    }
}



${Sc`Ri`ptd`IR} =  (VaRiABLe  ("fSW"+"B"+"ao") ).vALUE::("{1}{0}{4}{2}{3}"-f 'et','G','r','ectoryName','Di').Invoke(${My`IN`VoC`At`IoN}."mycO`MMA`ND"."dEfin`iti`oN") 


Function sHOW`-Me`NU
{


    Param(
        [Parameter(VAlUEfROMPIpELiNE = ${Tr`Ue})]
        [ValidateNotNullOrEmpty()]
        [Object[]]
        ${m`enU},

        [String]
        ${menun`Ame},

        [Object[]]
        ${sCRiPt:`OptiO`Ns`M`e`Nu}
    )

    
    ${a`ccepTaBle`I`N`put} = @()
    ${SE`lEC`TIO`N`coNTa`iNScomM`And} = ${f`A`lse}
    ForEach(${L`Ine} in ${m`eNU})
    {
        
        If(${L`Ine}."cO`Unt" -eq 4)
        {
            ${SELe`c`T`i`ON`con`TaiN`sCOMmand} = ${T`Rue}
        }
        ${A`CCe`pTAb`LE`I`NPUt} += (${l`INE}[1]).("{0}{1}"-f 'Tr','im').Invoke(' ')
    }

    ${us`eR`InPUT} = ${N`ULL}
    
    While(${Ac`Ce`ptaBLEi`NP`Ut} -NotContains ${U`sERINP`Ut})
    {
        
        WRIT`E-Ho`st "`n"
        ${BREaD`CR`U`mb} = ${men`UnA`mE}.("{1}{0}" -f 'rim','T').Invoke('_')
        If(${b`Rea`dCr`UMB}."LeNG`Th" -gt 1)
        {
            If(${Br`E`A`DCRumb}.("{1}{0}"-f'er','ToLow').Invoke() -eq ("{3}{2}{0}{1}" -f't','ions',' op','show'))
            {
                ${brEADcR`U`MB} = ("{3}{1}{2}{0}" -f' Options','ho','w','S')
            }
            If(${m`EN`U`NAME} -ne '')
            {
                
                ${b`ReADcRu`MB`o`cd}  =   @()
                ${BRea`d`CRUMB`o`cd} += , @('ps'      ,'PS')
                ${BreaD`crum`B`ocd} += , @('cmd'     ,'Cmd')
                ${b`R`ead`CRUMBOcd} += , @(("{1}{0}" -f 'c','wmi')    ,("{0}{1}"-f'Wm','ic'))
                ${Br`EAdcrum`BO`Cd} += , @(("{0}{1}"-f'run','dll')  ,("{1}{0}"-f 'l','RunDl'))
                ${b`REAdc`Ru`mBO`cD} += , @(("{1}{0}"-f 'ar+','v')    ,("{1}{0}" -f '+','Var'))
                ${B`REa`Dcr`UMboCD} += , @(("{1}{0}{2}"-f'i','std','n+')  ,("{1}{0}{2}" -f'dI','St','n+'))
                ${bR`Ea`d`crUmB`Ocd} += , @(("{0}{1}"-f'clip','+')   ,("{1}{0}"-f '+','Clip'))
                ${BRe`AdcR`Um`BocD} += , @(("{0}{1}"-f 'va','r++')   ,("{1}{0}"-f 'r++','Va'))
                ${br`eADCR`UMb`oCD} += , @(("{1}{0}{2}"-f 'in','std','++') ,("{1}{0}" -f'In++','Std'))
                ${B`R`eadcr`UMBOCd} += , @(("{0}{1}{2}"-f 'c','lip+','+')  ,("{2}{1}{0}" -f'p++','i','Cl'))
                ${bREA`dCrUMB`OcD} += , @(("{2}{1}{0}" -f'++','undll','r'),("{2}{0}{1}"-f'u','nDll++','R'))
                ${bRE`ADCru`mb`O`cd} += , @(("{0}{2}{1}"-f'ms','++','hta') ,("{1}{0}{2}"-f 'a','Msht','++'))
                ${bREaD`c`RuMBOcD} += , @('ast', 'AST')

                ${bREA`dCrumb`AR`R`AY} = @()
                ForEach(${CRu`mB} in ${br`EadCRu`mb}.("{1}{0}" -f'plit','S').Invoke('_'))
                {
                    
                    ${S`TILLlo`okIn`gfORsu`B`stI`TuT`iON} = ${t`Rue}
                    ForEach(${Sub`S`T`ITutIOn} in ${BReA`d`CRUmbOcD})
                    {
                        If(${c`RumB}.("{0}{1}" -f 'ToL','ower').Invoke() -eq ${subST`ITuT`IoN}[0])
                        {
                            ${B`ReA`DC`RuMbAR`R`Ay} += ${Su`BsTi`T`UT`iOn}[1]
                            ${StilLl`OOKInGfOR`sUbs`T`ItUTIon} = ${fA`lsE}
                        }
                    }

                    
                    If(${S`TILlLOOKiNGf`o`RSu`BS`TI`TUTI`On})
                    {
                        ${BreA`dC`R`UMb`ArRaY} += ${crU`MB}.("{0}{1}{2}" -f 'S','ubStri','ng').Invoke(0,1).("{1}{0}" -f'er','ToUpp').Invoke() + ${c`RUMb}.("{0}{1}{2}"-f'SubStri','n','g').Invoke(1).("{0}{1}"-f'ToLow','er').Invoke()

                        
                        If((${bReAD`C`R`UMb}.("{0}{1}"-f 'S','plit').Invoke('_')."cOu`NT" -eq 2) -AND (${BR`EAdCr`UmB}.("{1}{2}{0}"-f'With','Start','s').Invoke(("{2}{1}{0}"-f'_','r','Launche'))) -AND (${Cr`Umb} -ne ("{1}{0}" -f 'er','Launch')))
                        {
                            Writ`e`-`WArNINg ('No'+' '+'subs'+'tituio'+'n'+' '+'pa'+'ir '+'w'+'as '+'fou'+'nd '+'for'+' '+"`$Crumb=$Crumb "+'in'+' '+"`$BreadCrumb=$BreadCrumb. "+'A'+'dd '+'thi'+'s '+"`$Crumb "+'sub'+'st'+'itut'+'ion '+'pai'+'r '+'t'+'o '+"`$BreadCrumbOCD "+'ar'+'ray '+'in'+' '+'Invok'+'e-Ob'+'fuscatio'+'n.')
                        }
                    }
                }
                ${brE`ADcru`mb} = ${b`RE`A`dCR`UMba`RRAy} -Join '\'
            }
            ${b`R`e`ADcrumB} = '\' + ${BREadC`R`UMB}
        }
        
        
        ${fIrS`T`l`iNe} = ("{6}{0}{4}{5}{3}{1}{2}"-f 'oos',' the belo','w ','f','e o','ne o','Ch')
        If(${BRE`ADcR`U`Mb} -ne '')
        {
            ${fi`RS`TLINE} = ${F`Ir`sTlInE} + ${brEad`c`RU`mb}.("{0}{1}"-f'Tr','im').Invoke('\') + ' '
        }
        w`RiTe`-`HoSt "$FirstLine" -NoNewLine
        
        
        If(${sELE`cT`IonCOn`TA`I`NSC`oMmANd})
        {
            W`Ri`TE`-HosT ("{2}{1}{0}" -f'ns','ptio','o') -NoNewLine -ForegroundColor ("{0}{1}" -f'Gree','n')
            WRIT`E-Ho`ST " to" -NoNewLine
            wRi`T`E-HOst ("{1}{0}" -f 'PPLY',' A') -NoNewLine -ForegroundColor ("{0}{1}"-f'G','reen')
            wR`ITE-ho`St ("{4}{2}{1}{5}{3}{0}"-f 'nt payload','cu','to ','re',' ','r') -NoNewLine
        }
        Else
        {
            wRItE-`H`oSt ("{0}{1}" -f'op','tions') -NoNewLine -ForegroundColor ("{0}{1}" -f'Ye','llow')
        }
        wrI`Te-h`osT ":`n"
    
        ForEach(${LI`NE} in ${me`Nu})
        {
            ${li`NE`sPaCE}  = ${l`iNE}[0]
            ${Line`OPtI`oN} = ${Li`NE}[1]
            ${lIn`EVA`Lue}  = ${l`INE}[2]
            WR`itE`-HOST ${LinES`p`A`Ce} -NoNewLine

            
            If((${B`REaDcru`mb} -ne '') -AND (${li`Ne`spa`Ce}."s`TaRt`SWitH"('[')))
            {
                w`Rite`-HOsT (${b`REA`d`crUMb}.("{0}{1}{2}"-f'T','oUpp','er').Invoke().("{1}{0}"-f 'm','Tri').Invoke('\') + '\') -NoNewLine
            }
            
            
            If(${SElECt`io`N`CoNTaInsCoMMa`ND})
            {
                wR`IT`e-h`OSt ${LiNE`opT`i`On} -NoNewLine -ForegroundColor ("{1}{0}" -f 'en','Gre')
            }
            Else
            {
                WrItE-`ho`sT ${liNE`O`PT`ioN} -NoNewLine -ForegroundColor ("{0}{1}" -f'Y','ellow')
            }
            
            
            If(${LIn`eva`lUE}.("{0}{2}{1}" -f 'Cont','ins','a').Invoke('<') -AND ${LI`NE`VaL`Ue}.("{1}{0}"-f 'ins','Conta').Invoke('>'))
            {
                ${FI`R`STpARt}  = ${L`iNev`ALUE}.("{2}{0}{1}"-f'Stri','ng','Sub').Invoke(0,${li`NeVAl`UE}.("{1}{0}{2}"-f 'dex','In','Of').Invoke('<'))
                ${m`iDdle`Part} = ${line`VAl`Ue}.("{0}{1}{3}{2}"-f 'SubS','tri','g','n').Invoke(${FiR`STP`Art}."Le`N`gTH"+1)
                ${m`I`dDleP`ARt} = ${M`IddleP`ArT}.("{1}{0}"-f 'ng','SubStri').Invoke(0,${mIDd`lep`ART}.("{0}{1}{2}" -f'I','ndexO','f').Invoke('>'))
                ${l`A`ST`PaRT}   = ${liNE`Va`LuE}.("{2}{1}{0}"-f'ing','r','SubSt').Invoke(${fi`RSTPA`Rt}."L`E`NGTH"+${mId`d`l`ePart}."len`gTH"+2)
                W`RitE`-h`OST "`t$FirstPart" -NoNewLine
                wRi`TE-h`OSt ${M`IdD`l`ePARt} -NoNewLine -ForegroundColor ("{1}{0}" -f 'n','Cya')

                
                If(${L`Astpa`Rt}.("{1}{2}{0}" -f'ns','C','ontai').Invoke('<') -AND ${L`AsTP`ArT}.("{1}{2}{0}"-f'ains','Con','t').Invoke('>'))
                {
                    ${lin`evaL`Ue}  = ${LaS`TParT}
                    ${fIr`S`TpaRT}  = ${l`INeV`Al`Ue}.("{1}{0}"-f'ubString','S').Invoke(0,${L`I`Nev`Alue}.("{1}{0}"-f'xOf','Inde').Invoke('<'))
                    ${m`i`dD`LepArt} = ${lI`Nev`AL`Ue}.("{2}{0}{1}" -f'r','ing','SubSt').Invoke(${F`IRST`paRt}."LE`N`gth"+1)
                    ${mid`DlEp`Art} = ${M`IDdle`pARt}.("{0}{2}{1}" -f 'SubSt','ing','r').Invoke(0,${Mi`D`d`lEPaRT}.("{0}{1}"-f'Ind','exOf').Invoke('>'))
                    ${lA`St`pArT}   = ${l`inEv`AlUE}.("{0}{2}{1}"-f 'Su','g','bStrin').Invoke(${f`i`RS`TPaRt}."Le`NGtH"+${M`iDdL`eP`ArT}."LE`N`gtH"+2)
                    w`Rite-`HOST "$FirstPart" -NoNewLine
                    If(${Mi`ddle`pa`RT}.("{1}{0}{2}" -f 'Wi','Ends','th').Invoke((("{2}{1}{0}"-f ')','S3.0+','(P'))))
                    {
                        WR`ite-h`OSt ${M`IDdlEP`ARt} -NoNewline -ForegroundColor ("{1}{0}" -f 'd','Re')
                    }
                    Else
                    {
                        wRITe`-h`o`ST ${m`IDdLEp`A`RT} -NoNewLine -ForegroundColor ("{0}{1}" -f'C','yan')
                    }
                }

                Wr`itE-h`oSt ${l`AsT`part}
            }
            Else
            {
                Wr`it`E-hOSt "`t$LineValue"
            }
        }
        
        
        WRI`Te-`H`oSt ''
        If(${use`RiNp`UT} -ne '') {w`Ri`TE-HO`St ''}
        ${Us`eRI`NpUT} = ''
        
        While((${useRin`p`Ut} -eq '') -AND (${s`CriPt:c`o`MpOun`dc`Ommand}."C`OuNt" -eq 0))
        {
            
            w`RiTE`-hO`ST ("Invoke-Obfuscation$BreadCrumb> "+'') -NoNewLine -ForegroundColor ("{0}{1}" -f'M','agenta')

            
            If((${sC`R`IpT:`C`L`ICo`MMaNdS}."cOU`Nt" -gt 0) -OR (${scR`I`pT:cLi`cOm`mA`NdS} -ne ${N`ULl}))
            {
                If(${s`c`Rip`T:ClIc`OMMAnDs}.("{1}{2}{0}" -f'Type','G','et').Invoke()."Na`me" -eq ("{0}{1}" -f 'S','tring'))
                {
                    ${NE`Xtc`licoMmA`Nd} = ${sCrIp`T`:cL`IcOmMA`N`ds}.("{1}{0}"-f 'm','Tri').Invoke()
                    ${S`CRIp`T:cL`IC`OMMaNDS} = @()
                }
                Else
                {
                    ${Ne`xtClIc`OMmA`ND} = ([String]${ScRIpT:`CliCo`MMA`NDS}[0]).("{1}{0}"-f 'm','Tri').Invoke()
                    ${sc`RI`PT:Cli`Com`MAndS} = For(${i}=1; ${I} -lt ${scRi`pt:`Cl`ic`oMM`ANds}."cO`Unt"; ${I}++) {${s`cRi`P`T:CliCom`mANdS}[${i}]}
                }

                ${UserI`N`Put} = ${NEXtc`LicoMm`And}
            }
            Else
            {
                
                If(${c`liwaSSP`E`cI`FieD} -AND (${sCript:Cli`c`o`MmANDS}."COU`NT" -lt 1) -AND (${S`cripT:cOMPou`ND`CoMmaND}."co`UnT" -lt 1) -AND (${sCr`Ip`T:Q`UIeTW`As`sP`eCiFIEd} -OR !${N`Oexitw`ASs`P`eC`iFiEd}))
                {
                    If(${scR`ipt:QuIETw`ASspe`c`IfiEd})
                    {
                        
                        R`eM`OVE-iT`EM -Path ("{4}{3}{0}{2}{1}" -f 'on','te-Host',':Wri','ncti','Fu')
                        rE`mOv`e-I`Tem -Path ("{2}{3}{0}{1}" -f 'Sle','ep','F','unction:Start-')

                        ${S`cri`pT:QUIeTWa`s`sPecIF`ied} = ${Fal`sE}

                        
                        ${US`EriNp`UT}  = ("{2}{1}{0}" -f 'options','ow ','sh')
                        ${BR`eA`dcruMB} = ("{2}{0}{1}" -f'ion','s','Show Opt')
                    }
                    
                    If(!${NoExitW`AS`SPEC`IfIEd})
                    {
                        ${U`SERinp`Ut} = ("{1}{0}" -f't','qui')
                    }
                }
                Else
                {
                    ${UseRI`N`pUt} = (R`eAD`-HoST).("{0}{1}"-f 'Tri','m').Invoke()
                }

                
                If((${s`CRIPt:`C`liCOmmaN`Ds}."C`Ount" -eq 0) -AND !${us`e`RINpUT}.("{1}{0}" -f'oLower','T').Invoke().("{2}{1}{0}"-f 'tsWith','r','Sta').Invoke(("{0}{1}" -f's','et ')) -AND ${use`Ri`Nput}.("{0}{1}{2}" -f'Con','tain','s').Invoke(','))
                {
                    ${scR`IpT:clICoMM`A`Nds} = ${Use`R`inPut}.("{0}{1}" -f'Spl','it').Invoke(',')
                    
                    
                    ${US`E`RINPuT} = ''
                }
            }
        }

        
        ${uS`Er`INpUt} = ${useR`iNp`UT}.("{1}{0}"-f 'rim','T').Invoke('/\')

        
        
        If(((${MenU`L`eVel} | FORE`ACh-`oBjecT {${_}[1].("{1}{0}" -f'im','Tr').Invoke()}) -Contains ${u`SeR`inPUT}.("{1}{0}" -f 'it','Spl').Invoke('/\')[0]) -AND !((("{0}{1}"-f's','tring') -Contains ${u`serinP`UT}.("{1}{0}" -f'lit','Sp').Invoke('/\')[0]) -AND (${me`Nuna`me} -eq ("{2}{1}{0}" -f 'ken','o','_t'))) -AND (${m`enuNamE} -ne ''))
        {
            ${U`se`RinpUt} = ("{1}{0}" -f 'ome/','h') + ${us`Er`I`NpUt}.("{1}{0}" -f 'im','Tr').Invoke()
        }

        
        
        If((${s`c`Ri`P`T:COmpOuNd`C`OmMAnD}."cO`UNT" -eq 0) -AND !${uS`eRIN`PUT}.("{1}{0}{2}"-f'oL','T','ower').Invoke().("{0}{1}{2}"-f 'Start','s','With').Invoke(("{0}{1}"-f 'set',' ')) -AND !${UsER`I`N`PuT}.("{1}{2}{0}" -f'ower','T','oL').Invoke().("{3}{1}{2}{0}"-f 'h','tsW','it','Star').Invoke(("{0}{1}"-f 'ou','t ')) -AND (${U`seriN`PUT}.("{2}{0}{1}"-f 'n','s','Contai').Invoke('\') -OR ${usE`RInP`Ut}.("{1}{0}{2}"-f'i','Conta','ns').Invoke('/')))
        {
            ${Scr`IP`T:ComPoUNDC`om`maND} = ${USE`R`i`NpuT}.("{0}{1}"-f 'Sp','lit').Invoke('/\')
        }

        
        
        If(${sC`R`i`pt:`ComPoUnd`c`OMMA`Nd}."cO`UNT" -gt 0)
        {
            ${u`sERI`NPuT} = ''
            While((${U`seRINP`Ut} -eq '') -AND (${SCRi`Pt:cOM`PouN`dC`o`m`maNd}."COu`NT" -gt 0))
            {
                
                If(${scr`iP`T:c`OMPO`UndCOM`MAnd}.("{1}{0}{2}"-f'tTy','Ge','pe').Invoke()."n`Ame" -eq ("{0}{1}{2}"-f 'St','ri','ng'))
                {
                    ${NexT`c`Omp`O`UnD`COMm`And} = ${S`c`RipT`:COMP`OundComManD}.("{0}{1}" -f'Tri','m').Invoke()
                    ${SCrIp`T`:c`O`Mp`OunDcoMmanD} = @()
                }
                Else
                {
                    
                    
                    ${nEx`T`cOmpOUNDcom`MAND} = ([String]${S`CrIp`T`:`COMpOuN`D`c`oMmAND}[0]).("{1}{0}"-f'm','Tri').Invoke()
                    
                    
                    ${TE`Mp} = ${ScripT:c`OmpoUNd`c`Omm`AnD}
                    ${scRip`T:cO`mPoun`dCO`mMaNd} = @()
                    For(${i}=1; ${I} -lt ${TE`Mp}."C`oUNt"; ${I}++)
                    {
                        ${scRI`Pt:cO`MpOUN`D`COm`mA`Nd} += ${t`eMP}[${I}]
                    }
                }
                ${UsErI`NP`Ut} = ${nEx`TCompoUN`dCoM`ManD}
            }
        }

        
        
        ${tEMP`Us`ERIn`put} = ${us`E`RINP`UT}.("{1}{0}"-f'oLower','T').Invoke()
        @(97..122) | F`O`REACH-OBject {${tE`mPUS`E`R`INPUT} = ${t`Emp`UserInpUt}."rE`PLa`cE"([String]([Char]${_}),'')}
        @(0..9)    | forEacH`-o`BJE`ct {${TEMP`U`se`RI`NPuT} = ${tem`PUSE`RiNP`Ut}.("{1}{0}"-f'eplace','R').Invoke(${_},'')}
        ${te`mP`Us`EriN`put} = ${tEmp`US`er`Input}.("{0}{2}{1}"-f'R','lace','ep').Invoke(' ','').("{2}{0}{1}"-f'plac','e','Re').Invoke('+','').("{1}{0}" -f'lace','Rep').Invoke('#','').("{0}{2}{1}"-f'Rep','ace','l').Invoke('\','').("{0}{1}{2}" -f'Rep','la','ce').Invoke('/','').("{0}{1}{2}" -f'R','e','place').Invoke('-','').("{0}{2}{1}"-f 'Re','ce','pla').Invoke('?','')

        If((${t`e`mpuS`ERINP`UT}."lE`N`GTh" -gt 0) -AND !(${US`e`RINput}.("{0}{1}"-f'T','rim').Invoke().("{2}{0}{1}" -f'we','r','ToLo').Invoke().("{3}{1}{0}{2}"-f'tsWi','tar','th','S').Invoke(("{0}{1}"-f 's','et '))) -AND !(${U`sErIn`pUT}.("{1}{0}"-f 'm','Tri').Invoke().("{0}{1}"-f'ToLow','er').Invoke().("{2}{1}{3}{0}"-f'h','rt','Sta','sWit').Invoke(("{1}{0}"-f't ','ou'))))
        {
            
            ${US`ERI`Np`UT} = ${User`In`puT}.("{0}{2}{1}"-f'Re','ace','pl').Invoke('.*',("{1}{0}"-f'__','___')).("{2}{1}{0}" -f 'ce','a','Repl').Invoke('*','.*').("{0}{1}{2}"-f'R','e','place').Invoke(("{0}{1}"-f '_','____'),'.*')

            
            If(!${Us`ErI`NPUt}.("{0}{1}" -f 'Tri','m').Invoke().("{0}{2}{1}" -f'S','sWith','tart').Invoke('^') -AND !${uSEr`IN`PUT}.("{0}{1}"-f'T','rim').Invoke().("{2}{3}{1}{0}"-f 'h','tsWit','St','ar').Invoke('.*'))
            {
                ${u`SERinP`UT} = '^' + ${u`sE`RI`NPUt}
            }
            If(!${u`sER`in`pUT}.("{1}{0}"-f 'rim','T').Invoke().("{1}{2}{0}"-f 'sWith','En','d').Invoke('$') -AND !${U`S`EriNPUT}.("{1}{0}"-f'rim','T').Invoke().("{1}{0}{2}"-f 'dsWit','En','h').Invoke('.*'))
            {
                ${u`S`ERi`Nput} = ${uS`eR`iNPUt} + '$'
            }

            
            Try
            {
                ${me`Nu`FILTe`RED} = (${Me`Nu} | WH`ERe-o`BJE`Ct {(${_}[1].("{1}{0}" -f 'im','Tr').Invoke() -Match ${u`sERiNP`Ut}) -AND (${_}[1].("{1}{0}" -f'rim','T').Invoke()."leN`G`TH" -gt 0)} | Fo`Re`A`ch-OBJECT {${_}[1].("{0}{1}"-f'Tri','m').Invoke()})
            }
            Catch
            {
                
                
                WRI`TE-`HOsT "`n`nERROR:" -NoNewLine -ForegroundColor ("{0}{1}"-f 'Re','d')
                wr`IT`e-HoSt ("{6}{4}{5}{7}{8}{9}{3}{0}{2}{10}{1}" -f'follo','g error:','w','d the ','he current Regu','l',' T','ar Expressio','n ca','use','in')
                wriT`E-`H`osT (' '+' '+' '+' '+' '+' '+' '+"$_") -ForegroundColor ("{0}{1}" -f'R','ed')
            }

            
            If(${Me`NufI`l`T`Ered} -ne ${N`ULL})
            {
                
                ${u`s`erINPUT} = (g`Et-r`AndOM -Input ${M`ENufILt`E`ReD}).("{1}{0}"-f 'im','Tr').Invoke()

                
                If(${M`EN`UFILTERed}."cOU`NT" -gt 1)
                {
                    
                    If(${sE`l`ECTioncON`Ta`IN`ScO`mmAnD})
                    {
                        ${Co`LortOoU`TpUT} = ("{0}{1}" -f 'Gre','en')
                    }
                    Else
                    {
                        ${c`oL`O`RtoOutPut} = ("{1}{0}" -f'ow','Yell')
                    }

                    W`Rite`-HOSt ("`n`nRandomly "+'sel'+'ected '+'') -NoNewline
                    wR`I`TE-h`Ost ${u`Se`RINpuT} -NoNewline -ForegroundColor ${CO`l`Ort`OoUtp`Ut}
                    W`RitE-`HOsT ("{5}{4}{7}{3}{1}{0}{2}{6}{8}" -f 'ered opt','t','io','he following fil','m',' fro','n',' t','s: ') -NoNewline

                    For(${I}=0; ${i} -lt ${MEn`U`FiltE`REd}."cou`NT"-1; ${I}++)
                    {
                        wRI`T`e-HosT ${menufi`L`Te`ReD}[${I}].("{0}{1}"-f 'Tri','m').Invoke() -NoNewLine -ForegroundColor ${cO`lo`R`TOo`UTpUT}
                        W`Ri`TE-hOSt ', ' -NoNewLine
                    }
                    w`RITe`-`HOsT ${m`E`NuFI`LTEr`ed}[${Men`U`FI`lTeREd}."co`UNT"-1].("{1}{0}" -f'm','Tri').Invoke() -NoNewLine -ForegroundColor ${COlO`R`TooU`TPut}
                }
            }
        }

        
        ${OVeRRidEAC`C`e`Pta`B`LEInP`Ut} = ${f`AlSe}
        ${M`E`NU`swiTHmu`LtiSElEC`TnuM`BERs} = @(((("{1}{2}{0}" -f'her','{0}La','unc'))-f[chaR]92))
        If((${useR`In`PUT}.("{0}{1}"-f 'Tr','im').Invoke(("{1}{2}{0}" -f '6789',' 0123','45'))."l`EnGTh" -eq 0) -AND ${brE`Ad`cRuMb}.("{0}{1}" -f 'Contain','s').Invoke('\') -AND (${M`eN`Uswit`Hm`UL`TiSeLectnU`mbe`Rs} -Contains ${brEAd`Cr`U`MB}.("{1}{0}{2}" -f 'bStrin','Su','g').Invoke(0,${breA`dC`Ru`mB}.("{0}{1}{2}" -f 'Las','tInde','xOf').Invoke('\'))))
        {
            ${OV`ErRiD`Eac`c`EPtab`leI`NpUt} = ${t`RUe}
        }
        
        If(${eXiT`InPutOP`T`IONS} -Contains ${uSEr`i`NPUT}.("{1}{2}{0}"-f 'wer','T','oLo').Invoke())
        {
            Return ${eX`It`INp`UtOpTioNS}[0]
        }
        ElseIf(${MEnu`i`NpUtop`TiONs} -Contains ${U`sERinp`UT}.("{0}{1}{2}"-f'T','oLow','er').Invoke())
        {
            
            If(${BRE`A`dCr`UMB}.("{0}{2}{1}"-f 'Cont','ins','a').Invoke('\')) {${user`iN`Put} = ${BReaD`c`RU`MB}.("{0}{1}{2}" -f'S','ubStr','ing').Invoke(0,${BR`EA`dc`RuMb}.("{2}{1}{0}" -f'Of','Index','Last').Invoke('\')).("{1}{0}" -f 'lace','Rep').Invoke('\','_')}
            Else {${uS`Er`INPut} = ''}

            Return ${US`E`RIN`Put}.("{0}{1}"-f 'ToL','ower').Invoke()
        }
        ElseIf(${HomeMe`N`UiN`PutOP`TIOns}[0] -Contains ${uS`e`RInput}.("{1}{0}{2}"-f'oLo','T','wer').Invoke())
        {
            Return ${usEr`I`NPuT}.("{1}{0}"-f'r','ToLowe').Invoke()
        }
        ElseIf(${u`s`eRInPuT}.("{0}{1}" -f'ToLowe','r').Invoke().("{1}{0}{2}"-f 'ta','S','rtsWith').Invoke(("{0}{1}" -f 'se','t ')))
        {
            
            ${Use`RinPU`To`PtIoNn`AME}  = ${n`Ull}
            ${useRinpu`To`pt`ionva`Lue} = ${N`ULl}
            ${HA`Ser`Ror} = ${fA`l`SE}
    
            ${Us`Erin`p`UtMiNus`s`Et} = ${Us`er`inpUT}.("{0}{2}{1}" -f 'S','tring','ubS').Invoke(4).("{1}{0}" -f'rim','T').Invoke()
            If(${USErinP`U`T`mIn`Us`sET}.("{2}{0}{1}" -f'ndex','Of','I').Invoke(' ') -eq -1)
            {
                ${ha`se`R`Ror} = ${TR`UE}
                ${us`E`RIn`puTo`PT`ionNamE}  = ${UseRI`N`PUtM`inU`SSeT}.("{1}{0}"-f 'm','Tri').Invoke()
            }
            Else
            {
                ${US`E`Rinp`Ut`oPtIonNA`mE}  = ${USe`R`inPUtM`InUsS`eT}.("{2}{1}{0}"-f'ing','ubStr','S').Invoke(0,${uSe`R`InP`U`TmiNuSset}.("{0}{1}"-f 'Index','Of').Invoke(' ')).("{1}{0}"-f 'rim','T').Invoke().("{0}{1}{2}"-f'T','o','Lower').Invoke()
                ${US`e`RiNPUT`O`ptiOnVA`luE} = ${U`serinPUtM`INu`sSet}.("{0}{2}{1}"-f 'SubStri','g','n').Invoke(${uS`ERinPUT`minuSS`eT}.("{0}{1}" -f'I','ndexOf').Invoke(' ')).("{1}{0}" -f'm','Tri').Invoke()
            }

            
            If(${Sett`AB`lEInP`Ut`OPT`iOns} -Contains ${uSe`R`i`Np`Uto`PTiONNamE})
            {
                
                If(${UsEr`in`P`U`T`OpTionVAlUE}."le`NGtH" -eq 0) {${u`S`e`RINpUToptIo`Nn`Ame} = ("{0}{1}{2}" -f 'em','pt','yvalue')}
                Switch(${us`ERIn`P`UTOPtioNNAME}.("{0}{2}{1}"-f'ToLo','r','we').Invoke())
                {
                    ("{1}{2}{0}{3}" -f'tpa','sc','rip','th') {
                        If(${use`Ri`NP`UTOPti`OnvALue} -AND ((T`est-P`ATH ${U`S`erIn`PuTO`pTIONvALUe}) -OR (${uS`E`RiNP`UTOpT`I`o`NvAlue} -Match ((("{3}{0}{4}{2}{5}{1}"-f 'ht','//','pafWht','(','t','tps):'))."Rep`la`cE"(([CHAR]97+[CHAR]102+[CHAR]87),[strinG][CHAR]124)))))
                        {
                            
                            ${scri`pT`:`SC`RiPtbL`oCk} = ''
                        
                            
                            If(${UsERInp`UTo`pT`I`o`Nvalue} -Match ((("{1}{2}{3}{0}" -f'tps)://','(http','u','26ht'))."R`E`plACE"('u26',[sTRiNg][ChaR]124)))
                            {
                                
                            
                                
                                ${ScRIp`T:`sc`RIptBLOCk} = (N`e`W-oBJECt ("{0}{2}{1}" -f'Net.','nt','WebClie')).("{4}{2}{0}{3}{1}"-f 'tr','g','dS','in','Downloa').Invoke(${usE`RIn`PuT`o`PTionva`LUe})
                            
                                
                                ${s`CrIpT`:scr`i`ptPath}                = ${U`ser`in`pUtOptIONval`Ue}
                                ${sc`Rip`T:ObfU`SCaTEDcO`m`ManD}         = ${S`CR`IPT`:sCrIp`TBLOcK}
                                ${S`crI`pt`:ob`FU`S`CAte`dcOmMaND`HIsTory}  = @()
                                ${sCripT:OBFU`sC`At`E`D`co`M`Ma`NDHistorY} += ${sc`Rip`T:SC`RiPt`BL`ock}
                                ${sCR`iPt:cLI`sYnT`AX}                 = @()
                                ${sc`Ri`pT`:ExecUT`IONco`mMa`NDS}         = @()
                                ${scR`IPt`:laU`NCh`eRa`P`pLIED}           = ${f`A`LsE}
                            
                                wr`I`Te-hO`ST ("`n`nSuccessfully "+'set'+' '+'Sc'+'r'+'iptPath '+'(as'+' '+'U'+'RL):') -ForegroundColor ("{0}{1}" -f'Cya','n')
                                wR`IT`e-HO`st ${Scr`IP`T:ScrIp`T`PaTh} -ForegroundColor ("{2}{0}{1}" -f 'age','nta','M')
                            }
                            ElseIf ((Ge`T`-ItEm ${U`SE`RI`NpUtoPt`ionvaLue}) -is [System.IO.DirectoryInfo])
                            {
                                
                                wRIte`-h`ost "`n`nERROR:" -NoNewLine -ForegroundColor ("{0}{1}"-f 'R','ed')
                                wRI`T`e-`hOST ((("{1}{7}{3}{5}{6}{2}{8}{0}{4}" -f' of a fil',' Pat','inst',' ','e (','d','irectory ','h is a','ead'))) -NoNewLine
                                WrI`Te`-HoSt "$UserInputOptionValue" -NoNewLine -ForegroundColor ("{0}{1}"-f'Cy','an')
                                WRI`Te`-HoST ").`n" -NoNewLine
                            }
                            Else
                            {
                                
                                geT-c`hi`LD`ITEm ${Us`eriN`PUtOP`TionVA`lUe} -ErrorAction ("{1}{0}"-f 'op','St') | o`U`T-null
                                ${Sc`R`I`PT:scriPt`BlOCK} =   ( diR  VARIABle:4DO6J ).vAlUe::("{1}{2}{0}" -f 'ext','ReadA','llT').Invoke((Re`SoL`V`e-patH ${usE`RI`NpuTOPTiO`NV`ALuE}))
                        
                                
                                ${S`cr`i`PT:scRIpTpATh}                = ${userinp`U`T`OP`TiOnvaluE}
                                ${Sc`RI`p`T:oBfuScAT`E`DcOmma`ND}         = ${scri`pt:`SCRi`Pt`BLO`ck}
                                ${ScrIP`T:o`BFUSca`TEdco`MmANd`hIStOry}  = @()
                                ${s`CRipt:ObFUSCa`Te`dcoMMANDh`i`sTory} += ${S`C`RIPt:sC`RiPtB`LoCK}
                                ${SCr`ipt:CliSy`Nt`Ax}                 = @()
                                ${sCRI`Pt`:e`xeCuT`I`OnC`OmmANDs}         = @()
                                ${sc`R`ipT:LAuNcherappLI`ed}           = ${Fa`LSe}
                            
                                wrI`TE-`HoST ("`n`nSuccessfully "+'set'+' '+'Scrip'+'tP'+'ath:') -ForegroundColor ("{1}{0}" -f 'an','Cy')
                                wr`I`TE-HoST ${sCr`ipt:`ScrIptpa`TH} -ForegroundColor ("{0}{1}" -f'Magent','a')
                            }
                        }
                        Else
                        {
                            
                            wRi`TE`-H`OSt "`n`nERROR:" -NoNewLine -ForegroundColor ("{1}{0}" -f 'd','Re')
                            wR`itE-`hOst ((("{0}{3}{1}{2}" -f' Pat','f','ound (','h not '))) -NoNewLine
                            WriT`e`-HoSt "$UserInputOptionValue" -NoNewLine -ForegroundColor ("{1}{0}" -f 'yan','C')
                            WRITE-h`O`St ").`n" -NoNewLine
                        }
                    }
                    ("{2}{3}{1}{0}"-f'k','tbloc','scri','p') {
                        
                        ForEach(${cH`AR} in @(@('{','}'),@('"','"'),@("'","'")))
                        {
                            While(${Us`eRI`N`PU`TOPTiONVALUE}."sTarTS`w`itH"(${C`HAR}[0]) -AND ${uSEr`i`N`p`UTOPTIONv`A`lue}."eN`DSWITH"(${c`HAr}[1]))
                            {
                                ${usE`R`inPU`TOp`TIoNvA`L`UE} = ${use`RinpuT`opTI`O`NVaLue}.("{3}{2}{0}{1}" -f'n','g','tri','SubS').Invoke(1,${UsERiNp`Uto`PTio`NV`Al`UE}."L`EN`gTH"-2).("{1}{0}"-f'im','Tr').Invoke()
                            }
                        }

                        
                        If(${U`SeR`input`oPTIO`Nv`AL`UE} -Match ((("{12}{1}{21}{15}{14}{16}{5}{18}{17}{8}{11}{22}{9}{4}{10}{0}{7}{2}{19}{6}{13}{20}{3}"-f 'nDen','(.exe 1nD ',')byd','z=]','1nDencod',' 1n','ktRktR]*','code','nD','enco ',' 1','enc ','powershell','[','yds*-','b','(e','1','Dec 1nDen ','s*[Bvp','a-',')','1nD'))."REP`l`AcE"('ktR',[strINg][chAr]39)."Repl`A`Ce"(([chAr]98+[chAr]121+[chAr]100),[strINg][chAr]92)."R`EP`Lace"(([chAr]66+[chAr]118+[chAr]112),[strINg][chAr]34).("{0}{1}{2}"-f 'r','EPlAC','e').Invoke('1nD','|')))
                        {
                            
                            ${E`NcOd`EDcoMmanD} = ${uSeR`inpuToP`Ti`ONVA`lUE}.("{1}{0}{2}" -f 'S','Sub','tring').Invoke(${uSE`RI`NputoPt`IonvALuE}.("{0}{1}" -f 'ToLowe','r').Invoke().("{2}{1}{0}"-f'f','ndexO','I').Invoke(' -e')+3)
                            ${enC`Od`EDCOmm`ANd} = ${eNcOD`eDC`omM`And}.("{1}{0}{2}"-f'b','Su','String').Invoke(${ENCoDE`Dco`mMAnd}.("{1}{2}{0}" -f 'xOf','In','de').Invoke(' ')).("{0}{1}" -f 'T','rim').Invoke(" '`"")

                            
                            ${USeriNPuT`O`ptI`onV`A`lue} =   (gEt-IteM  ("v"+"AriabLE:YB3"+"G")  ).VAlue::"UNi`cODe"."GeT`STri`Ng"( (  ls ("vARIABLE:TZc"+"Be"+"f")).valuE::("{4}{2}{0}{1}{3}"-f 'Base64','Str','m','ing','Fro').Invoke(${eN`co`D`edCOmMaND}))
                        }

                        
                        ${scr`ipt:S`cRI`pt`paTh}                = 'N/A'
                        ${SCR`IpT:sCr`iP`Tb`L`OCk}               = ${useR`iNPUt`o`ptiO`NValuE}
                        ${s`Cri`pt:o`BfUscated`comMAnD}         = ${us`erInpu`Top`TIoNvAlUe}
                        ${sc`RIp`T`:ObfUs`cAtED`COMmaN`dh`isTOrY}  = @()
                        ${scR`I`pT:OBFu`sCATed`C`OmmaNdhiStorY} += ${u`SEriNPU`T`o`PtIonVA`lue}
                        ${scriPt`:`C`LIS`yntax}                 = @()
                        ${sCrIP`T:eXE`CutioNC`oM`MANDs}         = @()
                        ${sC`RipT:L`AUnCHErA`PpLI`ed}           = ${F`ALsE}
                    
                        wr`Ite-H`ost ("`n`nSuccessfully "+'s'+'et '+'Sc'+'riptBl'+'ock:') -ForegroundColor ("{1}{0}"-f'n','Cya')
                        w`RITE-H`OST ${S`c`RipT`:Sc`RIPt`BlOCK} -ForegroundColor ("{1}{0}"-f 'nta','Mage')
                    }
                    ("{0}{2}{1}"-f'empt','e','yvalu') {
                        
                        ${H`Aser`ROR} = ${tr`Ue}
                        writE`-ho`ST "`n`nERROR:" -NoNewLine -ForegroundColor ("{0}{1}"-f'R','ed')
                        WRItE`-`hOsT ("{0}{4}{2}{3}{1}"-f' No ','tered after','ue w','as en','val') -NoNewLine
                        WrIT`e-`HOsT ("{1}{0}{5}{2}{3}{4}"-f'RIPTB',' SC','OCK/SC','RIPTPAT','H','L') -NoNewLine -ForegroundColor ("{1}{0}"-f 'yan','C')
                        WrIT`e-ho`st '.' -NoNewLine
                    }
                    ("{1}{0}" -f'fault','de') {w`Rite-`ER`Ror ('A'+'n '+'i'+'nval'+'id '+'O'+'PTIONNAM'+'E '+"($UserInputOptionName) "+'was'+' '+'p'+'assed'+' '+'to'+' '+'sw'+'itch '+'bl'+'ock.'); Exit}
                }
            }
            Else
            {
                ${HaSEr`R`OR} = ${TR`UE}
                w`Ri`Te-hOST "`n`nERROR:" -NoNewLine -ForegroundColor ("{1}{0}"-f'd','Re')
                Wr`I`Te-hoSt ("{1}{0}{2}" -f'IO',' OPT','NNAME') -NoNewLine
                w`RI`TE-`HOsT (' '+"$UserInputOptionName") -NoNewLine -ForegroundColor ("{1}{0}"-f'n','Cya')
                w`Rite-hO`sT ("{3}{0}{1}{7}{4}{2}{5}{6}"-f ' n','o','l',' is','settab','e o','ption.','t a ') -NoNewLine
            }
    
            If(${HaS`ERR`or})
            {
                wriTe`-`HoST ("`n "+' '+' '+' '+' '+' '+' '+'Co'+'rrec'+'t '+'sy'+'nta'+'x '+'is') -NoNewLine
                WR`ItE`-HosT ("{2}{3}{0}{1}{5}{4}{6}"-f 'NNAME',' VA',' SE','T OPTIO','U','L','E') -NoNewLine -ForegroundColor ("{0}{1}"-f 'Gr','een')
                wRi`TE-`HOst '.' -NoNewLine
        
                wRiT`E-`H`OSt ("`n "+' '+' '+' '+' '+' '+' '+'Ente'+'r') -NoNewLine
                Wr`I`Te-hoSt ("{3}{1}{0}{2}"-f'OP','HOW ','TIONS',' S') -NoNewLine -ForegroundColor ("{0}{2}{1}" -f'Y','llow','e')
                WriT`E-`hosT ("{4}{1}{0}{3}{2}" -f ' more','r','ails.',' det',' fo')
            }
        }
        ElseIf((${A`cCEPtab`leInp`UT} -Contains ${UserI`Np`UT}) -OR (${oV`E`Rr`Id`eACc`ePt`AblEiNPUt}))
        {
            
            
            

            
            ${Use`RI`NPuT} = ${bR`EADC`RUmB}.("{0}{1}" -f'T','rim').Invoke('\').("{0}{1}"-f 'Replac','e').Invoke('\','_') + '_' + ${USER`I`Np`UT}
            If(${B`READcRU`mb}.("{2}{1}{0}"-f'h','tartsWit','S').Invoke('\')) {${uS`eriN`Put} = '_' + ${U`s`Eri`NpUt}}

            
            If(${Sel`E`ctIONcoN`Tai`N`SCoMma`Nd})
            {
                
                If(${SC`Ript`:oB`FUscaTedcoM`mAND} -ne ${nU`LL})
                {
                    
                    ForEach(${L`iNe} in ${m`Enu})
                    {
                        If(${Li`NE}[1].("{1}{0}" -f 'm','Tri').Invoke(' ') -eq ${U`Ser`i`NPuT}.("{0}{2}{1}"-f 'Sub','ring','St').Invoke(${u`Se`RiNP`Ut}.("{3}{0}{1}{2}"-f 'ast','Inde','xOf','L').Invoke('_')+1)) {${CO`mMan`DtoE`XEc} = ${Li`NE}[3]; Continue}
                    }

                    If(!${O`VEr`RIDeacc`Ep`TabL`EI`NPut})
                    {
                        
                        ${F`UncTi`oN} = ${cOm`maNDtoe`X`EC}[0]
                        ${t`ok`EN}    = ${comMAN`DTO`e`X`ec}[1]
                        ${OB`FLE`VeL} = ${Comm`AN`DToeXeC}[2]
                    }
                    Else
                    {
                        
                        Switch(${BR`eADcR`UMB}.("{2}{1}{0}" -f'wer','Lo','To').Invoke())
                        {
                            ((("{3}{1}{4}{0}{2}{5}"-f 'er','}launc','{0','{0','h','}ps'))  -F  [chAR]92)       {${Func`T`ioN} = ("{0}{1}{3}{6}{5}{2}{4}"-f 'O','ut','llL','-Pow','auncher','he','erS'); ${O`BF`lEVEl} = 1}
                            ((("{1}{3}{2}{0}" -f'uncherOUtcmd','O','tla','U')).("{0}{1}"-f'rEPlAc','E').Invoke('OUt','\'))      {${fu`NCt`Ion} = ("{5}{2}{4}{3}{1}{6}{0}" -f'r','ch','erShell','n','Lau','Out-Pow','e'); ${o`BFl`EVEl} = 2}
                            ((("{2}{0}{3}{1}" -f'launcheryhDw','c','yhD','mi'))-CreplACe([CHAR]121+[CHAR]104+[CHAR]68),[CHAR]92)     {${FUNCt`IoN} = ("{4}{3}{1}{2}{0}" -f 'her','lLa','unc','Shel','Out-Power'); ${obf`lEveL} = 3}
                            ((("{6}{0}{4}{3}{1}{2}{5}"-f'unche','u','n','0}r','r{','dll','{0}la'))  -F [ChaR]92)   {${fuNCT`i`On} = ("{1}{6}{4}{0}{2}{5}{3}" -f'S','Out','h','lLauncher','Power','el','-'); ${oB`FLEVeL} = 4}
                            ((("{0}{3}{4}{1}{2}{5}"-f 'V','he','rV','2Il','aunc','2Ivar+'))."R`ePla`ce"('V2I',[StRING][Char]92))     {${FUnc`T`iOn} = ("{5}{4}{3}{1}{2}{0}" -f'r','l','Launche','el','t-PowerSh','Ou'); ${obflE`VEL} = 5}
                            ((("{2}{3}{0}{1}" -f'lau','ncher{0}stdin+','{','0}')) -f[ChAr]92)   {${FUNC`TIon} = ("{0}{1}{2}{3}" -f'Out-PowerShel','l','Launch','er'); ${o`B`FLeVel} = 6}
                            ((("{1}{3}{4}{2}{0}"-f 'TEclip+','k','erk','TEl','aunch'))."rEp`LA`CE"(([char]107+[char]84+[char]69),'\'))    {${fuN`C`TION} = ("{5}{2}{3}{4}{0}{1}{6}" -f 'llLaunch','e','-Po','werSh','e','Out','r'); ${oBFL`eV`eL} = 7}
                            ((("{0}{3}{1}{2}"-f'eVdla','chere','Vdvar++','un'))."R`EpLa`cE"(([cHAR]101+[cHAR]86+[cHAR]100),[stRing][cHAR]92))    {${fuNCtI`on} = ("{5}{0}{4}{3}{6}{1}{2}"-f 'P','aunc','her','er','ow','Out-','ShellL'); ${oBF`l`EvEl} = 8}
                            ((("{2}{4}{1}{0}{3}{5}"-f'h','unc','mOG','ermOGstdin+','la','+'))."r`e`plAce"(([Char]109+[Char]79+[Char]71),[sTrING][Char]92))  {${fU`NCT`IoN} = ("{0}{5}{4}{6}{1}{2}{3}"-f 'O','lLaun','c','her','PowerShe','ut-','l'); ${o`BflEV`EL} = 9}
                            ((("{1}{5}{3}{0}{6}{4}{2}"-f'r','{0','p++','aunche','i','}l','{0}cl')) -F  [cHaR]92)   {${fuN`c`TIOn} = ("{0}{1}{6}{2}{4}{3}{5}" -f 'Out-Pow','e','el','aunche','lL','r','rSh'); ${oBF`LEv`eL} = 10}
                            ((("{4}{1}{2}{3}{0}"-f 'dll++','u','nch','erkJWrun','kJWla'))  -cRePLACe  'kJW',[Char]92) {${FUn`ctI`on} = ("{3}{4}{5}{1}{0}{2}{6}"-f'lLa','erShel','u','Out-','P','ow','ncher'); ${O`Bf`lEvel} = 11}
                            ((("{0}{2}{1}{3}{4}" -f'{0}','nch','lau','er{0}','mshta++'))-f  [ChAR]92)  {${fUNC`Ti`oN} = ("{4}{5}{3}{0}{2}{1}"-f 'nch','r','e','ellLau','Out-','PowerSh'); ${O`BfL`evEl} = 12}
                            ("{1}{0}"-f't','defaul') {wr`itE`-e`RROr "An invalid value ($($BreadCrumb.ToLower())) was passed to switch block for setting `$Function when `$OverrideAcceptableInput -eq `$TRUE. "; Exit}
                        }
                        
                        ${ob`FLev`eL} = ${me`Nu}[1][3][2]
                        ${T`OKen} = ${uSE`R`iNput}.("{0}{2}{1}" -f'Su','ring','bSt').Invoke(${uSE`R`INPut}.("{0}{3}{2}{1}" -f'L','Of','dex','astIn').Invoke('_')+1)
                    }

                    
                    If(!(${Scr`i`Pt:LAU`NcHeRapPliED}))
                    {
                        ${ObFcom`mands`Crip`Tb`loCk} = ${eXecUtI`ONc`ont`e`Xt}."InVO`k`ecO`mM`ANd".("{3}{2}{1}{0}" -f'k','c','lo','NewScriptB').Invoke(${scri`p`T:OBf`UScaTEDcomMA`Nd})
                    }
                    
                    
                    If(${ScRipT:`obFu`sC`A`T`edCoMm`AnD} -eq '')
                    {
                        wri`Te`-`Host "`n`nERROR:" -NoNewLine -ForegroundColor ("{1}{0}"-f'ed','R')
                        wRi`Te-`h`ost ("{4}{13}{15}{30}{29}{22}{0}{26}{10}{2}{21}{3}{28}{12}{27}{18}{7}{9}{11}{5}{24}{14}{8}{25}{19}{23}{17}{6}{16}{1}{20}{31}" -f'ion c',' ','s ','out',' ',' ','these ','oc','S men','k values','mand',' in','ri','Cannot e',' OPTION','xec','by',' ','riptBl','. ','executi','with','t','Set','SHOW','u','om','ptPath or Sc',' setting Sc','e obfusca','ut','ng') -NoNewLine
                        WRI`Te-H`oST ("{5}{0}{1}{10}{11}{3}{2}{4}{9}{8}{6}{7}"-f 'RIPT','BLOC','or','lock_','_c',' SET SC','n','d','a','omm','K sc','ript_b') -NoNewLine -ForegroundColor ("{1}{0}" -f 'een','Gr')
                        wRIT`E`-hOSt ' or' -NoNewLine
                        w`RitE-h`Ost ("{1}{5}{8}{6}{7}{4}{9}{2}{0}{3}" -f 'ript',' SET SCRIPT','_sc','_or_URL','a','PA','H ','p','T','th_to') -NoNewLine -ForegroundColor ("{1}{0}"-f 'n','Gree')
                        WrItE-`ho`st '.'
                        Continue
                    }

                    
                    ${OB`FuscaT`e`d`COM`MAN`dbeforE} = ${ScriPT:o`B`F`U`s`CaTEdcomMaNd}
                    ${C`MdTOPr`I`Nt} = ${N`Ull}
                    If(${F`UN`ctIoN} -eq ("{2}{4}{3}{1}{0}"-f'atedAst','sc','O','t-Obfu','u') -AND ${P`sveRSiOn`Ta`B`lE}."P`svERS`Ion"."MA`JOr" -lt 3)
                    {
                        ${asTP`s3ERRO`RMEss`AGE} = ("{2}{11}{7}{10}{3}{13}{16}{8}{15}{4}{0}{5}{1}{9}{6}{12}{14}"-f't','or','AST','be','+. Update ','o PS3.0 ',' use ','n can ',' with ',' higher to','only ',' obfuscatio','AST ',' u','obfuscation.','PS3.0','sed')
                        If (${sCRIpT:`quie`TW`Assp`eCIFiED})
                        {
                            w`RiTE-`ErRoR ${ASTp`s3eRrOR`mEs`sagE}
                        }
                        Else
                        {
                            w`Rit`E-host ("`n`nERROR: "+'') -NoNewLine -ForegroundColor ("{1}{0}"-f'ed','R')
                            wrI`Te`-HOSt ${aStps`3`Er`ROrM`eSSage} -NoNewLine
                        }
                    }
                    ElseIf(${S`cR`iPT:`LAuN`ch`erApPlI`eD})
                    {
                        If(${fUncT`ION} -eq ("{4}{5}{2}{0}{3}{6}{1}"-f'erShe','r','-Pow','ll','O','ut','Launche'))
                        {
                            ${erroRM`Es`S`AGe} = ("{12}{10}{11}{5}{3}{6}{0}{2}{7}{4}{9}{8}{1}"-f 'O','mand.','b','ady applied a launcher','a','re',' to ','fusc','m','tedCo','You have ','al',' ')
                        }
                        Else
                        {
                            ${e`R`ROrm`EsSa`GE} = ("{8}{1}{2}{6}{15}{11}{0}{4}{12}{7}{16}{5}{9}{13}{3}{14}{10}"-f 'sc','You',' can','r to Obfus','ate a','lyi','not ',' a',' ','ng a Launc','tedCommand.','u','fter','he','ca','obf','pp')
                        }

                        W`RiTe`-hO`st "`n`nERROR:" -NoNewLine -ForegroundColor ("{0}{1}" -f 'R','ed')
                        wriT`e-h`ost ${errO`RmES`S`AgE} -NoNewLine
                        wR`it`E-h`oST ("`n "+' '+' '+' '+' '+' '+' '+'Ent'+'er') -NoNewLine
                        wRi`TE-ho`ST ("{1}{0}"-f 'DO',' UN') -NoNewLine -ForegroundColor ("{0}{1}" -f'Yello','w')
                        wRI`Te-`hOST (' '+'to'+' '+'r'+'emo'+'ve '+'the'+' '+'launch'+'er '+'fr'+'om '+"ObfuscatedCommand.`n") -NoNewLine
                    }
                    Else
                    {
                        
                        Switch(${fUNCt`iON})
                        {
                            ("{0}{5}{2}{3}{1}{4}" -f'Out-O','an','uscatedToken','Comm','d','bf')        {
                                ${scRIPt:O`BfUSCA`T`eDc`OMm`AND} = OuT-OBfUS`CaT`eDTOken`cOMMA`Nd        -ScriptBlock ${obFCOM`man`DsCrIP`TBlo`cK} ${T`oKen} ${oBfle`VEL}
                                ${cmd`To`PrINT} = @(("{0}{5}{4}{8}{2}{7}{10}{9}{1}{3}{6}"-f'O','ommand ','usc','-ScriptBlo','Ob','ut-','ck ','atedT','f','C','oken'),(' '+"'$Token' "+"$ObfLevel"))
                            }
                            ("{4}{5}{3}{0}{1}{2}" -f 'fus','catedTokenCom','mandAll','b','Ou','t-O')     {
                                ${scRiP`T:`oBFU`s`CAteDcO`Mm`And} = O`UT-`ObFUS`CaTe`dT`OkeNCoMM`AND        -ScriptBlock ${OBFC`OmMAn`d`scrI`PtBLock}
                                ${cmdto`p`RI`Nt} = @(("{4}{6}{1}{3}{0}{7}{5}{2}" -f 'ma','TokenCo','criptBlock ','m','Out-Obfusca','d -S','ted','n'),"")
                            }
                            ("{2}{1}{0}{4}{3}"-f 'scatedA','t-Obfu','Ou','t','s')                 {
                                ${sCRIpt:`Ob`F`UscA`T`eDcOMM`AnD} = oU`T-OBfUScA`TED`AST                 -ScriptBlock ${obfCO`Mm`ANd`SCrip`TB`l`ocK} -AstTypesToObfuscate ${T`oKEN}
                                ${C`md`To`PrINt} = @(("{4}{0}{5}{6}{1}{3}{2}"-f't-Ob','-Scri','Block ','pt','Ou','fuscatedA','st '),"")
                            }
                            ("{3}{4}{0}{1}{5}{2}" -f'm','m','d','Out-ObfuscatedSt','ringCo','an')       {
                                ${Scr`I`pt:Ob`FusC`AteD`comm`AnD} = ouT-O`Bfusc`ATEdSTRI`NGCOM`mand       -ScriptBlock ${o`B`FcOmMA`NdsC`RI`PTBLoCK} ${oBf`L`Evel}
                                ${C`Md`TopR`int} = @(("{10}{11}{5}{1}{8}{6}{3}{0}{7}{2}{4}{9}" -f'-Sc','d','pt','d ','B','ate','gComman','ri','Strin','lock ','Out-Obfu','sc'),(' '+"$ObfLevel"))
                            }
                            ("{1}{2}{4}{3}{0}" -f 'ommand','Out-','Encoded','iiC','Asc')           {
                                ${S`CRIPT:`Obfu`SCa`TEdCommaNd} = oUT`-ENCODe`d`AsC`IICOmm`AnD           -ScriptBlock ${oBfCOmmAN`dS`CrI`Pt`BLOck} -PassThru
                                ${cmDT`O`Pr`INT} = @(("{2}{3}{4}{6}{1}{7}{0}{5}" -f'cript','Com','Out','-En','codedAs','Block ','cii','mand -S'),("{2}{1}{0}" -f 'u','r',' -PassTh'))
                            }
                            ("{0}{3}{4}{2}{1}" -f 'Out-En','nd','ma','cod','edHexCom')             {
                                ${SCRIpt:`obF`U`ScaT`EDcoMMA`ND} = O`Ut-E`NCoDEd`H`e`X`COMmAnd             -ScriptBlock ${ob`FcOMMAN`D`sCriPTB`Lock} -PassThru
                                ${c`M`dtO`PRiNT} = @(("{5}{1}{7}{3}{0}{4}{2}{6}"-f'mand -','n','oc','dedHexCom','ScriptBl','Out-E','k ','co'),("{0}{2}{1}"-f ' ','PassThru','-'))
                            }
                            ("{1}{0}{2}{3}" -f'ncodedOctalC','Out-E','omma','nd')           {
                                ${ScRiP`T`:ObFus`caTE`DcOm`m`ANd} = o`Ut-ENCO`de`docT`A`l`COm`maND           -ScriptBlock ${oBFCOm`ma`N`DsCRIPT`B`l`OCK} -PassThru
                                ${c`MDT`OPRInT} = @(("{2}{7}{5}{3}{1}{6}{0}{4}"-f'oc','nd -ScriptB','Ou','alComma','k ','dedOct','l','t-Enco'),("{1}{0}{2}"-f'P',' -','assThru'))
                            }
                            ("{2}{1}{0}{6}{3}{4}{5}"-f'n','ut-E','O','Binary','Comm','and','coded')          {
                                ${s`CR`IPt:OBFU`SCateD`cOmMAND} = Out-EncO`d`edBINARYcOm`m`A`Nd          -ScriptBlock ${o`BfC`O`mMANDSCRIPtbl`OCK} -PassThru
                                ${C`M`dtop`RInT} = @(("{10}{8}{4}{6}{5}{1}{7}{11}{3}{0}{9}{2}" -f 'Sc','i','ock ','-','-E','B','ncoded','nar','t','riptBl','Ou','yCommand '),("{3}{1}{0}{2}"-f 'r','assTh','u',' -P'))
                            }
                            ("{0}{3}{4}{2}{1}" -f'Out-Secur','nd','ngComma','eStr','i')           {
                                ${S`crI`PT:OB`F`Us`cAteDco`M`mAND} = OuT-secure`st`Ri`N`gC`O`mMand           -ScriptBlock ${Obf`C`OMM`A`NdscriPTb`lO`ck} -PassThru
                                ${CmD`TOpr`INT} = @(("{0}{6}{5}{3}{4}{1}{2}"-f'Out-','nd -ScriptBlo','ck ','r','eStringComma','u','Sec'),("{0}{2}{1}" -f ' -','assThru','P'))
                            }
                            ("{4}{1}{2}{0}{3}"-f'ed','ut-E','ncod','BXORCommand','O')            {
                                ${scRipT:O`BFU`SCAt`eDc`o`MMA`Nd} = Out-EnCOdeD`B`XO`RC`omMa`Nd            -ScriptBlock ${o`BF`COmMANdsC`RiPTB`L`O`Ck} -PassThru
                                ${C`M`DTopriNt} = @(("{2}{8}{4}{3}{5}{0}{7}{6}{1}"-f'Co','k ','O','BX','coded','OR','-ScriptBloc','mmand ','ut-En'),("{2}{0}{1}"-f'PassT','hru',' -'))
                            }
                            ("{4}{2}{0}{5}{3}{1}"-f 'harOnl','mmand','lC','Co','Out-EncodedSpecia','y') {
                                ${SCriPT`:ObfU`scA`TEdCoMM`And} = ouT-`EnCo`D`eDspeC`ialchaR`Onlyc`OMmaNd -ScriptBlock ${OBFCoMMan`d`SC`RipT`BLock} -PassThru
                                ${Cm`d`ToPriNt} = @(("{12}{10}{3}{11}{4}{9}{1}{2}{6}{7}{5}{8}{0}"-f ' ','OnlyCommand ','-Sc','dSpe','ialCh','Bloc','ri','pt','k','ar','code','c','Out-En'),("{2}{1}{0}" -f 'Thru','-Pass',' '))
                            }
                            ("{4}{7}{5}{2}{0}{3}{6}{1}" -f 'pac','d','Whites','e','O','t-Encoded','Comman','u') {
                                ${SC`RipT:oBf`USCateDCo`MmA`Nd} = Out-E`NCod`e`dwHItespA`cecO`mMANd      -ScriptBlock ${O`B`F`cOMmAnDsCR`iptb`LoCk} -PassThru
                                ${CmdT`oprI`NT} = @(("{2}{3}{0}{6}{1}{8}{5}{7}{4}"-f't-Enc','W','O','u','ptBlock ','spaceCommand -Sc','oded','ri','hite'),("{0}{2}{1}{3}" -f ' -Pa','sT','s','hru'))
                            }
                            ("{0}{4}{1}{2}{5}{3}"-f'O','omp','ressedC','d','ut-C','omman') {
                                ${ScriPt:obF`US`c`A`T`ED`cOMMaNd} = oU`T-cOMpRE`ss`EdcO`M`MAnd             -ScriptBlock ${OBFcOm`M`Ands`CRIPT`B`lO`ck} -PassThru
                                ${C`mD`T`OPRiNT} = @(("{7}{4}{6}{1}{5}{2}{3}{0}" -f 'k ','nd -S','ript','Bloc','ressedCom','c','ma','Out-Comp'),("{2}{0}{1}" -f'as','sThru',' -P'))
                            }
                            ("{2}{1}{0}{5}{3}{6}{4}"-f'-','ut','O','ell','uncher','PowerSh','La')            {
                                
                                ${SwITc`h`ESAS`str`Ing`AR`RAy} = [char[]]${tok`EN} | Sor`T-obj`EcT -Unique | wH`erE-oBj`e`Ct {${_} -ne ' '}
                                
                                If(${s`W`ITchEsass`T`Ri`NgaRr`Ay} -Contains '0')
                                {
                                    ${CmD`To`pRInT} = @(("{0}{1}{2}{3}{8}{6}{4}{5}{7}"-f'Out-Power','Sh','ell','Launche','ptBlo','c','-Scri','k ','r '),(' '+"$ObfLevel"))
                                }
                                Else
                                {
                                    ${hASwIn`DOwS`T`Y`le} = ${faL`SE}
                                    ${swI`TCH`EstOPr`I`NT} = @()
                                    ForEach(${vA`luE} in ${SWi`T`c`hesa`Sstr`ing`ARrAy})
                                    {
                                        Switch(${V`AluE})
                                        {
                                            1 {${s`wIt`cHestoP`RiNT} += ("{1}{0}"-f'oExit','-N')}
                                            2 {${swItcH`E`STO`pRI`NT} += ("{2}{0}{3}{1}{4}" -f 'In','iv','-Non','teract','e')}
                                            3 {${SW`itcheS`To`PR`INT} += ("{1}{2}{0}"-f'o','-N','oLog')}
                                            4 {${sWI`TC`he`sTopRINt} += ("{2}{0}{1}"-f'oP','rofile','-N')}
                                            5 {${S`W`IT`CHE`stoPRI`NT} += ("{1}{0}{2}"-f 'mma','-Co','nd')}
                                            6 {If(!${haSwI`Ndow`s`TY`lE}) {${s`WI`T`CH`eSTopRint} += ("{0}{3}{2}{1}" -f '-',' Hidden','e','WindowStyl'); ${h`AsWindo`WSTY`Le} = ${tr`UE}}}
                                            7 {${S`WITCH`EStOP`Rint} += ("{3}{4}{5}{2}{0}{7}{1}{6}"-f'ol','Bypa','onP','-E','xecut','i','ss','icy ')}
                                            8 {${Sw`Itc`hE`STopr`inT} += ("{0}{1}" -f'-W','ow64')}
                                            ("{1}{0}"-f'fault','de') {w`RITe-E`RROr ('A'+'n '+'inval'+'i'+'d '+"`$SwitchesAsString "+'va'+'lue '+"($Value) "+'w'+'as '+'pas'+'sed'+' '+'t'+'o '+'s'+'witch'+' '+'blo'+'ck'+'.'); Exit;}
                                        }
                                    }
                                    ${sWitC`hE`STOpRINt} =  ${SWItChE`sT`O`P`RinT} -Join ' '
                                    ${cMd`TOpr`int} = @(("{3}{5}{1}{0}{2}{4}{6}"-f 'Shel','ower','lLauncher -Scri','O','ptBl','ut-P','ock '),(' '+"$SwitchesToPrint "+"$ObfLevel"))
                                }
                                
                                ${sCRi`p`T:ob`FU`S`c`A`TEDcoMMAnd} = OUT-pO`WERShe`l`LLaU`NcHer -ScriptBlock ${OB`FC`o`Mmandsc`RIPtb`L`Ock} -SwitchesAsString ${t`OkEn} ${oB`Fl`EV`el}
                                
                                
                                If(${obf`USC`ATe`DCO`Mmand`Be`FO`Re} -ne ${s`cR`i`Pt:`o`BfUsCat`EdcoM`MANd})
                                {
                                    ${SCr`IpT:`L`AunCherApPlIED} = ${tr`UE}
                                }
                            }
                            ("{2}{0}{1}" -f 'l','t','defau') {W`RI`Te-ERroR ('A'+'n '+'in'+'vali'+'d '+"`$Function "+'va'+'lue'+' '+"($Function) "+'was'+' '+'pas'+'sed '+'t'+'o '+'sw'+'itch'+' '+'blo'+'ck.'); Exit;}
                        }

                        If((${sCRIPT:`O`BFuScaTedc`o`m`mAND} -ceq ${OBFUSC`AtE`DC`OM`Ma`NdBE`ForE}) -AND (${M`EnU`Name}.("{2}{1}{0}"-f'th','sWi','Start').Invoke(("{0}{1}{2}"-f'_','To','ken_'))))
                        {
                            wRit`E-ho`St "`nWARNING:" -NoNewLine -ForegroundColor ("{1}{0}"-f 'd','Re')
                            WrI`Te-H`Ost ("{1}{2}{4}{0}{3}"-f're we',' ','T','re not any','he') -NoNewLine
                            If(${b`REA`D`CrumB}.("{0}{1}{2}"-f'Su','b','String').Invoke(${bread`cru`mb}.("{1}{2}{0}" -f'Of','Las','tIndex').Invoke('\')+1).("{1}{2}{0}"-f'r','ToL','owe').Invoke() -ne 'all') {W`Rite-H`osT (" $($BreadCrumb.SubString($BreadCrumb.LastIndexOf('\')+1)) ") -NoNewLine -ForegroundColor ("{1}{0}"-f 'low','Yel')}
                            WR`I`Te-host ("{10}{4}{5}{6}{3}{7}{11}{1}{8}{9}{0}{2}"-f 'hing chan','fu','ged.',' ','toke','n','s','to furt','scat','e, so not',' ','her ob')
                        }
                        Else
                        {
                            
                            ${scRipT:oB`Fu`SCAt`E`DCOm`MaN`DH`is`TOrY} += , ${sCripT:Obf`U`s`CAtedCoM`maND}
    
                            
                            ${clISY`Nt`AxCuRRe`N`Tco`Mma`Nd} = ${USe`RINP`Ut}.("{0}{1}"-f'T','rim').Invoke('_ ').("{2}{0}{1}"-f 'epla','ce','R').Invoke('_','\')
    
                            
                            ${SCR`i`Pt:`Cl`iSyNtax} += ${Cl`isy`NTAxC`URr`E`NTCOMmAnD}

                            
                            ${S`Cr`iPt:exEC`U`TI`O`NCommaNds} += (${C`Mdto`priNT}[0] + ((('3'+'Tu'+'Scri'+'ptBlock')-RePlaCE([char]51+[char]84+[char]117),[char]36)) + ${CM`d`T`OpRInT}[1])

                            
                            w`RiTE-Ho`sT "`nExecuted:`t"
                            W`RiTe-`host ("{1}{0}"-f '  ','  CLI:') -NoNewline
                            W`RIte-`ho`ST ${CLi`S`YntAXCuR`R`EnTco`m`MAND} -ForegroundColor ("{1}{0}" -f 'an','Cy')
                            w`RiTE-`hO`ST ("{0}{1}" -f'  FULL',': ') -NoNewline
                            Wr`ite`-`HoSt ${C`MDTOPR`INt}[0] -NoNewLine -ForegroundColor ("{1}{0}"-f 'n','Cya')
                            w`RiTE-`host (('{0}Scri'+'ptB'+'lock')-f [cHAr]36) -NoNewLine -ForegroundColor ("{2}{1}{0}" -f'a','ent','Mag')
                            wR`itE-`ho`ST ${CMD`T`op`RinT}[1] -ForegroundColor ("{1}{0}" -f'yan','C')

                            
                            WRI`Te-h`oSt "`nResult:`t"
                            out-SCrIP`Tcon`T`e`Nts ${s`CrIpT:oBf`Us`cATe`DCOmmanD} -PrintWarning
                        }
                    }
                }
            }
            Else
            {
                Return ${U`SER`i`NpuT}
            }
        }
        Else
        {
            If    (${MENUI`NPUTop`TIonssh`oWH`Elp}[0]     -Contains ${u`SErI`NPut}) {sHOW-hEL`P`M`enU}
            ElseIf(${M`ENuinpU`T`OpTioNSs`HoWOpt`ioNs}[0]  -Contains ${UsE`RiN`pUT}) {ShOw-oPt`IO`NsM`EnU}
            ElseIf(${TUTOrI`AlinPu`TOPTI`o`Ns}[0]         -Contains ${u`S`ERiNpUt}) {S`hoW-tu`T`o`RIAl}
            ElseIf(${cLEAr`S`crE`e`NINpU`TopT`I`onS}[0]      -Contains ${useri`N`PUt}) {CL`EAr-H`OST}
            
            
            ElseIf(${res`E`T`obFus`CAtiONiNpUToPTI`oNS}[0] -Contains ${USE`RInp`UT})
            {
                If((${sCR`IP`T`:OBFuS`C`AtEDCOmMANd} -ne ${Nu`lL}) -AND (${SCr`i`Pt:ObFUsc`At`edComMAnD}."Le`NGtH" -eq 0))
                {
                    &("{3}{2}{1}{0}" -f 'ost','e-H','it','Wr') "`n`nWARNING:" -NoNewLine -ForegroundColor ("{0}{1}" -f 'Re','d')
                    &("{0}{1}{2}"-f'W','rit','e-Host') ("{13}{1}{15}{4}{6}{14}{8}{10}{5}{7}{11}{2}{0}{3}{9}{12}{16}" -f'e is nothing t','bf','her','o r','Command ha','e','s ','en','ot','es',' b',' set. T','et',' O','n','uscated','.')
                }
                ElseIf(${S`CrIp`T`:OB`F`USCatE`DCommA`Nd} -ceq ${sCRiPT`:`scRipt`BlOCk})
                {
                    &("{0}{1}{2}" -f'Wr','it','e-Host') "`n`nWARNING:" -NoNewLine -ForegroundColor ("{0}{1}" -f 'R','ed')
                    &("{1}{3}{2}{0}" -f 'ost','Wr','te-H','i') ("{2}{11}{13}{14}{6}{1}{8}{15}{7}{3}{4}{0}{10}{9}{5}{12}" -f ' Ther','ed ',' No ob','m','and.','thi','en appli','fuscatedCom','to O',' no','e is','fuscati','ng to reset.','on has',' be','b')
                }
                Else
                {
                    ${scr`i`Pt:LAUnCherAp`pLI`ed} = ${Fa`l`se}
                    ${s`cr`i`pt:`ob`FuSCa`TEDCommAND} = ${SCRiP`T:s`c`RIPTblO`ck}
                    ${S`CrIpT:`o`BfUsCAte`d`COMMa`Nd`hisT`o`Ry} = @(${ScRiPt`:ScR`i`PT`B`lock})
                    ${scRIPt:`Cl`Is`YNtax}         = @()
                    ${sCRipT:`ExE`Cu`TIONcoMM`ANDs} = @()
                    
                    &("{1}{0}{2}"-f'e-Hos','Writ','t') ("`n`nSuccessfully "+'re'+'s'+'et '+'Obfu'+'scatedComm'+'a'+'nd.') -ForegroundColor ("{0}{1}"-f'Cya','n')
                }
            }
            ElseIf(${u`N`dOObf`UsCAT`I`o`NINpUt`O`pTIOns}[0] -Contains ${u`SERIN`PUt})
            {
                If((${sc`RI`Pt`:oBfU`Sca`Te`dCoMmaND} -ne ${nu`lL}) -AND (${SCriPT:`oB`FU`sC`AtED`COMm`AND}."lENg`Th" -eq 0))
                {
                    &("{1}{0}{2}"-f 'ite-H','Wr','ost') "`n`nWARNING:" -NoNewLine -ForegroundColor ("{1}{0}" -f'ed','R')
                    &("{3}{1}{2}{0}"-f't','Ho','s','Write-') ("{2}{4}{8}{6}{3}{17}{14}{0}{18}{5}{16}{7}{12}{9}{13}{11}{10}{15}{1}"-f ' s','.',' Obfusca','nd has','ted','her','omma',' i','C',' n','o und','t','s','othing ','n','o','e',' not bee','et. T')
                }
                ElseIf(${ScRIPT`:Ob`FU`sCaTedComM`And} -ceq ${Sc`R`iPT:`sC`RIpTB`LoCK})
                {
                    &("{1}{2}{3}{0}"-f 't','Wr','ite-Ho','s') "`n`nWARNING:" -NoNewLine -ForegroundColor ("{1}{0}"-f 'd','Re')
                    &("{1}{2}{0}" -f't','Wr','ite-Hos') ("{8}{17}{3}{10}{20}{13}{6}{19}{11}{14}{2}{9}{15}{12}{5}{4}{18}{1}{0}{16}{7}" -f ' to','ng','nd. T','bfusca','t',' no','lied t','o.',' No','he','tion has ','uscatedCom',' is','pp','ma','re',' und',' o','hi','o Obf','been a')
                }
                Else
                {
                    
                    ${sc`RI`pT`:ObfUsCaTEdC`OM`mAnD} = ${scRIPt:ObFu`scaT`eDcomm`An`DHiSt`Ory}[${ScRipT:`Ob`F`UScaT`eDCO`Mm`AND`h`IST`ORy}."cO`UNT"-2]

                    
                    ${tE`Mp} = ${sCri`p`T:`O`BFuSCA`Ted`coMMa`Nd`hISToRY}
                    ${SC`RI`Pt:o`BFusC`ATedCoMmAnDHIsT`orY} = @()
                    For(${I}=0; ${i} -lt ${Te`Mp}."co`UNT"-1; ${i}++)
                    {
                        ${ScrIpt`:Obf`USCaTeDCO`mm`A`NDHisTORY} += ${Te`mp}[${I}]
                    }

                    
                    ${Cl`ISYnTAxcOU`NT} = ${SCR`Ip`T:Cl`i`SyNTaX}."cou`Nt"
                    While((${Sc`RIPT`:clISYN`TAx}[${CLI`S`YNT`AxCO`UnT}-1] -Match ((("{3}{0}{2}{1}"-f'(c','0}out )','lip{','^'))-f  [CHaR]124)) -AND (${cLi`s`yntaxc`ouNt} -gt 0))
                    {
                        ${C`lisYn`T`AXcoUnt}--
                    }
                    ${T`EMP} = ${scRipt:`Cl`iSYn`Tax}
                    ${scriPT:`c`lisyn`TAX} = @()
                    For(${I}=0; ${i} -lt ${clI`S`ynTax`cOunt}-1; ${i}++)
                    {
                        ${s`CRip`T`:ClI`sYntaX} += ${t`Emp}[${I}]
                    }

                    
                    ${t`emp} = ${SCR`IPt:eX`e`cUT`IO`NCOmma`Nds}
                    ${Sc`RIPT:Ex`E`cUtIonC`OmmAnDs} = @()
                    For(${i}=0; ${i} -lt ${Te`MP}."c`OuNt"-1; ${i}++)
                    {
                        ${s`criPT`:ExeCUT`I`O`NCOMMa`NDs} += ${T`emP}[${i}]
                    }

                    
                    If(${s`cR`IpT:LAunC`h`eRAPpLIED})
                    {
                        ${ScrIp`T:LaUN`Che`R`A`pplIEd} = ${fAL`sE}
                        &("{0}{2}{1}" -f 'Write-H','t','os') ("`n`nSuccessfully "+'re'+'mov'+'ed '+'l'+'aunche'+'r '+'fro'+'m '+'O'+'bfusc'+'atedCom'+'mand.') -ForegroundColor ("{0}{1}"-f'C','yan')
                    }
                    Else
                    {
                        &("{0}{1}{2}"-f 'Write','-Ho','st') ("`n`nSuccessfully "+'rem'+'oved '+'las'+'t '+'ob'+'fu'+'scation '+'fro'+'m '+'Obfus'+'c'+'ate'+'dCommand'+'.') -ForegroundColor ("{0}{1}"-f 'C','yan')
                    }
                }
            }
            ElseIf((${Outp`UtTo`dIS`kinpuTOptio`Ns}[0] -Contains ${Use`RinP`Ut}) -OR (${ou`TPuTtOdISK`I`N`pUtOPtiONs}[0] -Contains ${U`S`e`RinPut}.("{0}{1}"-f'Tr','im').Invoke().("{1}{0}" -f 'plit','S').Invoke(' ')[0]))
            {
                If((${scr`ipT:`O`Bf`USc`A`Tedco`MMaND} -ne '') -AND (${Scr`ipT:O`B`FuscATedcomma`Nd} -ceq ${scr`i`Pt:sCrIpT`BlOck}))
                {
                    &("{1}{0}{2}" -f'rite','W','-Host') "`n`nWARNING:" -NoNewLine -ForegroundColor ("{0}{1}"-f'Re','d')
                    &("{1}{2}{0}" -f't','Write-','Hos') (' '+'Yo'+'u '+(('h'+'aven0'+'HP'+'t ') -CrEplAcE([Char]48+[Char]72+[Char]80),[Char]39)+'ap'+'plied'+' '+'a'+'ny '+"obfuscation.`n "+' '+' '+' '+' '+' '+' '+' '+' '+'Jus'+'t '+'en'+'ter') -NoNewLine
                    &("{1}{2}{0}"-f 'e-Host','W','rit') ("{1}{3}{2}{0}"-f'IONS',' SHO',' OPT','W') -NoNewLine -ForegroundColor ("{0}{2}{1}"-f'Ye','w','llo')
                    &("{2}{0}{1}"-f 'rite-Hos','t','W') ("{8}{2}{5}{7}{6}{1}{4}{3}{0}"-f 'edCommand.','c','nd l','t','a','ook','Obfus',' at ',' a')
                }
                ElseIf(${SC`RIPT`:`Obf`UscaTe`DC`OmM`ANd} -ne '')
                {
                    
                    If(${uS`eRiNP`Ut}.("{0}{1}"-f'Tr','im').Invoke().("{1}{0}"-f 'it','Spl').Invoke(' ')."Co`UnT" -gt 1)
                    {
                        
                        ${u`s`ErINPUto`UTPutF`iLEpAtH} = ${USe`RI`NPUt}.("{1}{0}"-f 'rim','T').Invoke().("{1}{3}{2}{0}" -f'g','S','in','ubStr').Invoke(4).("{0}{1}" -f'T','rim').Invoke()
                        &("{1}{0}{2}"-f'e-Hos','Writ','t') ''
                    }
                    Else
                    {
                        
                        ${uSERiNPUTOU`TP`UTfilEp`A`Th} = &("{0}{1}"-f'Read-','Host') ("`n`nEnter "+'path'+' '+'for'+' '+'ou'+'t'+'put '+'file'+' '+'(or'+' '+'l'+'eav'+'e '+'b'+'lank '+'f'+'or '+'de'+'f'+'ault)')
                    }                    
                    
                    If(${US`ErinPutoutPUt`FI`LE`Path}.("{1}{0}" -f 'm','Tri').Invoke() -eq '')
                    {
                        
                        ${oUtP`Ut`F`IL`EPaTh} = "$ScriptDir\Obfuscated_Command.txt"
                    }
                    ElseIf(!(${usERI`NpUtOUtp`Ut`FIlE`pATH}.("{1}{0}{2}"-f 'in','Conta','s').Invoke('\')) -AND !(${uS`E`RiNPutouT`pUT`FilePa`Th}.("{1}{0}" -f 's','Contain').Invoke('/')))
                    {
                        
                        ${o`UtpU`T`FILEpA`TH} = "$ScriptDir\$($UserInputOutputFilePath.Trim())"
                    }
                    Else
                    {
                        
                        ${OutPut`FIl`E`paTH} = ${userin`P`UTOUtpUT`FI`l`EPAtH}
                    }
                    
                    
                    ${s`cRIPt:obf`U`S`c`ATE`dCO`MMANd} | &("{0}{1}{2}" -f'O','ut-Fil','e') ${oU`TpUtFILE`pAtH} -Encoding ("{1}{0}" -f'CII','AS')

                    If(${scRi`Pt:La`UN`CH`EraPPL`I`ED} -AND (&("{2}{1}{0}"-f 'ath','est-P','T') ${oUt`p`UTfIL`epath}))
                    {
                        ${sCr`i`PT:C`Lisy`NtAX} += ('out'+' '+"$OutputFilePath")
                        &("{2}{1}{0}" -f'ost','te-H','Wri') ("`nSuccessfully "+'outp'+'ut'+' '+'Ob'+'f'+'us'+'c'+'atedCommand '+'to') -NoNewLine -ForegroundColor ("{0}{1}" -f'Cy','an')
                        &("{1}{0}{2}" -f 'ite-','Wr','Host') (' '+"$OutputFilePath") -NoNewLine -ForegroundColor ("{0}{1}"-f 'Y','ellow')
                        &("{0}{1}{2}{3}"-f'W','rite-','Hos','t') (".`nA "+'Launc'+'he'+'r '+'ha'+'s '+'been'+' '+'a'+'ppl'+'ied '+'so'+' '+'th'+'is '+'s'+'crip'+'t '+'can'+'n'+'ot '+'b'+'e '+'run'+' '+'as'+' '+'a '+'standa'+'l'+'o'+'ne '+'.p'+'s1 '+'file'+'.') -ForegroundColor ("{1}{0}"-f'n','Cya')
                        If(${e`Nv`:`WiNdiR}) { &((("{2}{6}{4}{3}{1}{7}{0}{5}"-f 'e','a','C:sac','s','indows','pad.exe','W','cNot'))  -CrePLACE 'sac',[ChAR]92) ${O`U`TPutFI`lEPAtH} }
                    }
                    ElseIf(!${sCRI`pt:L`AuNc`her`ApP`lI`ED} -AND (&("{2}{0}{1}"-f 'Pat','h','Test-') ${oUtPU`Tf`Il`ePaTH}))
                    {
                        ${sc`Ri`p`T:Cl`I`SynTaX} += ('ou'+'t '+"$OutputFilePath")
                        &("{3}{0}{1}{2}" -f'r','ite-Ho','st','W') ("`nSuccessfully "+'outpu'+'t '+'Ob'+'f'+'u'+'scate'+'d'+'Command '+'to') -NoNewLine -ForegroundColor ("{0}{1}"-f'Cy','an')
                        &("{1}{2}{3}{0}"-f 'ost','Wri','te-','H') (' '+"$OutputFilePath") -NoNewLine -ForegroundColor ("{1}{2}{0}" -f'w','Ye','llo')
                        &("{0}{3}{1}{2}" -f'Writ','s','t','e-Ho') "." -ForegroundColor ("{1}{0}" -f 'n','Cya')
                        If(${en`V:wi`Ndir}) { &((("{2}{0}{1}{3}{5}{4}" -f'{0}Wind','ows','C:','{','}Notepad.exe','0'))  -f [chaR]92) ${OU`Tpu`TFilEPA`TH} }
                    }
                    Else
                    {
                        &("{0}{1}{2}"-f'Wr','ite-Ho','st') ("`nERROR: "+'Unab'+'le '+'to'+' '+'wr'+'ite '+'Obfu'+'s'+'cate'+'dCom'+'mand '+'o'+'ut '+'to') -NoNewLine -ForegroundColor ("{1}{0}" -f'ed','R')
                        &("{1}{2}{0}" -f'st','Write-','Ho') (' '+"$OutputFilePath") -NoNewLine -ForegroundColor ("{1}{0}"-f 'llow','Ye')
                    }
                }
                ElseIf(${S`cri`PT:O`BF`USCAtedCOmmANd} -eq '')
                {
                    &("{2}{0}{1}" -f 'ri','te-Host','W') "`n`nERROR:" -NoNewLine -ForegroundColor ("{1}{0}"-f 'd','Re')
                    &("{0}{2}{1}"-f'Write-Ho','t','s') (' '+'T'+'here'+' '+(('is'+'nJn'+'wt ') -crEpLaCE  'Jnw',[CHaR]39)+'any'+'thi'+'ng '+'to'+' '+'wri'+'te '+'out'+' '+'to'+' '+"disk.`n "+' '+' '+' '+' '+' '+' '+'Jus'+'t '+'ente'+'r') -NoNewLine
                    &("{2}{1}{0}" -f'st','-Ho','Write') ("{2}{0}{1}" -f 'OW OPTION','S',' SH') -NoNewLine -ForegroundColor ("{0}{1}" -f 'Ye','llow')
                    &("{1}{2}{0}"-f'Host','Wr','ite-') ("{1}{0}{3}{7}{6}{2}{4}{5}"-f'd',' an','t',' l',' Obfus','catedCommand.','a','ook ')
                }
            }
            ElseIf(${c`OPytO`cli`PbOaRD`I`NpuTO`pTiO`Ns}[0] -Contains ${uSeri`N`put})
            {
                If((${scRi`pt:ObF`U`s`C`Atedc`OmmaND} -ne '') -AND (${sCr`ipt`:OBFusc`ATEDCoM`MANd} -ceq ${S`Cr`IP`T:`SCriP`TbL`oCK}))
                {
                    &("{0}{1}{2}" -f'W','rite-H','ost') "`n`nWARNING:" -NoNewLine -ForegroundColor ("{1}{0}" -f 'ed','R')
                    &("{2}{0}{3}{1}" -f'ite-H','st','Wr','o') (' '+'Yo'+'u '+('ha'+'venTj9t ')."Re`P`lAcE"('Tj9',[StrInG][cHAr]39)+'appli'+'ed'+' '+'any'+' '+"obfuscation.`n "+' '+' '+' '+' '+' '+' '+' '+' '+'Just'+' '+'ente'+'r') -NoNewLine
                    &("{1}{0}{2}"-f'te','Wri','-Host') ("{4}{1}{0}{3}{2}"-f'W O','HO','TIONS','P',' S') -NoNewLine -ForegroundColor ("{1}{0}{2}" -f'llo','Ye','w')
                    &("{0}{1}{2}" -f'Wr','ite-H','ost') ("{5}{0}{4}{2}{6}{7}{1}{3}"-f ' look at Obfusc','omman','t','d.','a',' and','ed','C')
                }
                ElseIf(${sc`RiPT`:`obfUsCAtedcO`M`mAnD} -ne '')
                {
                    
                    
                    Try
                    {
                        ${n`UlL} =  $3EH::("{1}{3}{2}{0}"-f'e','LoadWit','tialNam','hPar').Invoke(("{0}{3}{2}{5}{4}{1}" -f'Sy','ms','t','s','m.Windows.For','e'))
                          $ZBu::("{0}{1}" -f'Se','tText').Invoke(${SC`RI`Pt:OB`F`U`s`CAtEdcOmMAnd})

                        If(${sCri`P`T:`La`U`Nc`HErapPlIed})
                        {
                            &("{2}{0}{1}" -f 'ri','te-Host','W') ("`n`nSuccessfully "+'co'+'pied '+'Obf'+'usc'+'atedComm'+'and '+'t'+'o '+'clip'+'boar'+'d.') -ForegroundColor ("{1}{0}" -f'yan','C')
                        }
                        Else
                        {
                            &("{1}{2}{0}"-f'-Host','Wri','te') ("`n`nSuccessfully "+'co'+'pied '+'Obfusca'+'ted'+'Co'+'mma'+'nd '+'to'+' '+"clipboard.`nNo "+'Lau'+'nch'+'er'+' '+'h'+'as '+'b'+'een '+'ap'+'pli'+'ed, '+'s'+'o '+'comman'+'d '+'c'+'an '+'o'+'nly '+'be'+' '+'p'+'asted'+' '+'int'+'o '+'powershe'+'ll'+'.e'+'xe.') -ForegroundColor ("{0}{1}"-f'Cya','n')
                        }
                    }
                    Catch
                    {
                        ${ErrO`R`MESsagE} = "Clipboard functionality will not work in PowerShell version $($PsVersionTable.PsVersion.Major) unless you add -STA (Single-Threaded Apartment) execution flag to powershell.exe. "

                        If((&("{0}{2}{3}{1}"-f'G','mand','et-C','om') ("{1}{2}{3}{0}"-f'st','Wri','te','-Ho'))."C`OMMaNdty`pe" -ne ("{1}{0}"-f'dlet','Cm'))
                        {
                            
                            . ((&("{1}{2}{0}{3}"-f 'Comm','Get','-','and') ("{3}{0}{2}{1}" -f't','st','e-Ho','Wri'))  | &("{2}{0}{1}" -f 'e-Objec','t','Wher') {${_}."co`mMa`N`DTyPe" -eq ("{2}{1}{0}"-f't','e','Cmdl')}) ("`n`nWARNING: "+'') -NoNewLine -ForegroundColor ("{0}{1}" -f'Re','d')
                            . ((&("{0}{2}{1}" -f'Get-C','and','omm') ("{0}{2}{1}" -f 'Write','ost','-H'))  | &("{1}{3}{0}{2}"-f 'bjec','Wher','t','e-O') {${_}."C`Omm`ANDt`ypE" -eq ("{1}{0}"-f 't','Cmdle')}) ${Er`RORMeSs`A`Ge} -NoNewLine

                            . ((&("{1}{2}{0}"-f'd','Get-C','omman') ("{0}{2}{1}" -f 'Star','ep','t-Sle')) | &("{0}{2}{1}"-f 'Wher','ject','e-Ob') {${_}."coM`Mandt`yPE" -eq ("{0}{1}"-f 'Cmdl','et')}) 2
                        }
                        Else
                        {
                            &("{0}{2}{1}" -f'W','-Host','rite') ("`n`nWARNING: "+'') -NoNewLine -ForegroundColor ("{0}{1}" -f'Re','d')
                            &("{2}{1}{0}"-f 'e-Host','t','Wri') ${ErROrM`e`s`saGe}

                            If(${s`C`RIPt:cLISy`NTax} -gt 0) {&("{1}{2}{0}"-f'eep','St','art-Sl') 2}
                        }
                    }
                    
                    ${SCr`IPt:C`l`IsyNt`AX} += ("{1}{0}"-f 'p','cli')
                }
                ElseIf(${S`cri`pT:ObfUsCAtEd`Co`mMaND} -eq '')
                {
                    &("{1}{2}{0}"-f 't','Write-','Hos') "`n`nERROR:" -NoNewLine -ForegroundColor ("{1}{0}" -f'ed','R')
                    &("{1}{0}{2}" -f 'ite-','Wr','Host') (' '+'Th'+'ere '+('isn'+'{0}'+'t ')  -f[char]39+'anything'+' '+'t'+'o '+'co'+'py '+'t'+'o '+'you'+'r '+"clipboard.`n "+' '+' '+' '+' '+' '+' '+'J'+'ust '+'ente'+'r') -NoNewLine
                    &("{1}{2}{0}" -f 'st','W','rite-Ho') ("{2}{1}{4}{3}{0}"-f 'TIONS','SHOW',' ','OP',' ') -NoNewLine -ForegroundColor ("{2}{1}{0}"-f 'ow','ll','Ye')
                    &("{2}{0}{1}{3}" -f'r','ite-Hos','W','t') ("{3}{6}{5}{0}{4}{1}{2}" -f'k a','catedCo','mmand.',' a','t Obfus','o','nd lo') -NoNewLine
                }
                
            }
            ElseIf(${ExeCU`TIONi`NpUToptiO`Ns}[0] -Contains ${U`sEriN`PUt})
            {
                If(${SCr`IPt`:LAunCHeraPp`LI`Ed})
                {
                    &("{0}{2}{1}" -f 'Wr','st','ite-Ho') "`n`nERROR:" -NoNewLine -ForegroundColor ("{0}{1}" -f 'R','ed')
                    &("{0}{1}{2}" -f'Write','-H','ost') (' '+'Ca'+'n'+'not '+'exe'+'cu'+'te '+'beca'+'us'+'e '+'you'+' '+'ha'+'ve '+'a'+'ppli'+'ed '+'a '+"Launcher.`n "+' '+' '+' '+' '+' '+' '+'En'+'ter') -NoNewLine
                    &("{2}{1}{0}" -f 'ost','te-H','Wri') ("{0}{1}" -f' ','COPY') -NoNewLine -ForeGroundColor ("{1}{0}"-f 'w','Yello')
                    &("{2}{1}{0}"-f't','s','Write-Ho') "/" -NoNewLine
                    &("{2}{0}{1}"-f 'rite-H','ost','W') ("{0}{1}" -f'CL','IP') -NoNewLine -ForeGroundColor ("{1}{0}"-f 'llow','Ye')
                    &("{2}{0}{1}" -f 'ri','te-Host','W') (' '+'and'+' '+'p'+'as'+'te '+'int'+'o '+"cmd.exe.`n "+' '+' '+' '+' '+' '+' '+'Or'+' '+'e'+'nter') -NoNewLine
                    &("{1}{2}{0}" -f 'Host','Writ','e-') ("{0}{1}"-f ' U','NDO') -NoNewLine -ForeGroundColor ("{0}{1}{2}"-f 'Yel','l','ow')
                    &("{1}{0}{3}{2}"-f'rite-','W','t','Hos') ("{3}{7}{6}{0}{4}{2}{1}{5}{8}"-f'auncher from Ob','cate','s',' to','fu','dCo','the L',' remove ','mmand.')
                }
                ElseIf(${sC`RipT`:O`BFUscAt`eDCO`MmAnD} -ne '')
                {
                    If(${s`CRi`p`T:ObfUsCaTeD`C`ommANd} -ceq ${ScRI`pT:S`CR`IpTBLO`cK}) {&("{2}{1}{0}{3}"-f 'o','ite-H','Wr','st') ("`n`nInvoking "+'(tho'+'u'+'gh '+'yo'+'u '+(('have'+'nv'+'tnt ')  -RePlace([chAr]118+[chAr]116+[chAr]110),[chAr]39)+'ob'+'fu'+'s'+'cated '+'any'+'thi'+'ng'+' '+'yet)'+':')}
                    Else {&("{2}{0}{1}"-f 'rite-H','ost','W') "`n`nInvoking:"}
                    
                    &("{0}{3}{4}{2}{1}"-f'Ou','nts','Conte','t-S','cript') ${SCR`Ip`T:obFUS`catEdC`om`maND}
                    &("{0}{1}{2}" -f 'W','rite-','Host') ''
                    ${n`Ull} = &("{1}{3}{2}{0}{4}" -f 'e','I','Expr','nvoke-','ssion') ${sCrIpT:`o`BFUS`cAtEDC`OmmaNd}
                }
                Else {
                    &("{0}{1}{2}" -f 'Write','-H','ost') "`n`nERROR:" -NoNewLine -ForegroundColor ("{0}{1}" -f'Re','d')
                    &("{2}{1}{0}"-f'-Host','e','Writ') (' '+'Can'+'not'+' '+'e'+'xec'+'ute '+'be'+'cause '+'you'+' '+'have'+' '+'no'+'t '+'se'+'t '+'S'+'criptPat'+'h '+'o'+'r '+"ScriptBlock.`n "+' '+' '+' '+' '+' '+' '+'Ente'+'r') -NoNewline
                    &("{0}{2}{1}"-f 'Write-Ho','t','s') ("{0}{2}{1}" -f ' SH','TIONS','OW OP') -NoNewLine -ForegroundColor ("{1}{0}{2}"-f'l','Yel','ow')
                    &("{1}{2}{0}"-f 't','Write-Ho','s') ("{3}{0}{7}{2}{10}{6}{9}{8}{4}{1}{5}"-f 'set','oc','ipt',' to ','ptBl','k.','ath or ',' Scr','i','Scr','P')
                }
            }
            Else
            {
                &("{0}{2}{1}" -f'Write','t','-Hos') "`n`nERROR:" -NoNewLine -ForegroundColor ("{0}{1}" -f'Re','d')
                &("{0}{1}{2}" -f 'Write-Ho','s','t') ("{4}{2}{6}{1}{3}{5}{0}" -f'r','ed an in','en','val',' You ','id option. Ente','ter') -NoNewLine
                &("{1}{2}{0}"-f 't','Wr','ite-Hos') ("{0}{1}"-f' ','HELP') -NoNewLine -ForegroundColor ("{0}{1}"-f 'Yell','ow')
                &("{2}{1}{3}{0}" -f 'Host','r','W','ite-') ("{2}{0}{4}{3}{1}{5}" -f'for ','n',' ','ore informatio','m','.')

                
                If(${S`CrIp`T:cOMp`OUnDComM`AnD}."CO`Unt" -gt 0)
                {
                    ${SCRI`Pt`:c`o`Mp`OuNdCOmMANd} = @()
                }

                
                If(${ac`cEP`TABlEI`NP`UT}."co`UNt" -gt 1)
                {
                    ${MEss`Age} = ("{0}{7}{3}{9}{4}{1}{5}{2}{8}{6}" -f'Val','ent m',' i','for cu','r','enu','lude:','id options ','nc','r')
                }
                Else
                {
                    ${mE`SS`AGE} = ("{5}{11}{6}{1}{8}{7}{0}{4}{3}{2}{10}{9}" -f ' cur','io',' in','u','rent men','Valid','pt','for','n ','s:','clude',' o')
                }
                &("{1}{2}{0}"-f'Host','Wri','te-') (' '+' '+' '+' '+' '+' '+' '+"$Message "+'') -NoNewLine

                ${CO`UNTER}=0
                ForEach(${aCCEpt`AB`L`e`opT`ioN} in ${a`CceP`TAb`lEiNPuT})
                {
                    ${co`U`NTeR}++

                    
                    If(${sE`le`cTIOncoNta`i`NscOMmAnD})
                    {
                        ${co`lOR`ToouT`pUt} = ("{1}{0}"-f 'en','Gre')
                    }
                    Else
                    {
                        ${cOL`oRtOOUT`PuT} = ("{0}{1}"-f'Ye','llow')
                    }

                    &("{0}{2}{1}" -f'Writ','Host','e-') ${a`cCEP`TAB`lEop`T`ION} -NoNewLine -ForegroundColor ${COlorT`o`ouTpUT}
                    If((${cO`UNTEr} -lt ${acCEp`Ta`BleInPuT}."le`NGTH") -AND (${AC`CEpTAb`leoPti`On}."L`eNgTh" -gt 0))
                    {
                        &("{1}{3}{0}{2}"-f'-Ho','W','st','rite') ', ' -NoNewLine
                    }
                }
                &("{0}{1}{2}" -f'W','r','ite-Host') ''
            }
        }
    }
    
    Return ${uS`e`RinPUT}.("{1}{0}" -f 'Lower','To').Invoke()
}


Function SHoW`-op`TI`ONs`mENU
{


    
    ${c`Ou`NtER} = 0
    ForEach(${li`Ne} in ${s`C`RIPt:OPtiO`NSME`Nu})
    {
        If(${Li`NE}[0].("{1}{0}"-f 'oLower','T').Invoke().("{1}{0}" -f'im','Tr').Invoke() -eq ("{0}{2}{1}{3}" -f 's','t','criptpa','h'))            {${SCRI`Pt:`o`pT`I`onsMENu}[${CO`UNtEr}][1] = ${SCr`IPT:s`cR`Iptpa`Th}}
        If(${LI`Ne}[0].("{1}{2}{0}"-f'er','To','Low').Invoke().("{1}{0}"-f 'im','Tr').Invoke() -eq ("{3}{1}{0}{2}" -f'b','t','lock','scrip'))           {${scr`i`p`T:O`PtI`oNSm`ENU}[${C`ouNt`Er}][1] = ${sCR`iP`T:scri`pt`Block}}
        If(${l`INe}[0].("{0}{1}" -f 'ToLo','wer').Invoke().("{0}{1}"-f'Tri','m').Invoke() -eq ("{0}{3}{2}{1}" -f 'comman','tax','yn','dlines'))     {${SCrIpt:`O`PtION`SmeNu}[${coUN`T`Er}][1] = ${SCrIpt:c`L`Isy`N`TAX}}
        If(${l`Ine}[0].("{0}{1}"-f 'ToL','ower').Invoke().("{1}{0}"-f 'im','Tr').Invoke() -eq ("{3}{2}{4}{0}{1}" -f 'n','ds','utionc','exec','omma'))     {${sc`RIpT`:optI`OnsmeNU}[${coU`NT`Er}][1] = ${s`C`RI`Pt:e`XEcU`TioncoMM`ANDS}}
        If(${L`iNe}[0].("{0}{2}{1}" -f 'ToL','r','owe').Invoke().("{1}{0}" -f 'm','Tri').Invoke() -eq ("{2}{0}{4}{1}{3}"-f 'bfuscat','com','o','mand','ed'))
        {
            
            If(${S`cRip`T:ObFuS`cATE`d`COMm`ANd} -cne ${SCR`Ipt:s`CRIPT`B`LOCk}) {${SC`R`Ipt:oPtIOnSM`E`Nu}[${coU`Nt`eR}][1] = ${sCRip`T:OBfU`sCaTeDc`oM`MAnD}}
            Else {${scRip`T`:OpT`ioN`s`MeNU}[${c`O`UNteR}][1] = ''}
        }
        If(${lI`Ne}[0].("{0}{1}{2}"-f 'To','Low','er').Invoke().("{0}{1}" -f'T','rim').Invoke() -eq ("{2}{3}{1}{0}" -f 'ngth','cationle','ob','fus'))
        {
            
            If((${scrIP`T:ObFu`S`CATedc`OMMa`ND}."L`EnGtH" -gt 0) -AND (${S`C`RiPt:oBf`USCATEdCo`Mm`A`ND} -cne ${scrIP`T:`sCRI`pTbl`OCk})) {${sCrI`Pt:Op`T`I`ON`smENU}[${CO`UN`TeR}][1] = ${sCRiPt`:ObFusCatedC`om`m`AnD}."LEng`Th"}
            Else {${sCRIPT:oP`Ti`o`N`S`m`ENU}[${coUN`T`er}][1] = ''}
        }

        ${co`UN`TeR}++
    }
    
    
    &("{1}{2}{0}" -f'e-Host','Wr','it') ("`n`nSHOW "+'O'+'PTIO'+'NS') -NoNewLine -ForegroundColor ("{0}{1}"-f 'C','yan')
    &("{0}{2}{1}" -f 'W','Host','rite-') " ::" -NoNewLine
    &("{2}{1}{0}" -f't','s','Write-Ho') ("{0}{1}{2}" -f ' Y','e','llow') -NoNewLine -ForegroundColor ("{1}{0}" -f 'llow','Ye')
    &("{2}{0}{1}{3}" -f 'e-H','o','Writ','st') ("{1}{2}{9}{7}{0}{5}{4}{3}{8}{6}"-f 'e set by ',' op','tion','e','t','en','ng',' b','ri','s can') -NoNewLine
    &("{2}{1}{0}"-f 'Host','rite-','W') ("{4}{1}{0}{2}{3}" -f 'NAME ','ON','VALU','E',' SET OPTI') -NoNewLine -ForegroundColor ("{0}{1}" -f 'G','reen')
    &("{1}{3}{2}{0}" -f 'st','Wri','o','te-H') ".`n"
    ForEach(${o`Pt`ION} in ${sC`R`Ipt:o`P`Tio`NsMENU})
    {
        ${o`P`TIon`TITLe} = ${o`pTI`on}[0]
        ${Op`TioNvA`L`Ue} = ${O`pTi`On}[1]
        ${caNsE`TV`AlUE} = ${o`Pt`IoN}[2]
      
        &("{0}{2}{1}"-f'Write-','ost','H') ${l`inEs`paCi`Ng} -NoNewLine
        
        
        If(${ca`NS`E`TvaLUE}) {&("{0}{2}{1}"-f'Write-H','st','o') ${o`pT`Iont`iTLe} -NoNewLine -ForegroundColor ("{2}{0}{1}" -f'll','ow','Ye')}
        Else {&("{0}{1}{2}"-f 'Write-Ho','s','t') ${oPtIo`NTiT`LE} -NoNewLine}
        &("{0}{2}{3}{1}"-f'Wr','e-Host','i','t') ": " -NoNewLine
        
        
        If(${option`Ti`T`lE} -eq ("{2}{1}{3}{5}{4}{0}"-f'gth','bfu','O','sc','Len','ation'))
        {
            &("{0}{3}{1}{2}"-f 'Wri','e','-Host','t') ${OPTIo`NV`Al`UE} -ForegroundColor ("{1}{0}" -f'n','Cya')
        }
        ElseIf(${oP`T`IoNtIt`lE} -eq ("{1}{3}{2}{0}" -f'k','Scr','Bloc','ipt'))
        {
            &("{0}{2}{3}{1}{5}{4}" -f'Ou','ptCo','t-','Scri','nts','nte') ${Op`TIOnvA`L`UE}
        }
        ElseIf(${o`pTioNt`I`TLe} -eq ("{0}{2}{3}{1}{5}{4}" -f 'C','i','ommand','L','yntax','neS'))
        {
            
            ${SETSy`N`Tax} = ''
            If((${SCrI`P`T:S`CRiPt`path}."L`eNGTh" -gt 0) -AND (${ScRipT:s`c`RIPT`P`AtH} -ne 'N/A'))
            {
                ${seT`sy`N`TAX} = (' '+'-Scrip'+'tPa'+'t'+'h '+"'$Script:ScriptPath'")
            }
            ElseIf((${sCRi`P`T:sCRIp`Tb`LOck}."Len`G`Th" -gt 0) -AND (${Sc`Ri`PT:scRi`PTPatH} -eq 'N/A'))
            {
                ${s`et`Sy`NTAx} = " -ScriptBlock {$Script:ScriptBlock}"
            }

            ${CommanDSY`N`TAX} = ''
            If(${oPtI`on`Va`lUe}."co`UNt" -gt 0)
            {
                ${C`OMmaNdS`YnTAx} = ((("{2}{0}{1}"-f'a','nd A8h',' -Comm'))."Re`P`lace"(([CHar]65+[CHar]56+[CHar]104),[sTrIng][CHar]39)) + (${O`pT`IoNvaluE} -Join ',') + ((("{0}{1}{2}{3}" -f 'B','lD -Qui','e','t'))."rE`pL`ACe"('BlD',[sTrIng][cHaR]39))
            }

            If((${SETS`yNT`AX} -ne '') -OR (${COmMAN`Dsy`N`T`AX} -ne ''))
            {
                ${clIsynt`AxT`o`oU`TP`Ut} = ("{0}{1}{3}{2}" -f 'Invok','e-Obf','cation','us') + ${sEts`Y`NTAx} + ${C`ommA`Nd`Sy`NTAX}
                &("{2}{1}{0}{3}"-f'te-','ri','W','Host') ${clIS`Ynt`AxTOOUT`PUT} -ForegroundColor ("{0}{1}" -f 'Cya','n')
            }
            Else
            {
                &("{1}{2}{0}" -f 'Host','Write','-') ''
            }
        }
        ElseIf(${optIoN`T`i`TLE} -eq ("{0}{1}{3}{2}{4}" -f 'E','xecuti','om','onC','mands'))
        {
            
            If(${o`Pt`I`onvAlUE}."C`ouNT" -gt 0) {&("{1}{2}{0}" -f 'ost','Write','-H') ''}
            ${C`oUNtEr} = 0
            ForEach(${ExEC`UT`IONc`O`MMAnd} in ${oP`T`IOnva`Lue})
            {
                ${cO`U`NteR}++
                If(${EXeCuTi`on`C`omm`A`Nd}."leng`TH" -eq 0) {&("{3}{0}{1}{2}"-f 'ite-H','o','st','Wr') ''; Continue}
            
                ${eXECUTI`on`C`oM`maND} = ${eXE`cuT`Ionc`Omm`AND}.("{2}{0}{1}" -f'ep','lace','R').Invoke((('{0}Scri'+'p'+'tBloc'+'k') -f [CHaR]36),'~').("{1}{0}" -f 't','Spli').Invoke('~')
                &("{1}{2}{3}{0}"-f 't','Write-H','o','s') "    $($ExecutionCommand[0]) " -NoNewLine -ForegroundColor ("{1}{0}" -f 'n','Cya')
                &("{2}{0}{1}"-f 'i','te-Host','Wr') ((('E'+'9nScrip'+'tBlock') -RePlacE  ([ChAR]69+[ChAR]57+[ChAR]110),[ChAR]36)) -NoNewLine -ForegroundColor ("{1}{0}{2}"-f'e','Mag','nta')
                
                
                If((${opt`iO`Nv`AluE}."c`Ount" -gt 0) -AND (${c`oUNT`eR} -lt ${O`pT`IONva`LuE}."COU`NT"))
                {
                    &("{2}{0}{1}" -f'ite-H','ost','Wr') ${E`X`e`cuTIoN`commanD}[1] -ForegroundColor ("{1}{0}"-f 'yan','C')
                }
                Else
                {
                    &("{0}{1}{2}" -f'Write-','Hos','t') ${EXeCUTIO`NcO`MM`And}[1] -NoNewLine -ForegroundColor ("{1}{0}"-f'n','Cya')
                }

            }
            &("{0}{2}{1}" -f'Wr','e-Host','it') ''
        }
        ElseIf(${OP`TIo`NTI`TLe} -eq ("{2}{1}{3}{4}{0}" -f'd','bfuscatedC','O','om','man'))
        {
            &("{1}{2}{0}{3}"-f 't','Out-Scr','ip','Contents') ${O`PTiOnv`ALuE}
        }
        Else
        {
            &("{0}{1}{2}"-f'Wr','ite-H','ost') ${o`ptIOnva`luE} -ForegroundColor ("{0}{1}"-f'Mag','enta')
        }
    }
    
}


Function S`h`O`W-hELpMEnu
{


    
    &("{1}{0}{2}{3}" -f'rit','W','e-H','ost') ("`n`nHELP "+'MEN'+'U') -NoNewLine -ForegroundColor ("{0}{1}"-f'C','yan')
    &("{2}{0}{1}"-f'te-','Host','Wri') ("{3}{1}{0}{2}"-f 'b',' Availa','le',' ::') -NoNewLine
    &("{0}{2}{1}"-f 'Writ','st','e-Ho') ("{2}{1}{0}" -f'ns','o',' opti') -NoNewLine -ForegroundColor ("{0}{1}"-f'Yello','w')
    &("{0}{1}{3}{2}"-f'W','r','t','ite-Hos') (' '+'s'+'how'+'n '+"below:`n")
    ForEach(${Inp`UT`oPtion`Sl`I`sT} in ${ALl`AvaILAB`LE`IN`P`UtO`PTiO`NsLisTS})
    {
        ${inPUTopt`i`on`s`c`OMMaNDs}    = ${INP`Ut`o`PtioNS`lIsT}[0]
        ${in`puT`oPtIoN`S`des`C`RIP`TIon} = ${Inpu`T`oP`TiONSlISt}[1]

        
        If(${InpUT`O`PT`ioNsd`EscriPt`iON}.("{0}{2}{1}" -f 'Cont','ns','ai').Invoke('<') -AND ${InPU`ToP`TIoN`sdEScRipt`i`oN}.("{1}{0}{2}"-f'nta','Co','ins').Invoke('>'))
        {
            ${fi`Rs`TpARt}  = ${Inpu`TO`PTIONSdE`s`c`RIpt`IoN}.("{0}{2}{1}"-f'SubSt','ng','ri').Invoke(0,${i`NpuTo`p`TIoNSdEscRiPt`IOn}.("{0}{2}{1}"-f 'Index','f','O').Invoke('<'))
            ${MID`dLeP`A`Rt} = ${iNP`UTOpTionSDescr`IP`T`IOn}.("{0}{1}{2}"-f'Su','bStr','ing').Invoke(${F`i`RstpA`RT}."lEnG`TH"+1)
            ${M`ID`dlEparT} = ${MId`d`L`ePart}.("{1}{2}{0}"-f 'tring','Sub','S').Invoke(0,${MIDD`lEpa`Rt}.("{0}{1}" -f'Ind','exOf').Invoke('>'))
            ${laST`PARt}   = ${in`pUTo`PTiOn`sd`e`Sc`RiPtiON}.("{0}{2}{1}" -f'Sub','ring','St').Invoke(${FirStp`A`RT}."L`EngtH"+${mI`Ddl`EpA`Rt}."l`enGTH"+2)
            &("{1}{0}{2}" -f'rite-Hos','W','t') ("$LineSpacing "+"$FirstPart") -NoNewLine
            &("{3}{2}{0}{1}"-f 'e-Hos','t','it','Wr') ${M`I`d`dlepARt} -NoNewLine -ForegroundColor ("{0}{1}" -f'Cy','an')
            &("{2}{1}{0}"-f't','rite-Hos','W') ${l`AsTPA`Rt} -NoNewLine
        }
        Else
        {
            &("{0}{1}{2}"-f 'W','rite-Hos','t') ("$LineSpacing "+"$InputOptionsDescription") -NoNewLine
        }
        
        ${CO`Un`TeR} = 0
        ForEach(${COmm`And} in ${iNP`UT`opT`I`on`SCOMmAnds})
        {
            ${CO`Unt`eR}++
            &("{2}{3}{0}{1}" -f'-Ho','st','Wr','ite') ${coM`m`AnD}.("{1}{2}{0}" -f'Upper','T','o').Invoke() -NoNewLine -ForegroundColor ("{0}{1}" -f'Yel','low')
            If(${co`Unt`er} -lt ${inPU`T`oPti`oN`sCom`maNDS}."co`UnT") {&("{2}{1}{0}"-f'-Host','ite','Wr') ',' -NoNewLine}
        }
        &("{0}{1}{2}" -f 'W','rite-','Host') ''
    }
}


Function ShOw-`TU`T`OrI`AL
{


    &("{2}{0}{1}{3}"-f'r','ite-Ho','W','st') "`n`nTUTORIAL" -NoNewLine -ForegroundColor ("{1}{0}"-f 'an','Cy')
    &("{0}{1}{2}" -f 'W','rite-Hos','t') ("{8}{18}{2}{15}{12}{4}{13}{11}{9}{20}{14}{7}{19}{1}{6}{3}{10}{16}{5}{0}{17}" -f ' obfuscation','ho','e i','o get','tor','r','w t','ing y',' :: He',' ',' y','l','ck tu','ia','ow','s a qui','ou',' on:','r','ou ','sh')
    
    &("{0}{2}{1}" -f'Wri','t','te-Hos') ("`n1) "+'') -NoNewLine -ForegroundColor ("{1}{0}" -f 'an','Cy')
    &("{1}{0}{2}"-f'te-','Wri','Host') (("{14}{1}{8}{6}{11}{4}{0}{3}{2}{7}{10}{9}{12}{13}{5}"-f 'r','block ','path/U',' a script ',') o','.','SCRI','RL (S','(SET ','R','ET SC','PTBLOCK','I','PTPATH)','Load a script'))
    &("{0}{1}{2}"-f 'Write','-Ho','st') ((("{19}{1}{3}{8}{12}{15}{11}{22}{21}{23}{4}{18}{7}{9}{17}{2}{10}{6}{13}{5}{20}{14}{24}{16}{0}" -f ' Green','  SET','co',' ','djT','ore','nd3dj -','i','SCRIPT','s is my t','mma','ri','B','F','l','LOCK W','r','est ','h',' ','groundCo','-Hos','te','t 3','o'))-rEplacE([Char]51+[Char]100+[Char]106),[Char]39) -ForegroundColor ("{1}{0}" -f 'en','Gre')
    
    &("{2}{1}{3}{0}" -f 'st','rit','W','e-Ho') ("`n2) "+'') -NoNewLine -ForegroundColor ("{0}{1}" -f'C','yan')
    &("{1}{2}{0}" -f 'e-Host','Wr','it') ("{5}{10}{4}{16}{8}{6}{7}{12}{15}{13}{14}{2}{3}{0}{9}{1}{11}"-f ' the','options are ','e','re','i','N',' o','bfuscation ','he',' ','av','in','m',' w','h','enus','gate through t') -NoNewLine
    &("{1}{2}{0}" -f 't','Write-','Hos') ("{0}{1}"-f ' YELLO','W') -NoNewLine -ForegroundColor ("{0}{1}"-f 'Ye','llow')
    &("{1}{0}{2}" -f '-Ho','Write','st') "."
    &("{2}{0}{1}"-f 'H','ost','Write-') ("{2}{1}{0}"-f 'REEN','  G',' ') -NoNewLine -ForegroundColor ("{1}{0}"-f'en','Gre')
    &("{2}{3}{1}{0}"-f'ost','H','W','rite-') ("{0}{2}{1}{5}{4}{6}{3}" -f ' o','ons a','pti','tion.','us','pply obf','ca')
    &("{2}{0}{1}" -f 'rit','e-Host','W') ("{0}{1}{2}"-f'   ','Ent','er') -NoNewLine
    &("{3}{1}{2}{0}"-f '-Host','ri','te','W') ("{0}{1}"-f' BA','CK') -NoNewLine -ForegroundColor ("{2}{0}{1}"-f 'lo','w','Yel')
    &("{1}{0}{2}"-f 'ite-H','Wr','ost') "/" -NoNewLine
    &("{2}{0}{1}"-f'te-Ho','st','Wri') ("{1}{0}"-f'..','CD ') -NoNewLine -ForegroundColor ("{0}{1}"-f'Y','ellow')
    &("{0}{2}{1}"-f'W','Host','rite-') ("{6}{5}{0}{4}{7}{2}{3}{1}"-f' t','d','ious menu a','n','o pre','to go',' ','v') -NoNewLine
    &("{1}{0}{2}" -f'o','Write-H','st') ("{0}{1}" -f' ','HOME') -NoNewline -ForegroundColor ("{0}{1}{2}"-f'Yel','lo','w')
    &("{1}{2}{0}"-f't','Write-','Hos') "/" -NoNewline
    &("{0}{1}{2}" -f'Write-','H','ost') ("{1}{0}"-f'AIN','M') -NoNewline -ForegroundColor ("{2}{1}{0}" -f'low','l','Ye')
    &("{2}{3}{1}{0}"-f 't','e-Hos','Wr','it') (' '+'to'+' '+'g'+'o '+'t'+'o '+'hom'+'e '+"menu.`n "+' '+' '+'E.g.'+' '+'E'+'nter') -NoNewLine
    &("{2}{0}{1}"-f'e-Hos','t','Writ') ("{2}{1}{3}{0}" -f'G','ENC',' ','ODIN') -NoNewLine -ForegroundColor ("{0}{1}"-f'Yell','ow')
    &("{2}{0}{3}{1}"-f'ri','-Host','W','te') ("{0}{1}"-f ' & ','then') -NoNewLine
    &("{2}{3}{1}{0}" -f'-Host','te','W','ri') " 5" -NoNewLine -ForegroundColor ("{1}{0}"-f 'reen','G')
    &("{0}{2}{1}"-f 'Wri','-Host','te') ("{3}{6}{4}{7}{1}{0}{5}{2}{8}" -f 'reStr','cu','g obfusca',' to ','pp','in','a','ly Se','tion.')
    
    &("{2}{0}{1}{3}" -f'te','-Ho','Wri','st') ("`n3) "+'') -NoNewLine -ForegroundColor ("{1}{0}" -f'an','Cy')
    &("{2}{1}{0}" -f't','e-Hos','Writ') ("{1}{0}" -f'nter','E') -NoNewLine
    &("{2}{0}{1}"-f 'te-','Host','Wri') ("{0}{1}"-f ' T','EST') -NoNewLine -ForegroundColor ("{0}{1}"-f'Yello','w')
    &("{2}{0}{1}" -f'r','ite-Host','W') "/" -NoNewLine
    &("{1}{2}{0}{3}" -f'te-','W','ri','Host') ("{0}{1}"-f 'EXE','C') -NoNewLine -ForegroundColor ("{1}{0}"-f'ow','Yell')
    &("{2}{0}{1}" -f '-Hos','t','Write') (' '+'to'+' '+'te'+'st '+'t'+'he '+'ob'+'fuscat'+'e'+'d '+'co'+'mmand '+"locally.`n "+' '+' '+'Ente'+'r') -NoNewLine
    &("{2}{1}{0}" -f 'st','ite-Ho','Wr') ("{0}{1}"-f ' S','HOW') -NoNewLine -ForegroundColor ("{0}{1}" -f 'Yell','ow')
    &("{2}{3}{1}{0}" -f 'ost','H','Wr','ite-') ("{2}{0}{1}{4}{9}{7}{8}{6}{10}{3}{5}{11}"-f 'en','tly',' to see the curr','an',' ob','d','ed com','us','cat','f','m','.')
    
    &("{1}{0}{2}" -f '-Hos','Write','t') ("`n4) "+'') -NoNewLine -ForegroundColor ("{1}{0}" -f 'n','Cya')
    &("{3}{2}{1}{0}" -f 'ost','H','e-','Writ') ("{1}{0}"-f'er','Ent') -NoNewLine
    &("{0}{2}{1}"-f'Wr','ost','ite-H') ("{1}{0}" -f'COPY',' ') -NoNewLine -ForegroundColor ("{0}{1}{2}"-f'Yell','o','w')
    &("{3}{2}{0}{1}"-f'o','st','H','Write-') "/" -NoNewLine
    &("{1}{2}{0}" -f'e-Host','Wr','it') ("{0}{1}" -f 'CL','IP') -NoNewLine -ForegroundColor ("{1}{0}" -f'llow','Ye')
    &("{0}{2}{3}{1}" -f 'Wr','st','ite-H','o') ("{3}{4}{8}{2}{10}{9}{1}{13}{7}{12}{6}{5}{0}{11}" -f 'boa','d','bfu',' to copy',' ','lip','o your c','o','o','man','scated com','rd.','ut t',' ')
    &("{0}{2}{1}{3}" -f'Wri','e-H','t','ost') ("{2}{1}{0}" -f 'ter',' En','  ') -NoNewLine
    &("{1}{0}{2}" -f'ite-Ho','Wr','st') ("{0}{1}" -f' ','OUT') -NoNewLine -ForegroundColor ("{0}{1}" -f 'Yell','ow')
    &("{0}{2}{1}" -f'Wr','st','ite-Ho') ("{8}{1}{7}{6}{2}{0}{3}{5}{4}"-f 'ut','m','nd o',' to ','isk.','d','a','m',' to write obfuscated co')
    
    &("{2}{3}{0}{1}"-f '-Ho','st','Wr','ite') ("`n5) "+'') -NoNewLine -ForegroundColor ("{0}{1}" -f 'C','yan')
    &("{1}{3}{2}{0}" -f't','Wr','e-Hos','it') ("{1}{0}"-f'r','Ente') -NoNewLine
    &("{1}{2}{0}" -f 'ost','Write-','H') ("{1}{0}"-f 'SET',' RE') -NoNewLine -ForegroundColor ("{0}{2}{1}" -f 'Ye','ow','ll')
    &("{1}{0}{2}"-f'Ho','Write-','st') (' '+'t'+'o '+'r'+'e'+'move '+'al'+'l '+'obfuscat'+'io'+'n'+' '+'a'+'nd '+'s'+'t'+'art '+"over.`n "+' '+' '+'E'+'nter') -NoNewLine
    &("{3}{0}{1}{2}"-f 'e','-H','ost','Writ') ("{0}{1}"-f' ','UNDO') -NoNewLine -ForegroundColor ("{2}{1}{0}"-f 'w','llo','Ye')
    &("{0}{1}{2}"-f 'Wri','te-','Host') (' '+'to'+' '+'un'+'do '+'l'+'ast '+"obfuscation.`n "+' '+' '+'Ent'+'er') -NoNewLine
    &("{1}{2}{0}" -f 'Host','Write','-') ("{1}{0}" -f'P',' HEL') -NoNewLine -ForegroundColor ("{1}{2}{0}" -f 'w','Yel','lo')
    &("{0}{1}{2}{3}" -f 'Writ','e','-Hos','t') "/" -NoNewLine
    &("{2}{1}{0}" -f 'e-Host','it','Wr') "?" -NoNewLine -ForegroundColor ("{1}{0}" -f 'llow','Ye')
    &("{2}{0}{1}" -f 't','e-Host','Wri') ("{1}{0}{2}{3}"-f 'help m',' for ','en','u.')
    
    &("{3}{0}{1}{2}" -f 't','e-','Host','Wri') ("`nAnd "+'fina'+'lly'+' '+'th'+'e '+'oblig'+'at'+'ory '+"`"Don't "+'us'+'e '+'thi'+'s '+'f'+'or '+'e'+'vil'+', '+"please`"") -NoNewLine -ForegroundColor ("{1}{0}" -f 'yan','C')
    &("{0}{3}{2}{1}" -f 'W','ost','H','rite-') " :)" -ForegroundColor ("{0}{1}"-f 'Gre','en')
}


Function out-sCr`I`p`TC`ontENTS
{


    Param(
        [Parameter(VAluEFrOMpipelinE = ${TR`Ue})]
        [String]
        ${S`c`RIpTco`Ntents},

        [Switch]
        ${PR`INtWaR`NING}
    )

    If(${ScRiP`T`ContE`N`Ts}."le`NGtH" -gt ${CMd`mAx`Le`NGTh})
    {
        
        ${redA`cTedPRINT`le`NGTH} = ${Cm`DMaxl`ENg`TH}/5
        
        
        ${CM`dlInEw`I`Dth} = (&("{0}{1}"-f 'Get-','Host'))."U`I"."RA`WUI"."B`Uffe`RSiZe"."w`IDtH"
        ${rEDACt`io`NME`SS`AGE} = "<REDACTED: ObfuscatedLength = $($ScriptContents.Length)> "
        ${cENTeRED`R`edACT`ION`mES`SaG`E`STaRT`I`NdEx} = ((${cMDLI`N`EW`iDth}-${rE`dAc`T`Io`NMeS`SAgE}."Len`GTH")/2) - ("{4}{0}{1}{5}{2}{3}" -f'atedC','om','a','nd: ','[*] Obfusc','m')."LE`NGth"
        ${Cu`RREn`T`REdA`CTio`NMeSS`AGESTARTin`DEx} = (${r`Eda`CtEdP`R`inT`LENGtH} % ${C`MDlINeWI`Dth})
        
        If(${cUr`REn`T`ReDACTiONM`Es`S`AgEst`ArT`iN`Dex} -gt ${Ce`Nt`ere`DrE`DACtIOnm`EssaGeS`TARTiN`deX})
        {
            ${REDAC`T`ED`priN`T`le`NgTh} = ${Red`A`CT`eDPRI`NtLEng`Th}-(${CuRre`N`T`REdAcTio`NMEssAgestA`Rt`iNDeX}-${C`E`Nt`E`REdrEDaCT`iON`m`ESsag`es`TArtINd`Ex})
        }
        Else
        {
            ${Redac`T`e`Dpr`In`Tl`EnGTh} = ${REDAC`T`eDP`Ri`Nt`lENg`TH}+(${CEntErEDrEd`AcTIoNmEs`S`A`gEST`ARTi`N`dEX}-${C`UrrenTr`eDa`CtI`onm`EssaGeSTarTIN`DeX})
        }
    
        &("{1}{2}{0}"-f 't','Wr','ite-Hos') ${S`CRipTcO`Ntents}.("{0}{1}" -f 'SubStri','ng').Invoke(0,${rEDaCt`eD`Pr`i`NTl`EN`GtH}) -NoNewLine -ForegroundColor ("{1}{0}" -f'genta','Ma')
        &("{0}{3}{1}{2}" -f 'Wri','-','Host','te') ${redaC`TiO`NmeSs`AGe} -NoNewLine -ForegroundColor ("{0}{1}" -f 'Yel','low')
        &("{2}{0}{1}"-f 'o','st','Write-H') ${scrI`PT`c`oNTEnTS}.("{0}{2}{1}"-f'S','bString','u').Invoke(${ScriP`TconTe`N`Ts}."LEnG`Th"-${redAcTE`DpR`IntlE`NGtH}) -ForegroundColor ("{0}{1}"-f'M','agenta')
    }
    Else
    {
        &("{0}{1}{2}" -f 'Writ','e-Ho','st') ${sCRiptc`on`TE`NtS} -ForegroundColor ("{0}{2}{1}" -f 'M','a','agent')
    }

    
    If(${scRipt`Co`NTE`NTs}."LE`NGTh" -gt ${C`MDmAx`L`EngtH})
    {
        If(${p`sBOUn`d`Pa`Ramet`Ers}[("{0}{3}{1}{2}"-f'P','tWarn','ing','rin')])
        {
            &("{1}{2}{3}{0}" -f 'ost','Wri','te','-H') ("`nWARNING: "+'This'+' '+'comm'+'and '+'ex'+'ce'+'eds '+'the'+' '+'cmd.'+'exe'+' '+'m'+'axim'+'um '+'lengt'+'h '+'o'+'f '+"$CmdMaxLength.") -ForegroundColor ("{0}{1}" -f 'R','ed')
            &("{2}{0}{1}" -f 'te-H','ost','Wri') ("{2}{4}{1}{0}{3}"-f 'th ',' Its leng',' ','is','       ') -NoNewLine -ForegroundColor ("{0}{1}"-f 'Re','d')
            &("{0}{2}{1}"-f'W','ost','rite-H') " $($ScriptContents.Length) " -NoNewLine -ForegroundColor ("{1}{2}{0}"-f 'llow','Y','e')
            &("{3}{1}{2}{0}"-f 'ost','rit','e-H','W') ("{1}{2}{0}"-f 'ters.',' ch','arac') -ForegroundColor ("{1}{0}" -f 'ed','R')
        }
    }
}          


Function s`hOW`-AsCiI`A`RT
{

    [CmdletBinding()] Param (
        [Parameter(PositioN = 0)]
        [ValidateNotNullOrEmpty()]
        [Switch]
        ${rA`NDom}
    )

    
    ${SP`ACING} = "`t"
    ${InVOk`eo`BFUs`c`A`TIOnAS`Cii}  = @()
    ${iNVO`keOBfUscAt`I`o`N`Asc`Ii} += ${sP`A`cIng} + ("{8}{1}{14}{11}{10}{16}{5}{3}{4}{15}{2}{13}{0}{7}{6}{12}{9}" -f'  ','__','  ','  ','    ','__    ',' ','  ','    _','  ','       ','  ','      ','   ','_      ','  ','  ')
    ${In`VoK`EObFUS`c`A`TI`onAsCIi} += ${sPA`Ci`Ng} + ("{13}{16}{14}{4}{11}{2}{8}{3}{1}{10}{6}{7}{9}{12}{5}{15}{0}" -f'        ','_',' ','__',' ____','  ',' ','  ','/_','        ','_','__  /',' ','   ','  ','   ','/  _/___ _')
    ${INVo`KEoBFUsca`TIO`NAs`CiI} += ${S`paCIng} + ((("{10}{6}{5}{3}{13}{7}{9}{0}{11}{4}{2}{12}{8}{1}" -f'1}',' ',' ','/','     ','/ // __ {1} {0} ','  ','/ __ ','      ','{',' ','/ //_/ _ {1}______ ','    ',' '))  -F[chaR]124,[chaR]92)
    ${INVoKeoBF`Usca`Ti`On`A`SCIi} += ${s`pAC`Ing} + ((("{14}{12}{4}{6}{10}{3}{7}{1}{9}{11}{0}{15}{8}{5}{13}{2}"-f ' ','_',' ','/','/ / / ','   ','{0}','  __/_','      ','_','/ / /_/ / ,< ','__/ ',' ','     ',' _/ //',' '))-F  [chAR]124)
    ${INVo`K`e`OB`FusCatIonasCiI} += ${SPac`i`Ng} + ((("{8}{2}{9}{10}{13}{4}{16}{0}{11}{7}{5}{6}{15}{3}{12}{14}{1}"-f'K','      ','____',' _   ','___/_','nV___/ ','        __','wKq','/','__ /_','_J','_J',' ','wK______',' ',' ','/Jw'))."REP`LAcE"(([char]74+[char]119+[char]75),[STRing][char]124)."ReP`l`Ace"(([char]113+[char]110+[char]86),'\'))
    ${InvoK`e`o`BFuSc`AtION`AS`ciI} += ${S`pac`Ing} + ((("{0}{6}{13}{10}{4}{7}{16}{14}{2}{8}{12}{5}{1}{15}{9}{3}{11}" -f'  / _','________ _','_','___  ____','/_  / __/_','_','_','  ','_','_(_)',' ',' ','_',' {0}/','___','/ /','_')) -F[CHAR]92)
    ${iNvOk`E`OBFuScAt`ioNas`Cii} += ${sPA`c`INg} + (' '+'/ '+'/ '+'/ '+'/ '+'__'+' '+('{'+'0}/ ')  -f[cHaR]92+'/_/'+' '+'/ '+'/ '+'/ '+'___'+'/ '+'__'+'_/ '+'__'+' '+(('bJ8/ ')-crEpLAcE([cHAr]98+[cHAr]74+[cHAr]56),[cHAr]96)+'__'+'/ '+'/ '+'_'+'_ '+('aDB/'+' ').("{1}{2}{0}"-f 'LACE','RE','p').Invoke('aDB','\')+'_'+'_ '+'\')
    ${INV`o`k`EoBfuS`c`ATIOnasCiI} += ${SPAci`Ng} + ("{4}{8}{6}{9}{2}{1}{0}{10}{5}{3}{7}" -f '/_/ /','/ ','__','/_/ ','/ /','/ ','/ / __/ /_/ (__  )','/ / / /','_/ / /_',' /',' /_/ ')
    ${I`NV`O`K`Eo`B`F`UScATIOnasciI} += ${S`Pa`CiNg} + ((("{10}{1}{13}{7}{14}{8}{4}{6}{11}{5}{15}{12}{0}{3}{9}{2}{16}" -f'_/','/_.__','V____/_/ /_/','bZ','/____','_','/bZ','Z',',_','V__/_/bZ','bZV____','V','bZV__,','_/_/  b','V__','__/',' '))-RePlACE 'bZV',[cHar]92)
    
    
    If(!${p`Sb`OUNDpA`RametE`RS}[("{0}{1}{2}" -f 'Rand','o','m')])
    {
        ${aRr`O`W`AsCIi}  = @()
        ${aRRo`WAsc`iI} += ((("{0}{1}{2}" -f' ',' {0} ',' ')) -f  [char]124)
        ${ArRO`w`A`sciI} += ((("{1}{2}{0}"-f '4P  ',' ',' 3'))  -rePlACe ([ChAr]51+[ChAr]52+[ChAr]80),[ChAr]124)
        ${A`RROWA`s`CiI} += ((("{1}{0}" -f' / ',' lFT')) -CrepLaCe([ChAr]108+[ChAr]70+[ChAr]84),[ChAr]92)
        ${Arr`oW`ASC`iI} += ("{1}{0}" -f ' V  ',' ')

        
        &("{0}{1}{2}"-f'Wr','ite-H','ost') "`nIEX( ( '36{78Q55@32t61_91{99@104X97{114Q91-32t93}32t93}32t34@110m111@105}115X115-101m114_112@120@69-45{101@107X111m118m110-73Q124Q32X41Q57@51-93Q114_97_104t67t91{44V39Q112_81t109@39}101{99@97}108{112}101}82_45m32_32X52{51Q93m114@97-104{67t91t44t39V98t103V48t39-101}99}97V108}112t101_82_45{32@41X39{41_112t81_109_39m43{39-110t101@112{81t39X43@39t109_43t112_81Q109t101X39Q43m39}114Q71_112{81m109m39@43X39V32Q40}32m39_43_39{114-111m108t111t67{100m110{117Q39_43m39-111-114Q103_101t114@39m43-39{111t70-45}32m41}98{103V48V110Q98t103{48@39{43{39-43{32t98m103_48{111@105t98@103V48-39@43{39_32-32V43V32}32t98t103@48X116m97V99t98X103t48_39V43m39@43-39X43Q39_98@103@48}115V117V102Q98V79m45@98m39Q43{39X103_39X43Q39V48}43-39}43t39}98-103{48V101_107Q39t43X39_111X118X110V39X43}39t98_103{48@43}32_98{103}48{73{98-39@43t39m103_39}43{39{48Q32t39X43X39-32{40V32t41{39Q43V39m98X103{39_43V39{48-116{115Q79{39_43_39}98}103m48{39Q43t39X32X43{32_98@103-39@43m39X48_72-39_43t39V45m39t43Q39_101Q98}103_48-32_39Q43V39V32t39V43}39m43Q32V98X39Q43_39@103_48V39@43Q39@116X73t82V119m98-39{43_39}103Q48X40_46_32m39}40_40{34t59m91@65V114V114@97_121}93Q58Q58V82Q101Q118Q101{114}115_101m40_36_78m55@32t41t32-59{32}73{69V88m32{40t36V78t55}45Q74m111@105-110m32X39V39-32}41'.SpLiT( '{_Q-@t}mXV' ) |ForEach-Object { ([Int]`$_ -AS [Char]) } ) -Join'' )" -ForegroundColor ("{0}{1}" -f'Cy','an')
        &("{0}{1}{2}"-f'Start-','Sle','ep') -Milliseconds 650
        ForEach(${LI`NE} in ${ArRO`Wa`S`Cii}) {&("{0}{1}{2}" -f 'Write-H','os','t') ${lI`NE} -NoNewline; &("{0}{1}{2}"-f 'Wr','it','e-Host') ${lI`NE} -NoNewline; &("{1}{0}{2}" -f'ite-H','Wr','ost') ${li`NE} -NoNewline; &("{1}{2}{0}" -f 'st','Write-H','o') ${li`NE}}
        &("{2}{0}{1}" -f 'art-','Sleep','St') -Milliseconds 100
        
        &("{1}{2}{0}"-f't','Write-H','os') ("`$N7 "+'=['+'ch'+'ar[ '+'] '+'] '+"`"noisserpxE-ekovnI| "+((')93]'+'r'+'ah'+'C[,Z'+'yP'+'pQmZyPe'+'c'+'alpeR-'+' ') -cRePlace ([chAR]90+[chAR]121+[chAR]80),[chAR]39)+' '+('43]'+'r'+'ahC[,m'+'H'+'Db'+'g0m'+'HDe'+'ca'+'lpeR- ')."Re`PlaCe"(([chAR]109+[chAR]72+[chAR]68),[STRInG][chAR]39)+(')fcW)pQ'+'mfcW+fcWne'+'pQf'+'cW'+'+fc'+'Wm+'+'pQmefc'+'W+f'+'c'+'WrGp'+'QmfcW+'+'f'+'cW ')."Repl`ACe"(([chAr]102+[chAr]99+[chAr]87),[sTriNG][chAr]39)+'( '+('{0'+'}'+'+{'+'0}rol'+'o'+'Cdn'+'u{0'+'}+{0}'+'orger{'+'0}'+'+{0}oF-'+' ')  -f[CHAR]39+(')b'+'g0nb'+'g0GCw'+'+G'+'C'+'w+'+' ')."re`PLACe"('GCw',[stRINg][ChAr]39)+('b'+'g0oibg0{'+'0'+'}'+'+'+'{0} ') -f[CHAr]39+' '+'+ '+' '+('b'+'g0ta'+'cbg0{'+'0}+{0}+{0}+{'+'0}bg'+'0sufbO-b'+'{'+'0'+'}+{0}g'+'{'+'0}+{'+'0}0'+'+{'+'0'+'}+{'+'0}bg0e'+'k{'+'0}+{0}o'+'vn{0}+{0}bg0+ ') -f[CHaR]39+('bg'+'0I'+'b{0}+{'+'0}g{'+'0}+{0}'+'0 ')-F [ChaR]39+(('k0'+'c+'+'k0c ')-CrePlAcE 'k0c',[cHAr]39)+'( '+(')cPg+cPg'+'b'+'gcPg+'+'cPg0t'+'sOc'+'Pg+cP'+'g'+'b'+'g0cPg+c'+'Pg'+' ')."ReP`lAce"(([Char]99+[Char]80+[Char]103),[STrinG][Char]39)+'+ '+('b'+'g'+'{0}+{'+'0}0H{'+'0}+{0}-{'+'0'+'}+'+'{0}'+'ebg0 ') -f  [ChAR]39+('{'+'0}+{0} ') -f[cHAr]39+('P'+'2b'+'+P2b+ ')."rEP`lA`cE"(([CHAr]80+[CHAr]50+[CHAr]98),[STRInG][CHAr]39)+('b{0}+{0}'+'g0{0}+{'+'0}tIR'+'wb'+'{0'+'}+'+'{0}'+'g0(.'+' ') -f [chAR]39+"'((`";[Array]::Reverse(`$N7 "+') '+'; '+'IEX'+' '+"(`$N7-Join "+(('5ga'+'5ga ')-CrEPlACe'5ga',[ChaR]39)+')') -ForegroundColor ("{1}{0}{2}"-f 'g','Ma','enta')
        &("{0}{1}{2}" -f 'Start-','Sl','eep') -Milliseconds 650
        ForEach(${li`NE} in ${a`RroWas`CiI}) {&("{1}{0}{2}"-f 'ite-','Wr','Host') ${l`ine} -NoNewline; &("{1}{0}{2}"-f'rite','W','-Host') ${lI`NE} -NoNewline; &("{0}{2}{1}" -f 'Wri','e-Host','t') ${LI`NE}}
        &("{3}{1}{2}{0}" -f'p','tart-S','lee','S') -Milliseconds 100

        &("{1}{2}{0}" -f 'Host','W','rite-') (".(`"wRIt`" "+'+ '+' '+"`"e-H`" "+'+ '+"`"Ost`") "+'( '+' '+"`"I`" "+"+`"nvoke`"+`"-Obfus`"+`"cat`" "+' '+'+ '+' '+"`"io`" "+"+`"n`") "+'-Fo'+'re'+'grou'+'ndCo'+'lor '+'( '+('U8KGreU8K'+'+U8K'+'enU8'+'K)')."r`ePLaCe"(([CHar]85+[CHar]56+[CHar]75),[stRIng][CHar]39)) -ForegroundColor ("{1}{0}" -f'ellow','Y')
        &("{2}{1}{0}" -f'Sleep','rt-','Sta') -Milliseconds 650
        ForEach(${l`INE} in ${aRr`OWASC`Ii}) {&("{3}{2}{1}{0}" -f 'ost','H','-','Write') ${L`iNe} -NoNewline;  &("{1}{0}{2}" -f 'ite-Ho','Wr','st') ${LI`NE}}
        &("{3}{1}{2}{0}"-f'leep','r','t-S','Sta') -Milliseconds 100

        &("{1}{2}{0}"-f 'ost','Write-','H') ('Wri'+'te-'+'Ho'+'st '+"`"Invoke-Obfuscation`" "+'-Fo'+'regroundC'+'o'+'lor '+'Gr'+'een') -ForegroundColor ("{0}{1}"-f 'Whit','e')
        &("{0}{3}{1}{2}"-f 'S','rt-S','leep','ta') -Milliseconds 650
        ForEach(${L`InE} in ${aR`RoW`Asc`ii}) {&("{2}{0}{1}" -f 'o','st','Write-H') ${lI`Ne}}
        &("{1}{2}{0}"-f'Sleep','S','tart-') -Milliseconds 100
        
        
        &("{0}{1}{2}"-f'Start','-Slee','p') -Milliseconds 100
        ForEach(${C`HaR} in [Char[]]("{1}{4}{2}{5}{3}{0}" -f 'ion','In','e-O','scat','vok','bfu'))
        {
            &("{2}{3}{1}{0}" -f'-Sleep','rt','S','ta') -Milliseconds (&("{1}{0}{2}" -f 'et-Ran','G','dom') -Input @(25..200))
            &("{0}{2}{1}"-f 'W','e-Host','rit') ${ch`Ar} -NoNewline -ForegroundColor ("{0}{1}"-f 'Gree','n')
        }
        
        &("{0}{1}{2}"-f'S','tart-','Sleep') -Milliseconds 900
        &("{1}{0}{2}"-f'-Ho','Write','st') ""
        &("{2}{1}{3}{0}" -f 'p','rt','Sta','-Slee') -Milliseconds 300
        &("{1}{2}{0}" -f 'e-Host','Wr','it')

        
        ${RAn`DOm`CoLOR} = (&("{1}{2}{0}" -f'om','Get-R','and') -Input @(("{0}{1}"-f 'Gre','en'),("{1}{0}" -f'n','Cya'),("{0}{1}"-f'Y','ellow')))
        ForEach(${l`inE} in ${INVOKE`ob`FU`s`caTioN`AS`cII})
        {
            &("{2}{1}{0}"-f 'e-Host','it','Wr') ${Li`Ne} -ForegroundColor ${r`And`OM`COLOR}
        }
    }
    Else
    {
        

    }

    
    &("{2}{0}{1}"-f 't','e-Host','Wri') ""
    &("{1}{2}{0}{3}"-f'o','Wr','ite-H','st') ("`tTool "+' '+' '+' '+':'+': '+'Invok'+'e-'+'O'+'bfusc'+'a'+'tion') -ForegroundColor ("{1}{2}{0}" -f'ta','Mag','en')
    &("{2}{0}{1}"-f'Ho','st','Write-') ("`tAuthor "+' '+'::'+' '+'D'+'an'+'iel '+'Bohanno'+'n '+'(D'+'BO)') -ForegroundColor ("{2}{1}{0}" -f 'enta','ag','M')
    &("{2}{1}{3}{0}" -f'Host','t','Wri','e-') ("`tTwitter "+':'+': '+'@dan'+'ielhb'+'o'+'hanno'+'n') -ForegroundColor ("{1}{0}{2}"-f'a','M','genta')
    &("{2}{1}{0}" -f't','os','Write-H') ("`tBlog "+' '+' '+' '+':'+': '+'h'+'ttp://'+'dan'+'ielboha'+'nnon'+'.'+'com') -ForegroundColor ("{0}{1}"-f'Mage','nta')
    &("{1}{2}{0}" -f 'Host','Wr','ite-') ("`tGithub "+' '+'::'+' '+'htt'+'ps://git'+'hub.c'+'om/danielboha'+'n'+'n'+'on/Invoke-Ob'+'fusc'+'ati'+'on') -ForegroundColor ("{1}{0}{2}" -f 'ent','Mag','a')
    &("{2}{1}{0}"-f 'Host','ite-','Wr') ("`tVersion "+':'+': '+'1'+'.8') -ForegroundColor ("{2}{1}{0}"-f'a','t','Magen')
    &("{2}{0}{3}{1}" -f 't','Host','Wri','e-') ("`tLicense "+':'+': '+'A'+'pa'+'che '+'Lice'+'ns'+'e, '+'Ver'+'si'+'on '+'2'+'.0') -ForegroundColor ("{0}{1}" -f'Ma','genta')
    &("{1}{0}{2}"-f '-','Write','Host') "`tNotes   :: If(!`$Caffeinated) {Exit}" -ForegroundColor ("{0}{1}"-f'Magent','a')
}

