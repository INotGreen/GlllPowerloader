 &('SV') ("{0}{1}" -f 'Q','1R')  ( [TYPe]("{0}{2}{1}" -F'Io.','ILe','F')  )  ; 


















Function OU`T-seCU`REsTri`N`gcom`M`And
{


    [CmdletBinding(DEFaULtpaRAmeTeRsETNAME = {"{0}{2}{1}" -f'F','th','ilePa'})] Param (
        [Parameter(POSITiOn = 0, valUefROmPIpeLINe = ${t`Rue}, pARAMetERSEtNAmE = "sC`Ri`Ptb`lOCk")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${sCrIpt`Bl`oCk},

        [Parameter(pOSiTIoN = 0, paRaMetErseTNAME = "fi`l`epath")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${p`AtH},

        [Switch]
        ${NO`E`XiT},

        [Switch]
        ${n`O`pRoFiLe},

        [Switch]
        ${NO`N`INtera`c`TIVe},

        [Switch]
        ${N`oL`OGO},

        [Switch]
        ${W`oW`64},

        [Switch]
        ${c`o`MMAnD},

        [ValidateSet({"{1}{0}"-f 'l','Norma'}, {"{1}{3}{2}{0}" -f 'ed','Mini','z','mi'}, {"{1}{2}{0}" -f 'ized','Maxi','m'}, {"{0}{1}{2}" -f 'Hid','de','n'})]
        [String]
        ${w`I`NDOwS`TYle},

        [ValidateSet({"{1}{0}"-f's','Bypas'}, {"{1}{0}{2}" -f 'nre','U','stricted'}, {"{2}{0}{1}{3}" -f'e','moteSi','R','gned'}, {"{0}{2}{1}" -f 'Al','ned','lSig'}, {"{1}{0}{2}"-f 'estrict','R','ed'})]
        [String]
        ${ExeCu`Ti`oNPO`L`Icy},
        
        [Switch]
        ${P`ASSTh`RU}
    )

    
    If(${Ps`BOU`NDP`A`RAmEteRS}[("{0}{1}"-f 'Pa','th')])
    {
        &("{3}{1}{0}{2}"-f 'l','Chi','dItem','Get-') ${Pa`TH} -ErrorAction ("{0}{1}"-f'S','top') | &("{1}{0}" -f'Null','Out-')
        ${scrIpt`stRI`NG} =   $q1R::("{1}{0}{2}{3}" -f 'dAl','Rea','lTex','t').Invoke((&("{3}{0}{2}{1}"-f 'lve-','th','Pa','Reso') ${P`ATh}))
    }
    Else
    {
        ${ScrI`PTS`T`RinG} = [String]${Scri`p`TbLOCK}
    }

    
    ${S`EcUrE`s`TRIng} = &("{1}{2}{4}{3}{0}"-f'ring','C','onvertT','SecureSt','o-') ${s`c`RI`PtSTRinG} -AsPlainText -Force
    
    
    ${k`EYlEn`Gth} = &("{1}{2}{0}{3}"-f'd','Get-R','an','om') @(16,24,32)
    
    
    Switch(&("{1}{0}{2}" -f 'Rando','Get-','m') -Minimum 1 -Maximum 3)
    { 
        1 {
            
            ${SeC`URE`stR`INg`KeY} = @()
            For(${I}=0; ${i} -lt ${kEy`LE`N`gTh}; ${i}++) {
                ${seCuR`Es`TRI`NGKeY} += &("{1}{0}{2}"-f 't-R','Ge','andom') -Minimum 0 -Maximum 256
            }
            ${Sec`U`R`E`stRiN`gkEYsTr} = ${SE`c`UR`eSt`RiNg`KeY} -Join ','
          }
        2 {
            
            
            ${L`O`w`erBOUnD} = (&("{0}{1}{2}" -f'Get','-Ra','ndom') -Minimum 0 -Maximum (256-${kEyLE`N`GTH}))
            ${Up`PERBOu`Nd} = ${LO`wERbOu`Nd} + (${KeylE`N`GTH} - 1)
            Switch(&("{2}{0}{1}" -f'd','om','Get-Ran') @(("{0}{1}" -f 'Asc','ending'),("{0}{1}{2}" -f 'De','scendi','ng')))
            {
                ("{0}{2}{1}" -f'Ascen','g','din')  {${sEcU`REStr`I`NGK`ey} = (${lO`w`eRbOU`Nd}..${uP`PerBOu`ND}); ${S`EcuRe`S`TRINGKEyStr} = "($LowerBound..$UpperBound)"}
                ("{1}{0}{3}{2}" -f 'end','Desc','ng','i') {${SEcUresTrI`Ng`KEy} = (${UpPe`RbOU`Nd}..${lOWe`RBOu`Nd}); ${S`eCure`sTring`ke`YS`TR} = "($UpperBound..$LowerBound)"}
                ("{2}{0}{1}" -f'aul','t','def') {&("{3}{0}{2}{1}"-f't','-Error','e','Wri') ("{6}{11}{1}{13}{4}{0}{10}{9}{12}{8}{3}{7}{5}{2}" -f'g','invalid ar','k.','or switch ','rin','loc','A','b',' was generated f','opti',' ','n ','on','ray orde'); Exit;}
            }
          }
        ("{0}{1}" -f 'defau','lt') {&("{2}{1}{0}"-f'or','rite-Err','W') ("{9}{7}{6}{1}{10}{4}{0}{8}{13}{5}{3}{12}{2}{11}"-f ' gener','om number ',' blo','it','s','w','nd',' ra','ated for','An invalid','wa','ck.','ch',' s'); Exit;}
    }
    
    
    ${SecURESt`Ri`Ngt`EXT} = ${S`E`c`UREsTri`NG} | &("{3}{2}{6}{0}{5}{7}{4}{1}" -f 'u','ring','onvertFrom-Se','C','t','r','c','eS') -Key ${Sec`UrE`s`TRiNgKEy}

    
    ${k`EY} = (&("{2}{1}{3}{0}"-f 'ndom','e','G','t-Ra') -Input @(("{2}{1}{0}" -f'y ','-Ke',' '),("{0}{1}"-f ' -K','e '),("{0}{1}"-f' -K',' ')))

    
    ${pTRt`OS`T`RIngAUto} = (&("{2}{1}{0}"-f'Random','t-','Ge') -Input @(("{0}{2}{1}{3}" -f 'P','StringAu','trTo','to'),(((("{6}{1}{5}{3}{9}{2}{8}{7}{0}{11}{10}{12}{4}" -f'al','R','p','In',')[','untime.','([','s.Marsh','Service','tero','em','].GetM','bers('))) + (&("{1}{2}{0}"-f'Random','G','et-') -Input @(3,5)) + ((("{2}{1}{0}{3}"-f'me)','.Na',']','.Invoke'))))))
    ${Ptr`T`OStr`IngunI}  = (&("{1}{2}{0}{3}"-f 'o','Get','-Rand','m') -Input @(("{0}{2}{1}" -f 'PtrToStri','Uni','ng') ,(((("{8}{3}{11}{4}{10}{13}{5}{14}{6}{9}{12}{2}{0}{7}{1}" -f'mb','s()[','Me','un','me.Intero','es.Ma','a','er','([R','l]','pServi','ti','.Get','c','rsh'))) + (&("{0}{1}{2}" -f'Get-Ran','d','om') -Input @(2,4)) + ((("{1}{0}{2}" -f 'e).Invok','].Nam','e'))))))
    ${P`TrtO`S`TrIng`AnsI} = (&("{1}{2}{3}{0}" -f 'om','G','et','-Rand') -Input @(("{2}{0}{1}"-f'ngAns','i','PtrToStri'),(((("{6}{3}{8}{2}{0}{1}{5}{4}{7}" -f'r','shal].GetM','es.Ma','Runtime.Int','mbe','e','([','rs()[','eropServic'))) + (&("{0}{2}{1}"-f 'Ge','dom','t-Ran') -Input @(0,1)) + ((("{0}{4}{3}{1}{2}"-f '].','e).','Invoke','am','N'))))))
    
    
    
    
    

    
    ${pTRTOsTRIngA`U`TO}                  = ([Char[]]"[Runtime.InteropServices.Marshal]::$PtrToStringAuto("                 | &("{0}{3}{2}{1}"-f'F','-Object','h','orEac') {${C`HaR} = ${_}.("{1}{2}{0}"-f 'ng','To','Stri').Invoke().("{0}{1}{2}"-f'To','Low','er').Invoke(); If(&("{2}{0}{1}"-f't-R','andom','Ge') -Input @(0..1)) {${C`HAR} = ${cH`AR}.("{0}{1}"-f 'ToUpp','er').Invoke()} ${cH`Ar}}) -Join ''
    ${PTR`TO`sTR`inGUNi}                   = ([Char[]]"[Runtime.InteropServices.Marshal]::$PtrToStringUni("                  | &("{3}{0}{1}{2}" -f 'orEach','-Obj','ect','F') {${Ch`Ar} = ${_}.("{0}{1}{2}"-f 'To','S','tring').Invoke().("{1}{2}{0}"-f'er','ToL','ow').Invoke(); If(&("{2}{1}{0}" -f 'andom','-R','Get') -Input @(0..1)) {${C`haR} = ${CH`AR}.("{1}{0}"-f'oUpper','T').Invoke()} ${c`hAR}}) -Join ''
    ${PTRT`oStRi`NGANsi}                  = ([Char[]]"[Runtime.InteropServices.Marshal]::$PtrToStringAnsi("                 | &("{1}{0}{2}{3}" -f 'orEa','F','ch-O','bject') {${C`har} = ${_}.("{1}{2}{0}"-f'g','ToStri','n').Invoke().("{0}{1}"-f 'T','oLower').Invoke(); If(&("{1}{3}{0}{2}" -f'o','Get','m','-Rand') -Input @(0..1)) {${c`Har} = ${ch`Ar}.("{1}{0}{2}"-f 'oUppe','T','r').Invoke()} ${C`har}}) -Join ''
    ${pTrtoSt`RI`NG`Bs`Tr}                  = ([Char[]]((("{7}{1}{3}{2}{4}{10}{9}{6}{0}{5}{8}{11}" -f 'l]::PtrTo','Runtim','.Int','e','eropServ','S','a','[','tringBST','h','ices.Mars','R(')))                  | &("{1}{3}{0}{2}" -f 'rEach-Obj','F','ect','o') {${cH`AR} = ${_}.("{0}{1}{2}"-f'ToStri','n','g').Invoke().("{1}{0}{2}"-f'oL','T','ower').Invoke(); If(&("{1}{2}{3}{0}" -f'dom','G','et-','Ran') -Input @(0..1)) {${cH`AR} = ${CH`Ar}.("{0}{1}"-f 'To','Upper').Invoke()} ${ch`AR}}) -Join ''
    ${secUr`eS`TRi`NgTOB`stR}               = ([Char[]]((("{3}{6}{9}{1}{8}{0}{7}{5}{15}{2}{10}{12}{14}{16}{13}{4}{11}"-f'eropS','In','.Mar','[','ST','rvice','Runtime','e','t','.','sh','R(','al]::SecureStr','B','in','s','gTo')))               | &("{0}{1}{3}{4}{2}" -f 'F','or','ct','Each','-Obje') {${Ch`AR} = ${_}.("{0}{1}"-f'ToStr','ing').Invoke().("{0}{1}" -f 'To','Lower').Invoke(); If(&("{1}{2}{0}"-f 'Random','G','et-') -Input @(0..1)) {${CH`Ar} = ${c`har}.("{0}{1}{2}"-f 'ToUp','pe','r').Invoke()} ${C`hAR}}) -Join ''
    ${S`EC`UrEsTRiNgTo`gl`obAlALLOcUNIcO`de} = ([Char[]]((("{10}{11}{1}{8}{14}{15}{2}{9}{13}{6}{16}{3}{0}{12}{17}{4}{7}{5}"-f 'lAllo','nterop','ic','StringToGloba','icod','(',']::Secu','e','S','e','[Runtim','e.I','cU','s.Marshal','er','v','re','n'))) | &("{3}{1}{0}{2}" -f'rEach-O','o','bject','F') {${C`hAr} = ${_}.("{0}{1}" -f 'ToSt','ring').Invoke().("{1}{0}"-f 'r','ToLowe').Invoke(); If(&("{1}{0}{2}"-f'-','Get','Random') -Input @(0..1)) {${cH`AR} = ${C`HAR}.("{1}{0}"-f'per','ToUp').Invoke()} ${c`har}}) -Join ''
    ${SE`c`UReSTrin`gtOgLo`Ba`lAlLocaNsI}    = ([Char[]]((("{6}{13}{10}{7}{16}{15}{11}{3}{4}{12}{8}{0}{5}{14}{17}{9}{2}{1}" -f 'lAl','(','i','eS','trin','l','[Runtime.Int','ervi','loba','Ans','pS','r','gToG','ero','o','s.Marshal]::Secu','ce','c')))    | &("{3}{2}{1}{0}"-f't','-Objec','Each','For') {${C`HaR} = ${_}.("{0}{1}" -f'ToStrin','g').Invoke().("{2}{1}{0}"-f'r','Lowe','To').Invoke(); If(&("{1}{0}{2}" -f'-Ra','Get','ndom') -Input @(0..1)) {${Ch`AR} = ${c`HaR}.("{1}{0}{2}" -f'Upp','To','er').Invoke()} ${ch`Ar}}) -Join ''
    ${n`EW`oBJecT}                        = ([Char[]]("{0}{2}{1}"-f 'New','ect ','-Obj')                                                          | &("{0}{3}{2}{1}{4}"-f 'For','je','h-Ob','Eac','ct') {${c`hAR} = ${_}.("{1}{2}{0}"-f'ing','ToSt','r').Invoke().("{0}{1}" -f 'ToLow','er').Invoke(); If(&("{1}{3}{2}{0}"-f'm','G','do','et-Ran') -Input @(0..1)) {${Ch`AR} = ${Ch`Ar}.("{0}{1}{2}"-f'ToUp','p','er').Invoke()} ${c`hAR}}) -Join ''
    ${pscred`E`N`Ti`AL}                     = ([Char[]]("{6}{4}{2}{1}{5}{3}{0}" -f'ial ','mation.PSCre','.Auto','nt','nagement','de','Ma')                                  | &("{1}{2}{0}" -f 'ect','ForEa','ch-Obj') {${C`hAR} = ${_}.("{0}{2}{1}" -f'To','ing','Str').Invoke().("{1}{0}{2}"-f 'w','ToLo','er').Invoke(); If(&("{0}{1}{2}" -f 'Get','-','Random') -Input @(0..1)) {${C`haR} = ${c`Har}.("{0}{2}{1}"-f 'T','r','oUppe').Invoke()} ${c`har}}) -Join ''
    ${CoN`VertToSE`CurE`sTri`NG}            = ([Char[]]("{4}{6}{1}{0}{5}{3}{2}" -f 'SecureS','o-','g','rin','C','t','onvertT')                                               | &("{0}{3}{4}{1}{2}" -f 'Fo','e','ct','r','Each-Obj') {${CH`AR} = ${_}.("{1}{0}{2}"-f'i','ToStr','ng').Invoke().("{1}{0}"-f 'ower','ToL').Invoke(); If(&("{2}{0}{1}"-f 'Ra','ndom','Get-') -Input @(0..1)) {${CH`Ar} = ${c`HAr}.("{0}{1}{2}" -f'T','oUppe','r').Invoke()} ${CH`AR}}) -Join ''
    ${K`eY}                              = ([Char[]]${k`Ey}                                                                   | &("{4}{3}{2}{1}{0}"-f 't','ec','j','Each-Ob','For') {${C`HAR} = ${_}.("{1}{2}{0}" -f'g','T','oStrin').Invoke().("{1}{0}{2}"-f'Lo','To','wer').Invoke(); If(&("{0}{1}{3}{2}" -f 'Ge','t','Random','-') -Input @(0..1)) {${ch`Ar} = ${c`HaR}.("{1}{0}" -f'Upper','To').Invoke()} ${Ch`Ar}}) -Join ''
    ${G`e`TNetWoRK`CrEd`entiAl}             = ([Char[]]((("{1}{4}{7}{9}{5}{8}{0}{3}{2}{6}"-f 'ede',').','.Pas','ntial()','Ge','rk','sword','t','Cr','Netwo')))                                    | &("{1}{0}{3}{2}"-f'ach','ForE','ct','-Obje') {${c`har} = ${_}.("{1}{0}" -f'ing','ToStr').Invoke().("{0}{1}{2}" -f'To','Lowe','r').Invoke(); If(&("{1}{0}{2}{3}"-f'-','Get','Rando','m') -Input @(0..1)) {${cH`Ar} = ${Ch`AR}.("{1}{0}{2}"-f'oU','T','pper').Invoke()} ${CH`AR}}) -Join ''

    
    ${c`onVerttOs`EcUres`T`Ri`Ng`SynT`Ax} = '$(' + "'$SecureStringText'" + ' '*(&("{2}{0}{1}"-f't','-Random','Ge') -Input @(0,1)) + '|' + ' '*(&("{1}{0}{2}" -f't-Ra','Ge','ndom') -Input @(0,1)) + ${COnvERtTO`S`eC`U`ReStRING} + ' '*(&("{1}{0}{2}{3}"-f 'e','G','t-Ra','ndom') -Input @(0,1)) + ${k`ey} + ' '*(&("{3}{2}{1}{0}" -f 'om','nd','-Ra','Get') -Input @(0,1)) + ${S`ecURe`stRin`gK`EyS`TR} + ')' + ' '*(&("{2}{0}{1}" -f'do','m','Get-Ran') -Input @(0,1)) + ')' + ' '*(&("{1}{2}{0}"-f 'Random','Get','-') -Input @(0,1)) + ')' + ' '*(&("{1}{2}{3}{0}" -f'm','Get','-Rand','o') -Input @(0,1)) + ')'

    
    ${n`eWsCrI`p`TARRAY} = @()
    ${nEw`S`cR`iPtArRaY} += '(' + ' '*(&("{0}{2}{1}"-f'G','om','et-Rand') -Input @(0,1)) + ${ptrt`OsTr`i`N`Ga`UTO} + ' '*(&("{0}{1}{2}"-f 'Get-R','a','ndom') -Input @(0,1)) + ${SEc`Ur`esT`RiN`Gto`BstR}               + ' '*(&("{1}{0}{2}" -f 'ando','Get-R','m') -Input @(0,1)) + ${cONvErTTOS`eCUReS`T`R`I`NG`SYntax}
    ${NeWsC`Ri`PtAR`R`AY} += '(' + ' '*(&("{1}{3}{0}{2}"-f 'n','G','dom','et-Ra') -Input @(0,1)) + ${P`TR`TOSTRIng`UNI}  + ' '*(&("{0}{1}{2}" -f 'Get','-Rando','m') -Input @(0,1)) + ${se`c`UReSTRi`NgTOG`lobA`lal`LOCuNiCodE} + ' '*(&("{0}{1}{2}" -f 'Get','-Ran','dom') -Input @(0,1)) + ${CO`NVE`R`Tt`osec`U`RestRin`G`sYntAx}
    ${ne`wsc`Rip`TArRAY} += '(' + ' '*(&("{1}{2}{0}"-f'm','Get','-Rando') -Input @(0,1)) + ${ptr`Tost`RI`NganSI} + ' '*(&("{0}{1}{2}" -f'Get-','Rando','m') -Input @(0,1)) + ${sE`cUReST`RingTo`g`lo`BALallOCanSi}    + ' '*(&("{1}{0}{2}" -f 't-Ran','Ge','dom') -Input @(0,1)) + ${CON`VeR`TT`oSEcuRe`STri`N`g`synTaX}
    ${NEW`s`CriPTA`Rr`Ay} += '(' + ' '*(&("{0}{1}{2}"-f 'G','et-Rando','m') -Input @(0,1)) + ${ptrt`osTRi`N`gbSTR} + ' '*(&("{0}{2}{1}" -f'Get','Random','-') -Input @(0,1)) + ${s`Ecur`ES`TrInG`TOBS`TR}               + ' '*(&("{1}{0}{2}"-f 'a','Get-R','ndom') -Input @(0,1)) + ${C`O`NVE`RTT`oSECuresTRiN`GS`YNt`Ax}
    ${New`S`cR`iptaRRAy} += '(' + ' '*(&("{2}{1}{3}{0}" -f'dom','t-R','Ge','an') -Input @(0,1)) + ${nE`wobJE`ct} + ' '*(&("{0}{1}{2}"-f 'Get-Ran','d','om') -Input @(0,1)) + ${P`s`cREd`enTIAL} + ' '*(&("{1}{2}{0}{3}" -f'd','Get','-Ran','om') -Input @(0,1)) + "' '" + ',' + ' '*(&("{3}{2}{1}{0}"-f 'ndom','Ra','-','Get') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}"-f 'dom','an','Get-R') -Input @(0,1)) + "'$SecureStringText'" + ' '*(&("{2}{1}{0}"-f 'ndom','t-Ra','Ge') -Input @(0,1)) + '|' + ' '*(&("{2}{0}{1}"-f 't-R','andom','Ge') -Input @(0,1)) + ${cO`N`VErtTOsECUr`EsTRI`NG} + ' '*(&("{1}{2}{0}" -f'm','Get','-Rando') -Input @(0,1)) + ${k`eY} + ' '*(&("{0}{1}{2}"-f'Ge','t-Rando','m') -Input @(0,1)) + ${SE`cUReS`TR`in`gkEYs`TR} + ' '*(&("{1}{0}{2}{3}"-f 't-R','Ge','an','dom') -Input @(0,1)) + ')' + ' '*(&("{1}{2}{3}{0}"-f 'om','G','et','-Rand') -Input @(0,1)) + ${GE`TNEtWo`RKCRe`DE`NTI`Al}
    
    ${NEW`scRi`Pt} = (&("{2}{0}{1}"-f 't-Ran','dom','Ge') -Input ${Ne`wscRi`P`T`ARray})

    
    
    ${I`NVOkEEX`PREsS`IOnSyNt`AX}  = @()
    ${InvO`kEeXpr`eSSi`o`N`sy`NtAX} += (&("{0}{2}{1}"-f'Get-','andom','R') -Input @('IEX',("{0}{3}{2}{1}"-f'Invoke-','ession','xpr','E')))
    
    
    
    ${InvoC`ATioNO`peRa`T`oR} = (&("{2}{0}{1}" -f 'et-Ran','dom','G') -Input @('.','&')) + ' '*(&("{0}{2}{1}"-f'Get-','andom','R') -Input @(0,1))
    ${Inv`oKeEx`P`Ression`S`YNTAX} += ${in`VoCaT`Ion`OPER`AToR} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${In`VokEeXP`Re`SsiOnSY`NTAx} += ${i`NVO`cAtI`OnoP`eraTOr} + ('( '+"`$PSHome[") + (&("{2}{1}{0}{3}" -f'do','n','Get-Ra','m') -Input @(4,21)) + "]+`$PSHome[" + (&("{2}{3}{1}{0}" -f 'm','o','Get','-Rand') -Input @(30,34)) + (((("{1}{0}{2}" -f 'r5',']+4r5x4',')'))-CREplAcE '4r5',[CHaR]39))
    ${iNV`OkE`Expre`ss`i`O`NSYNTAX} += ${i`N`Voc`A`TI`OnoPeRaTor} + ('( '+"`$env:ComSpec[4,") + (&("{0}{1}{2}" -f'Ge','t-Rand','om') -Input @(15,24,26)) + (((("{3}{2}{1}{0}{4}"-f 'inrz','o','J',',25]-','FrzF)'))  -CrEpLACE 'rzF',[cHAr]39))
    ${I`NVok`EExprE`sSi`o`NSYnt`Ax} += ${iNvOc`AtIoNO`per`A`ToR} + "((" + (&("{2}{0}{1}" -f 'e','t-Random','G') -Input @(("{1}{0}{3}{2}" -f 'a','Get-V','able','ri'),'GV',("{2}{1}{0}" -f'e','l','Variab'))) + ((("{9}{6}{7}{0}{3}{4}{5}{2}{1}{8}"-f'ame[3,','omeome','n','1','1',',2]-Joi','me*mdr*ome',').N',')',' o'))."RE`P`LACE"('ome',[striNG][chAr]39))
    ${iNV`OKee`xpR`e`s`siOn`synTAX} += ${inVo`cA`Ti`ONo`peRaTor} + "( " + (&("{0}{1}{2}{3}" -f 'Get-','R','an','dom') -Input @(((('74'+'MVer'+'bosePreference'+'.ToStrin'+'g'+'()')  -rEpLace '74M',[chAr]36)),(('(['+'Stri'+'n'+'g]'+'{0}V'+'erb'+'osePreference)') -f [ChAr]36))) + (((("{6}{5}{4}{0}{2}{1}{3}"-f'-Join','r6O','6O','r)','rx6Or',']+6O','[1,3'))-crePlace '6Or',[ChAr]39))
    
    

    
    ${In`VO`K`eE`X`pREssion} = (&("{2}{1}{0}"-f 'ndom','et-Ra','G') -Input ${I`NVO`keeXprEsSio`Nsy`N`T`AX})

    
    ${INv`OK`E`EX`PRESS`Ion} = ([Char[]]${i`NV`oKEEX`pREss`i`On} | &("{3}{0}{2}{1}" -f 'Each-','ect','Obj','For') {${CH`AR} = ${_}.("{0}{1}{2}"-f'T','oSt','ring').Invoke().("{0}{2}{1}" -f 'To','r','Lowe').Invoke(); If(&("{2}{1}{0}"-f 'Random','et-','G') -Input @(0..1)) {${c`HAr} = ${c`HAr}.("{0}{1}" -f 'To','Upper').Invoke()} ${cH`Ar}}) -Join ''
    
    
    ${InvO`k`eOp`TIO`NS}  = @()
    ${iNv`O`K`eOPti`onS} += ' '*(&("{2}{1}{0}" -f'ndom','et-Ra','G') -Input @(0,1)) + ${INvOk`EeX`Pres`si`On} + ' '*(&("{0}{2}{1}" -f 'Get','m','-Rando') -Input @(0,1)) + '(' + ' '*(&("{0}{2}{1}"-f'G','dom','et-Ran') -Input @(0,1)) + ${ne`W`script} + ' '*(&("{1}{3}{2}{0}" -f 'dom','G','an','et-R') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}" -f'om','-Rand','Get') -Input @(0,1))
    ${iNVOKeOP`T`I`OnS} += ' '*(&("{2}{0}{1}"-f '-Rando','m','Get') -Input @(0,1)) + ${N`Ews`cRipT} + ' '*(&("{2}{1}{0}{3}" -f'Ran','et-','G','dom') -Input @(0,1)) + '|' + ' '*(&("{0}{1}{2}"-f 'Ge','t-Rand','om') -Input @(0,1)) + ${iNVOkE`expRes`sI`oN}
    
    ${ne`WsC`R`iPt} = (&("{1}{2}{0}"-f'dom','Get','-Ran') -Input ${invo`KE`Opt`IONs})

    
    If(!${pSBo`UNDp`A`RAM`EteRs}[("{0}{1}" -f'Pass','Thru')])
    {
        
        ${pO`w`e`RsHEllfLaGS} = @()

        
        
        ${C`oM`MANDL`inEOptioNs} = &("{1}{2}{0}" -f'w-Object','N','e') ("{2}{1}{0}"-f 'ing[]','tr','S')(0)
        If(${ps`B`OuN`dpaRAMe`T`ERS}[("{0}{1}{2}"-f'N','oEx','it')])
        {
          ${FUl`l`Arg`UmeNT} = ("{1}{0}" -f'xit','-NoE');
          ${co`m`MandLiNEopt`Ions} += ${FullAr`GU`mE`Nt}.("{2}{0}{1}"-f 'St','ring','Sub').Invoke(0,(&("{0}{2}{1}" -f 'G','t-Random','e') -Minimum 4 -Maximum (${fULLarGu`Me`Nt}."Le`NgtH"+1)))
        }
        If(${Psbo`UNd`PaRa`mete`RS}[("{1}{0}" -f'le','NoProfi')])
        {
          ${fulLA`RG`UM`ENT} = ("{0}{1}{3}{2}"-f '-NoP','r','file','o');
          ${co`mmANdlIN`e`OP`TI`ONs} += ${f`ULlargu`M`ENT}.("{2}{0}{1}" -f'i','ng','SubStr').Invoke(0,(&("{1}{0}{2}" -f'-Ran','Get','dom') -Minimum 4 -Maximum (${fULlaR`GUM`eNT}."l`EN`gtH"+1)))
        }
        If(${P`SBoUN`DPARA`mETeRS}[("{0}{2}{3}{1}{4}"-f'NonI','v','ntera','cti','e')])
        {
          ${fu`lL`ARGuM`eNT} = ("{4}{2}{1}{0}{3}" -f 'v','cti','ntera','e','-NonI');
          ${coMmaN`DL`inEOp`TiONS} += ${fu`l`LArGum`ENT}.("{1}{2}{3}{0}"-f 'g','Sub','S','trin').Invoke(0,(&("{1}{0}{2}{3}" -f 't-','Ge','Rando','m') -Minimum 5 -Maximum (${fuL`larguMe`NT}."lEN`G`Th"+1)))
        }
        If(${pSb`o`Un`Dp`AraMeTErs}[("{0}{1}"-f 'No','Logo')])
        {
          ${FUlLa`R`gUmeNt} = ("{2}{0}{1}" -f'g','o','-NoLo');
          ${COmm`A`NdL`iNE`OPtIo`NS} += ${FUlL`Argu`m`eNT}.("{0}{1}{2}"-f'SubStr','in','g').Invoke(0,(&("{2}{0}{1}"-f'do','m','Get-Ran') -Minimum 4 -Maximum (${FUllAR`gum`E`Nt}."lE`N`Gth"+1)))
        }
        If(${pS`Bou`NDPARaM`Et`eRs}[("{2}{1}{3}{0}"-f 'dowStyle','i','W','n')] -OR ${wI`NdOW`sstY`Le})
        {
            ${FuLL`ArG`U`MeNT} = ("{3}{1}{2}{0}" -f'le','indowSt','y','-W')
            If(${W`Ind`OWsst`Yle}) {${aRgUm`ENt`VaL`UE} = ${WindoW`SSTY`lE}}
            Else {${ARguMe`NTv`AL`Ue} = ${pSboun`DPa`RamET`Ers}[("{1}{2}{0}"-f'dowStyle','W','in')]}

            
            Switch(${AR`GU`ment`Val`Ue}.("{0}{2}{1}"-f'ToLow','r','e').Invoke())
            {
                ("{0}{1}" -f 'n','ormal')    {If(&("{0}{1}{2}"-f 'G','et-','Random') -Input @(0..1)) {${a`R`GUmen`TvAluE} = (&("{1}{2}{0}" -f'm','Get-Ran','do') -Input @('0','n','no','nor',("{1}{0}" -f 'orm','n'),("{0}{1}" -f 'n','orma')))}}
                ("{0}{2}{1}" -f'hid','en','d')    {If(&("{1}{0}{2}"-f 't-Ran','Ge','dom') -Input @(0..1)) {${ar`GuMen`T`VAL`Ue} = (&("{2}{0}{1}"-f't-Ra','ndom','Ge') -Input @('1','h','hi','hid',("{0}{1}" -f 'hi','dd'),("{0}{1}"-f'h','idde')))}}
                ("{2}{0}{1}" -f'nimiz','ed','mi') {If(&("{2}{0}{1}" -f '-','Random','Get') -Input @(0..1)) {${a`RgUmEn`TvaluE} = (&("{0}{2}{1}" -f'Get-','m','Rando') -Input @('2','mi','min',("{0}{1}" -f 'mi','ni'),("{1}{0}"-f'm','mini'),("{0}{1}" -f 'm','inimi'),("{2}{1}{0}"-f 'z','inimi','m'),("{0}{1}{2}"-f 'm','inim','ize')))}}
                ("{2}{1}{3}{0}"-f 'ized','axi','m','m') {If(&("{0}{1}{2}"-f 'Get-Ran','do','m') -Input @(0..1)) {${arGU`m`ENtV`A`luE} = (&("{1}{2}{0}" -f'm','Get-Ra','ndo') -Input @('3','ma','max',("{0}{1}" -f'm','axi'),("{0}{1}" -f'maxi','m'),("{0}{1}"-f'm','aximi'),("{0}{2}{1}" -f 'max','z','imi'),("{2}{0}{1}"-f'ax','imize','m')))}}
                ("{1}{0}" -f'ault','def') {&("{1}{2}{0}{3}" -f'rro','Write-','E','r') ('An'+' '+'inval'+'id'+' '+"`$ArgumentValue "+'value'+' '+"($ArgumentValue) "+'was'+' '+'pass'+'ed '+'to'+' '+'switch'+' '+'block'+' '+'for'+' '+'Out-Powe'+'r'+'Shell'+'Launch'+'er.'); Exit;}
            }

            ${P`oWE`Rsh`eL`lfla`GS} += ${ful`L`Argu`meNt}.("{1}{2}{0}"-f'g','Su','bStrin').Invoke(0,(&("{0}{1}{2}" -f'Ge','t-R','andom') -Minimum 2 -Maximum (${fUllaR`GUM`ent}."Len`GtH"+1))) + ' '*(&("{1}{0}{2}"-f 'o','Get-Rand','m') -Minimum 1 -Maximum 3) + ${ARGU`men`T`ValUE}
        }
        If(${PS`Bo`UNdPARAm`E`TE`RS}[("{3}{2}{0}{1}"-f 'nPoli','cy','io','Execut')] -OR ${EXe`cu`T`IO`NPoLiCY})
        {
            ${fU`Ll`ARG`U`MENT} = ("{4}{3}{0}{1}{2}"-f'ionPol','ic','y','ut','-Exec')
            If(${eXeCU`TI`onp`oli`CY}) {${aR`GU`meNtvaLuE} = ${ExEcUtI`o`NpOLi`cY}}
            Else {${Ar`gu`ME`NTvalUe} = ${PS`Boundp`A`RA`mEtERs}[("{3}{4}{1}{2}{0}"-f'licy','cutio','nPo','Ex','e')]}
            
            ${E`XEC`UtiO`N`poLIcYF`la`gs} = @()
            ${e`XeCuTIO`N`po`LiCyFL`A`gs} += '-EP'
            For(${ind`EX}=3; ${i`Nd`eX} -le ${fUL`l`ArGU`MENT}."Le`NGTH"; ${i`NDex}++)
            {
                ${eX`Ec`U`Ti`o`NpOlICyFL`AGs} += ${FU`lL`Ar`gum`ent}.("{0}{1}{2}" -f'Su','bSt','ring').Invoke(0,${i`NdeX})
            }
            ${e`xECutI`onP`o`lICyF`lag} = &("{1}{0}{2}" -f'et-Rando','G','m') -Input ${exECuTiOn`Po`liCyfla`Gs}
            ${PoWEr`SHE`l`LFlAGs} += ${eX`ECUt`IoNPo`l`ICYfL`AG} + ' '*(&("{1}{0}{2}"-f 'nd','Get-Ra','om') -Minimum 1 -Maximum 3) + ${arg`Um`e`N`TvALuE}
        }
        
        
        
        If(${cO`mmandLIn`e`opTIOnS}."coU`NT" -gt 1)
        {
            ${c`omM`An`Dl`iN`eO`pTionS} = &("{2}{0}{1}" -f'-Ran','dom','Get') -InputObject ${COMmANDL`i`NE`optiOns} -Count ${cOMMaN`dLin`Eopti`oNS}."Co`UnT"
        }

        
        If(${PSBoUndPAr`AME`T`ers}[("{1}{0}"-f'ommand','C')])
        {
            ${F`UlLaRgume`Nt} = ("{0}{1}{2}"-f'-','Co','mmand')
            ${cO`mm`ANd`LI`NeOptio`NS} += ${F`U`LLarg`U`MENT}.("{2}{1}{0}"-f'ng','ri','SubSt').Invoke(0,(&("{1}{2}{0}"-f'ndom','G','et-Ra') -Minimum 2 -Maximum (${f`U`LLArg`U`menT}."LeNG`Th"+1)))
        }

        
        For(${i}=0; ${i} -lt ${po`WER`S`HELLF`LaGs}."CoU`Nt"; ${I}++)
        {
            ${poW`E`RSh`eLLf`LagS}[${I}] = ([Char[]]${PO`wER`s`HelLflAgs}[${I}] | &("{2}{0}{1}"-f 'c','h-Object','ForEa') {${ch`Ar} = ${_}.("{0}{1}" -f 'To','String').Invoke().("{0}{1}" -f'ToLow','er').Invoke(); If(&("{2}{0}{1}"-f't-','Random','Ge') -Input @(0..1)) {${c`har} = ${c`hAR}.("{0}{1}{2}" -f'T','o','Upper').Invoke()} ${CH`AR}}) -Join ''
        }

        
        ${ComMANd`L`in`EOPTIoNS} = (${COMMa`NdLINEop`TIo`Ns} | &("{2}{0}{1}"-f'rEach-Obj','ect','Fo') {${_} + " "*(&("{2}{1}{0}" -f 'dom','t-Ran','Ge') -Minimum 1 -Maximum 3)}) -Join ''
        ${c`OmMAnD`LiNE`oPtIONS} = " "*(&("{2}{1}{0}" -f'm','ndo','Get-Ra') -Minimum 0 -Maximum 3) + ${COMMaN`d`l`In`EOPtions} + " "*(&("{1}{0}{2}" -f 'e','G','t-Random') -Minimum 0 -Maximum 3)

        
        If(${PsBo`U`N`DPARAMet`ERs}[("{1}{0}"-f'w64','Wo')])
        {
            ${co`mMA`Nd`LinEOutp`UT} = "C:\WINDOWS\SysWOW64\WindowsPowerShell\v1.0\powershell.exe $($CommandlineOptions) `"$NewScript`" "
        }
        Else
        {
            
            
            ${cOm`mAn`DLIne`oUtP`UT} = "powershell $($CommandlineOptions) `"$NewScript`" "
        }

        
        ${cmDM`A`XlEng`TH} = 8190
        If(${c`om`MANDLiNEOUTP`UT}."l`eNgth" -gt ${c`MD`MaX`Length})
        {
                &("{1}{3}{0}{2}" -f'nin','Write-Wa','g','r') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        }
        
        ${neWS`Cr`IpT} = ${coMmAn`d`Li`NE`outp`UT}
    }

    Return ${newS`CRI`pT}
}
