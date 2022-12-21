 sEt-VARiABle  oYdRIa  ( [Type]("{1}{0}" -f 'IlE','Io.F')  );


















Function ou`T-ENCODeDBXOR`CoMm`A`ND
{


    [CmdletBinding(dEFauLTpAraMeTERSETnaME = {"{2}{1}{0}"-f'th','Pa','File'})] Param (
        [Parameter(PoSITIoN = 0, valuEFrOMpIpelinE = ${t`Rue}, PaRaMeTErSEtnAME = "s`CRI`pT`BLOcK")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${ScrIp`T`B`LoCk},

        [Parameter(POsitIOn = 0, PARAMEtERSETnamE = "fi`Le`patH")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${Pa`Th},

        [Switch]
        ${no`e`Xit},

        [Switch]
        ${No`PR`ofile},

        [Switch]
        ${nOniNte`R`Acti`Ve},

        [Switch]
        ${nOl`ogo},

        [Switch]
        ${wo`w64},
        
        [Switch]
        ${co`m`MAnD},

        [ValidateSet({"{0}{1}" -f'No','rmal'}, {"{2}{1}{0}" -f'd','imize','Min'}, {"{1}{0}{2}"-f 'x','Ma','imized'}, {"{0}{1}"-f'Hid','den'})]
        [String]
        ${w`INDOw`S`TYLE},

        [ValidateSet({"{0}{1}" -f'Bypa','ss'}, {"{1}{3}{2}{0}"-f 'estricted','U','r','n'}, {"{0}{1}{2}{3}"-f'Re','mote','Signe','d'}, {"{2}{0}{1}" -f 'llSi','gned','A'}, {"{0}{1}{2}"-f 'Res','tr','icted'})]
        [String]
        ${Ex`EcUt`iONPo`LIcy},
        
        [Switch]
        ${p`As`sThrU}
    )

    
    If(${PsBOUN`dPARA`meT`ERs}[("{0}{1}"-f 'Pa','th')])
    {
        &("{0}{1}{4}{2}{3}"-f 'Get-Ch','i','dIte','m','l') ${P`ATh} -ErrorAction ("{0}{1}" -f 'S','top') | &("{2}{1}{0}"-f'll','t-Nu','Ou')
        ${SC`R`i`pTStR`ING} =   $OYDRiA::("{2}{0}{1}{3}" -f'e','adAll','R','Text').Invoke((&("{1}{0}{3}{2}" -f'es','R','e-Path','olv') ${pa`TH}))
    }
    Else
    {
        ${s`c`RiptsTri`Ng} = [String]${SCRi`pTbL`ock}
    }

    
    
    ${R`A`NdoMdEliMi`T`ErS}  = @('_','-',',','{','}','~','!','@','%','&','<','>')

    
    @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z') | &("{0}{1}{2}" -f'F','o','rEach-Object') {${UP`P`eRLOWErcH`AR} = ${_}; If(((&("{1}{2}{0}"-f'Random','G','et-') -Input @(1..2))-1 -eq 0)) {${UPpe`R`l`owe`RchaR} = ${U`PP`erlOW`eRchAR}.("{1}{0}"-f'r','ToUppe').Invoke()} ${randOMDElI`MI`TE`Rs} += ${uPP`ErL`owe`RC`HaR}}
    
    
    ${RAnDo`MDELi`mIT`Ers} = (&("{2}{1}{0}"-f 'dom','t-Ran','Ge') -Input ${rANDomD`EL`IMi`TeRs} -Count (${r`AnDo`mdElIMIt`e`Rs}."cOu`Nt"/4))

    
    ${hE`X`D`iGi`TRAnGE} = @(0,1,2,3,4,5,6,7,8,9,'a','A','b','B','c','C','d','D','e','E','f','F')
    ${BxOrVa`L`UE}  = '0x' + (&("{1}{2}{0}"-f 'dom','Get-','Ran') -Input @(0..5)) + (&("{0}{3}{2}{1}" -f 'G','m','t-Rando','e') -Input ${Hexd`I`GItR`Ange})
    
    
    ${D`ELI`MItEdEnCO`d`e`DarR`AY} = ''
    ([Char[]]${sCRIpt`St`Ri`Ng}) | &("{2}{0}{4}{3}{1}" -f'orEac','t','F','-Objec','h') {${DEl`imIte`D`en`Co`DedAr`RAY} += ([String]([Int][Char]${_} -BXOR ${BxO`RVa`L`UE}) + (&("{2}{0}{1}"-f'et-Ra','ndom','G') -Input ${raNd`OMdE`liMi`T`e`RS}))}

    
    ${deLiMI`TeDenco`DeDAr`R`AY} = ${de`lIMi`Te`de`NCoDEdaRrAY}.("{0}{1}{2}"-f'SubS','tr','ing').Invoke(0,${dELim`i`Te`denc`O`DEDArR`Ay}."lEng`TH"-1)

    
    ${rAn`doMDelIM`i`T`ERSt`OPRinT} = (&("{0}{2}{1}"-f'G','andom','et-R') -Input ${rA`NDo`M`dELimIteRs} -Count ${ra`N`dom`d`ELiMItE`Rs}."LE`NGTH") -Join ''
    
    
    ${FOR`EA`Ch`OBjE`CT} = &("{3}{1}{2}{0}" -f'om','an','d','Get-R') -Input @(("{2}{0}{1}" -f 'rEa','ch','Fo'),("{1}{2}{3}{0}{4}" -f'ch-Objec','Fo','rE','a','t'),'%')
    ${s`T`RJoiN}       = ([Char[]]("{1}{3}{0}{2}"-f 'ng]','[St','::Join','ri') | &("{1}{2}{0}"-f 'ect','F','orEach-Obj') {${Ch`AR} = ${_}.("{0}{1}"-f 'To','String').Invoke().("{1}{0}" -f'ower','ToL').Invoke(); If(&("{1}{0}{2}" -f'-','Get','Random') -Input @(0..1)) {${ch`Ar} = ${ch`Ar}.("{0}{2}{1}"-f'ToU','r','ppe').Invoke()} ${c`hAR}}) -Join ''
    ${s`TR`str}        = ([Char[]]("{0}{1}"-f '[St','ring]')       | &("{2}{1}{0}{3}"-f'bje','rEach-O','Fo','ct') {${CH`Ar} = ${_}.("{2}{0}{1}"-f 'oStrin','g','T').Invoke().("{1}{0}" -f'er','ToLow').Invoke(); If(&("{2}{1}{3}{0}" -f'm','-Ran','Get','do') -Input @(0..1)) {${c`haR} = ${c`hAR}.("{1}{0}{2}" -f 'U','To','pper').Invoke()} ${C`hAr}}) -Join ''
    ${j`OIN}          = ([Char[]]("{0}{1}"-f '-','Join')          | &("{0}{1}{3}{2}"-f 'F','orEach','ject','-Ob') {${c`HAr} = ${_}.("{2}{0}{1}"-f 'n','g','ToStri').Invoke().("{0}{2}{1}" -f 'To','wer','Lo').Invoke(); If(&("{1}{0}{2}"-f't-Ran','Ge','dom') -Input @(0..1)) {${cH`Ar} = ${Ch`AR}.("{1}{2}{0}"-f 'r','ToUp','pe').Invoke()} ${ch`AR}}) -Join ''
    ${BX`or}          = ([Char[]]("{1}{0}"-f'BXOR','-')          | &("{4}{2}{1}{0}{3}" -f 'h-','c','Ea','Object','For') {${c`hAr} = ${_}.("{2}{0}{1}" -f 'i','ng','ToStr').Invoke().("{2}{1}{0}" -f'r','owe','ToL').Invoke(); If(&("{2}{3}{0}{1}" -f'd','om','Get-Ra','n') -Input @(0..1)) {${C`haR} = ${C`HaR}.("{2}{1}{0}" -f 'r','pe','ToUp').Invoke()} ${c`HaR}}) -Join ''
    ${cha`RsTR}       = ([Char[]]("{1}{0}"-f'har','C')           | &("{1}{3}{2}{0}" -f'ject','ForEa','h-Ob','c') {${CH`Ar} = ${_}.("{0}{2}{1}"-f 'To','ng','Stri').Invoke().("{1}{0}" -f'Lower','To').Invoke(); If(&("{1}{2}{0}" -f 'dom','Get-R','an') -Input @(0..1)) {${CH`Ar} = ${cH`Ar}.("{1}{2}{0}" -f 'er','T','oUpp').Invoke()} ${CH`Ar}}) -Join ''
    ${I`Nt}           = ([Char[]]'Int'            | &("{0}{2}{1}{3}" -f 'F','Each-','or','Object') {${CH`AR} = ${_}.("{1}{2}{0}" -f'ing','To','Str').Invoke().("{1}{0}" -f 'wer','ToLo').Invoke(); If(&("{1}{2}{3}{0}" -f'om','Get','-R','and') -Input @(0..1)) {${c`HAR} = ${ch`Ar}.("{0}{1}{2}" -f 'ToUp','pe','r').Invoke()} ${c`HAr}}) -Join ''
    ${forEA`cH`o`BJECt} = ([Char[]]${foR`EacHO`Bject}   | &("{3}{2}{0}{1}" -f'bje','ct','Each-O','For') {${C`haR} = ${_}.("{0}{1}" -f'To','String').Invoke().("{0}{2}{1}"-f'To','wer','Lo').Invoke(); If(&("{1}{0}{2}" -f'ando','Get-R','m') -Input @(0..1)) {${C`hAR} = ${CH`Ar}.("{0}{1}" -f'ToUp','per').Invoke()} ${c`Har}}) -Join ''

    
    ${Ra`NdomdELIMiT`eR`sto`p`Rin`Tfo`RDaShS`Pl`It} = ''
    ForEach(${r`A`NdO`MDe`lIMit`er} in ${RA`N`DOM`DEL`ImIT`eRS})
    {
        
        If(${SCR`Ip`TSTR`Ing}.("{1}{0}"-f 'ontains','C').Invoke('^'))
        {
            ${S`P`LIt} = ([Char[]]("{1}{0}" -f 't','Spli') | &("{0}{3}{2}{1}"-f'For','ect','ach-Obj','E') {${ch`Ar} = ${_}.("{0}{1}{2}"-f 'ToStr','i','ng').Invoke().("{1}{0}" -f'wer','ToLo').Invoke(); If(&("{2}{0}{1}"-f'a','ndom','Get-R') -Input @(0..1)) {${C`hAR} = ${Ch`Ar}.("{1}{0}{2}"-f'U','To','pper').Invoke()} ${C`hAR}}) -Join ''
            ${Rand`OMde`lImi`TERS`T`O`PRin`TFO`RdAS`HsPLiT} += '(' + (&("{1}{2}{3}{0}"-f 'om','G','et','-Rand') -Input @(("{0}{1}"-f'-R','eplace'),("{0}{2}{1}" -f'-','lace','CRep'))) + (' '+(('h7'+'F^h7F,h'+'7Fh'+'7F ')  -REplACE 'h7F',[ChAr]39)+"-$Split") + ' '*(&("{2}{0}{1}" -f't-Ra','ndom','Ge') -Input @(0,1)) + "'" + ${R`A`NDO`M`dELImiTer} + "'" + ' '*(&("{1}{0}{2}" -f'o','Get-Rand','m') -Input @(0,1))
            ${spl`it} = ([Char[]]((("{3}{5}{0}{1}{4}{2}"-f ',{0}','{0}).S','it','Replace({0}^{','pl','0}')) -F [cHar]39) | &("{0}{3}{1}{2}" -f 'F','ach-','Object','orE') {${cH`AR} = ${_}.("{2}{0}{1}" -f'o','String','T').Invoke().("{1}{0}"-f'wer','ToLo').Invoke(); If(&("{2}{1}{0}"-f 'om','et-Rand','G') -Input @(0..1)) {${C`Har} = ${ch`Ar}.("{1}{0}" -f 'pper','ToU').Invoke()} ${c`har}}) -Join ''
        }
        Else
        {
            ${s`p`LiT} = ([Char[]]("{1}{0}" -f 'lit','Sp') | &("{1}{0}{2}{3}" -f 'orEach','F','-Objec','t') {${c`haR} = ${_}.("{2}{0}{1}"-f 't','ring','ToS').Invoke().("{0}{2}{1}" -f 'T','r','oLowe').Invoke(); If(&("{1}{2}{0}" -f 'dom','Get-','Ran') -Input @(0..1)) {${CH`AR} = ${CH`Ar}.("{1}{0}"-f 'r','ToUppe').Invoke()} ${Ch`AR}}) -Join ''
            ${RAN`d`oM`DeliMI`TErStOP`R`i`Ntf`O`Rda`sHsPLIt} += ('-' + ${S`plIt} + ' '*(&("{0}{1}{3}{2}"-f'Ge','t-Ra','m','ndo') -Input @(0,1)) + "'" + ${rA`ND`Omd`ELIm`ITEr} + "'" + ' '*(&("{1}{2}{0}"-f'om','Get-','Rand') -Input @(0,1)))
        }

        
        ${s`pLIT} = ([Char[]]${spl`IT} | &("{0}{1}{3}{2}{4}"-f 'For','E','bjec','ach-O','t') {${Ch`Ar} = ${_}.("{0}{1}" -f 'ToStr','ing').Invoke().("{0}{1}{2}"-f'ToLo','we','r').Invoke(); If(&("{0}{2}{1}" -f'Get','om','-Rand') -Input @(0..1)) {${cH`Ar} = ${c`hAr}.("{0}{1}"-f'ToU','pper').Invoke()} ${c`HAR}}) -Join '' 
        ${R`AndomdE`lI`mI`TerSTOPrINt`FordA`shSpL`IT} = ([Char[]]${rAndomdE`l`imit`e`RSto`prIn`TfOrDAs`h`Sp`L`It} | &("{2}{1}{0}" -f'ject','Each-Ob','For') {${c`hAR} = ${_}.("{1}{2}{0}" -f 'ring','ToS','t').Invoke().("{1}{0}"-f'Lower','To').Invoke(); If(&("{2}{1}{0}" -f'm','do','Get-Ran') -Input @(0..1)) {${cH`Ar} = ${c`HAR}.("{2}{0}{1}"-f 'pe','r','ToUp').Invoke()} ${C`har}}) -Join ''
    }
    ${raNdoMDeLiMiTER`STOPriNt`ForD`As`Hs`PL`it} = ${ra`NDo`M`DEL`iMIteRsto`p`R`i`Nt`F`orDAsHsPlit}.("{0}{1}" -f'T','rim').Invoke()

    
    ${en`co`DED`ArraY} = ''
    ([Char[]]${scrIpTSt`R`inG}) | &("{4}{1}{2}{0}{3}"-f'ch-','orE','a','Object','F') {${EncOD`E`DA`RRAY} += ([String]([Int][Char]${_} -BXOR ${b`xOR`VA`lue})) + ' '*(&("{0}{2}{1}" -f'Get-Ran','om','d') -Input @(0,1)) + ',' + ' '*(&("{2}{1}{0}"-f'dom','n','Get-Ra') -Input @(0,1))}

    
    ${ENcOdE`dar`RAy} = ('(' + ' '*(&("{2}{3}{1}{0}"-f'andom','R','Ge','t-') -Input @(0,1)) + ${En`co`DEdarrAy}.("{1}{0}"-f 'rim','T').Invoke().("{1}{0}"-f 'im','Tr').Invoke(',') + ')')

    
    
    
    
    ${Set`oFsVAr`synT`Ax}      = @()
    ${s`e`TOF`sv`ARSynTaX}     += ("{1}{0}" -f 'Item','Set-') + ' '*(&("{2}{1}{0}"-f'-Random','t','Ge') -Input @(1,2)) + ((("{0}{1}{2}{3}{4}" -f 'bNoV','ariab','le:OF','Sb','No'))."rE`p`LAce"(([CHAr]98+[CHAr]78+[CHAr]111),[sTrINg][CHAr]39)) + ' '*(&("{1}{0}{2}" -f't-Ra','Ge','ndom') -Input @(1,2)) + "''"
    ${se`ToFsvARSYnT`Ax}     += (&("{1}{2}{3}{0}" -f'ndom','G','et-R','a') -Input @(("{0}{1}{3}{2}" -f 'S','e','able','t-Vari'),'SV','SET')) + ' '*(&("{1}{0}{2}"-f 'Rando','Get-','m') -Input @(1,2)) + ((("{2}{0}{1}" -f'tWOFSi','tW','i')) -REpLaCe([ChAR]105+[ChAR]116+[ChAR]87),[ChAR]39) + ' '*(&("{2}{0}{1}" -f'Rand','om','Get-') -Input @(1,2)) + "''"
    ${SeTOF`S`V`Ar}            = (&("{0}{1}{2}" -f'Get-Rand','o','m') -Input ${S`e`Tof`SvaR`Syn`TaX})

    ${sETofs`V`A`RBaCKs`yNTAx}  = @()
    ${SetOfSvAr`B`AC`KsYNt`AX} += ("{1}{2}{0}" -f 'm','Set','-Ite') + ' '*(&("{1}{2}{0}" -f'dom','Get','-Ran') -Input @(1,2)) + ((("{4}{1}{2}{0}{6}{5}{3}" -f 'a','}','Vari','{0}','{0','e:OFS','bl'))  -f [chAR]39) + ' '*(&("{0}{1}{2}" -f'G','et-R','andom') -Input @(1,2)) + "' '"
    ${sE`TOFSVA`R`BAckS`yntAX} += (&("{1}{0}{2}{3}"-f't-Ra','Ge','ndo','m') -Input @(("{2}{1}{0}" -f 'riable','t-Va','Se'),'SV','SET')) + ' '*(&("{0}{1}{2}"-f'Get','-Ra','ndom') -Input @(1,2)) + ((("{3}{1}{0}{2}"-f'F','qnO','SSqn','S'))."rEp`LA`ce"(([Char]83+[Char]113+[Char]110),[sTRinG][Char]39)) + ' '*(&("{1}{0}{2}" -f 'Ran','Get-','dom') -Input @(1,2)) + "' '"
    ${Se`TofsvAR`B`AcK}        = (&("{2}{0}{1}" -f '-Rando','m','Get') -Input ${sET`of`sv`ARBAckSynT`AX})

    
    ${SeT`ofS`VAR}            = ([Char[]]${SE`ToFsv`AR}     | &("{1}{2}{3}{0}" -f 'ect','ForE','ach-O','bj') {${cH`Ar} = ${_}.("{1}{0}"-f 'ng','ToStri').Invoke().("{0}{1}"-f 'T','oLower').Invoke(); If(&("{2}{0}{1}" -f 'nd','om','Get-Ra') -Input @(0..1)) {${c`Har} = ${c`HAR}.("{0}{2}{1}" -f 'ToU','er','pp').Invoke()} ${cH`Ar}}) -Join ''
    ${sEto`FsVAR`BAck}        = ([Char[]]${SE`TOfSvARB`AcK} | &("{3}{0}{2}{1}" -f'a','h-Object','c','ForE') {${c`hAr} = ${_}.("{1}{0}{2}" -f 'oSt','T','ring').Invoke().("{2}{0}{1}" -f 'ow','er','ToL').Invoke(); If(&("{1}{0}{3}{2}"-f 't-R','Ge','m','ando') -Input @(0..1)) {${ch`Ar} = ${cH`AR}.("{1}{0}"-f 'oUpper','T').Invoke()} ${C`hAr}}) -Join ''

    
    ${q`U`OtEs} = &("{2}{1}{0}"-f'dom','t-Ran','Ge') -Input @('"',"'",' ')
    ${b`xO`RSyn`Tax} = ${bX`Or} + ' '*(&("{0}{2}{1}"-f'G','dom','et-Ran') -Input @(0,1)) + ${Q`UOtes} + ${bXO`R`VAl`UE} + ${quO`T`Es}
    ${bx`orcO`Nv`Ers`ion} = '{' + ' '*(&("{1}{0}{2}"-f't-Rand','Ge','om') -Input @(0,1)) + "[$CharStr]" + ' '*(&("{2}{1}{0}{3}"-f 'nd','a','Get-R','om') -Input @(0,1)) + '(' + ' '*(&("{0}{2}{1}"-f'Get','dom','-Ran') -Input @(0,1)) + '$_' + ' '*(&("{2}{1}{0}"-f'Random','et-','G') -Input @(0,1)) + ${bxO`RS`ynT`Ax} + ' '*(&("{1}{2}{0}" -f'andom','Get-','R') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}"-f'Get-Ra','om','nd') -Input @(0,1)) + '}'

    
    ${b`ASesc`RIPTa`Rr`AY}  = @()
    ${ba`seS`CrIp`TArrAy} += '(' + ' '*(&("{0}{3}{1}{2}"-f 'Ge','-R','andom','t') -Input @(0,1)) + "[$CharStr[]]" + ' '*(&("{1}{0}{3}{2}" -f'et-Rand','G','m','o') -Input @(0,1)) + ${ENc`OdeD`A`RrAY} + ' '*(&("{3}{1}{2}{0}" -f 'dom','et-','Ran','G') -Input @(0,1)) + '|' + ' '*(&("{3}{1}{0}{2}" -f'Rand','t-','om','Ge') -Input @(0,1)) + ${f`oR`eAc`hOB`Ject} + ' '*(&("{1}{0}{2}"-f'do','Get-Ran','m') -Input @(0,1)) + ${bxoRCo`Nve`Rsi`ON} + ' '*(&("{2}{0}{3}{1}" -f'et-Ran','om','G','d') -Input @(0,1)) + ')'
    ${baSESc`R`IP`TarrAy} += '(' + ' '*(&("{0}{2}{1}"-f 'Get-Ran','om','d') -Input @(0,1)) + "'" + ${d`EL`imiTeD`ENcODe`D`ARRAy} + "'." + ${Sp`LiT} + "(" + ' '*(&("{0}{1}{2}" -f'Get','-R','andom') -Input @(0,1)) + "'" + ${rAn`DoMd`eLimI`T`er`s`TOp`RiNT} + "'" + ' '*(&("{2}{0}{1}" -f 'd','om','Get-Ran') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}" -f 'm','et-Rando','G') -Input @(0,1)) + '|' + ' '*(&("{1}{3}{2}{0}"-f 'm','Get-','ando','R') -Input @(0,1)) + ${F`oR`ea`ch`oBJECt} + ' '*(&("{0}{1}{2}"-f'Ge','t-Ran','dom') -Input @(0,1)) + ${bX`or`c`onVersi`on} + ' '*(&("{0}{1}{2}{3}" -f 'Get-R','a','ndo','m') -Input @(0,1)) + ')'
    ${bA`SesC`R`i`PTarRAY} += '(' + ' '*(&("{0}{2}{1}" -f'Get-R','m','ando') -Input @(0,1)) + "'" + ${deLIm`iT`Ed`eNcodE`DarRaY} + "'" + ' '*(&("{0}{2}{1}{3}"-f'Get','Rando','-','m') -Input @(0,1)) + ${RaN`Do`mdeli`m`ite`RS`ToprI`Nt`FordaS`HSPlit} + ' '*(&("{1}{2}{0}{3}" -f'-Ra','G','et','ndom') -Input @(0,1)) + '|' + ' '*(&("{2}{0}{1}"-f 'et-','Random','G') -Input @(0,1)) + ${fOR`e`AcHoBJe`ct} + ' '*(&("{0}{1}{2}"-f 'G','et-Ra','ndom') -Input @(0,1)) + ${B`xO`RC`oNve`RsiON} + ' '*(&("{3}{2}{1}{0}"-f 'm','Rando','t-','Ge') -Input @(0,1)) + ')'
    ${BaS`Es`criptarr`AY} += '(' + ' '*(&("{2}{1}{0}" -f'm','Rando','Get-') -Input @(0,1)) + ${enC`O`DEDarr`Ay} + ' '*(&("{2}{0}{1}"-f 't','-Random','Ge') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}" -f 'om','Ge','t-Rand') -Input @(0,1)) + ${F`OREac`H`Ob`jECt} + ' '*(&("{0}{2}{1}" -f'Get-Ra','dom','n') -Input @(0,1)) + ${b`Xor`cO`NVe`RsIoN} + ' '*(&("{1}{2}{0}{3}"-f't-Ra','G','e','ndom') -Input @(0,1)) + ')'
    
    
    ${N`Ewsc`RiPT`A`RRay}   = @()
    ${Ne`W`ScRIP`Ta`RRAy}  += (&("{1}{2}{0}" -f'ndom','G','et-Ra') -Input ${bAsEsc`R`IP`TArRay}) + ' '*(&("{0}{2}{1}"-f 'G','-Random','et') -Input @(0,1)) + ${j`oIN} + ' '*(&("{1}{0}{3}{2}"-f't-Ra','Ge','m','ndo') -Input @(0,1)) + "''"
    ${neWs`crIptA`R`RAy}  += ${JO`in} + ' '*(&("{3}{1}{2}{0}" -f'm','t-Ra','ndo','Ge') -Input @(0,1)) + (&("{1}{2}{0}" -f'om','G','et-Rand') -Input ${baSe`scRIp`Ta`RRay})
    ${NE`W`SCrIp`T`ARrAy}  += ${Strj`o`In} + '(' + ' '*(&("{1}{2}{0}" -f'dom','G','et-Ran') -Input @(0,1)) + "''" + ' '*(&("{1}{2}{0}" -f'dom','Get-R','an') -Input @(0,1)) + ',' + ' '*(&("{2}{0}{1}" -f'-R','andom','Get') -Input @(0,1)) + (&("{0}{3}{2}{1}" -f 'Get-','dom','an','R') -Input ${BAS`eScriPT`ArRAy}) + ' '*(&("{1}{2}{0}"-f'm','Get','-Rando') -Input @(0,1)) + ')'
    ${N`ews`cRip`Ta`RraY}  += '"' + ' '*(&("{0}{1}{2}"-f'Get-','Ra','ndom') -Input @(0,1)) + '$(' + ' '*(&("{0}{1}{2}"-f 'G','et-','Random') -Input @(0,1)) + ${sETof`s`Var} + ' '*(&("{0}{1}{2}"-f 'Get','-Ra','ndom') -Input @(0,1)) + ')' + ' '*(&("{2}{0}{1}"-f'o','m','Get-Rand') -Input @(0,1)) + '"' + ' '*(&("{2}{1}{0}" -f 'ndom','Ra','Get-') -Input @(0,1)) + '+' + ' '*(&("{2}{1}{3}{0}"-f'dom','et','G','-Ran') -Input @(0,1)) + ${Strs`TR} + (&("{0}{2}{1}" -f'Get-Rand','m','o') -Input ${baSeSC`RI`pT`ARR`Ay}) + ' '*(&("{1}{2}{0}"-f 'm','Get-Rand','o') -Input @(0,1)) + '+' + '"' + ' '*(&("{1}{0}{2}"-f 'd','Get-Ran','om') -Input @(0,1)) + '$(' + ' '*(&("{0}{2}{1}" -f 'Get','Random','-') -Input @(0,1)) + ${sE`TOFSVARB`A`ck} + ' '*(&("{2}{0}{1}" -f 'et-Ra','ndom','G') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Ge','t-Rand','om') -Input @(0,1)) + '"'

    
    ${n`ew`sCri`pt} = (&("{0}{2}{1}" -f'G','m','et-Rando') -Input ${nEW`sc`R`ipt`ARrAY})

    
    
    ${InVok`EEx`Pre`SsIon`SynTaX}  = @()
    ${iN`VO`keEx`presSI`Ons`y`NtAx} += (&("{1}{2}{0}"-f'ndom','Get','-Ra') -Input @('IEX',("{2}{4}{0}{1}{3}" -f'oke-','Expre','In','ssion','v')))
    
    
    
    ${In`VocaT`iONo`p`EratOr} = (&("{1}{3}{2}{0}"-f 'ndom','G','a','et-R') -Input @('.','&')) + ' '*(&("{2}{1}{0}"-f'dom','-Ran','Get') -Input @(0,1))
    ${I`Nvo`keEXP`R`ESsIoNSY`NTaX} += ${Inv`oCa`TioNO`peRA`ToR} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${inVoKeEXPRe`sSio`N`s`yN`TAx} += ${i`NVOCat`iONO`PE`RAT`or} + ('( '+"`$PSHome[") + (&("{2}{1}{0}"-f 'ndom','-Ra','Get') -Input @(4,21)) + "]+`$PSHome[" + (&("{0}{1}{2}{3}" -f 'Ge','t-R','a','ndom') -Input @(30,34)) + (((("{1}{0}{2}" -f '+YEyxYEy',']',')')) -cREPlACe 'YEy',[CHar]39))
    ${inV`oK`eexPrEs`SionSYn`TaX} += ${i`NV`OcatIoNoPERAT`or} + ('( '+"`$env:ComSpec[4,") + (&("{1}{0}{2}" -f'-Rando','Get','m') -Input @(15,24,26)) + (((("{5}{3}{4}{2}{1}{0}" -f'0})','{','}','-Join{','0',',25]'))-F [chaR]39))
    ${inVoKEEX`PRes`sIOns`y`N`TAx} += ${InVOC`A`Tio`N`oPErat`Or} + "((" + (&("{2}{0}{1}"-f 't','-Random','Ge') -Input @(("{2}{1}{0}{3}" -f 't-Variab','e','G','le'),'GV',("{0}{1}{2}" -f'Varia','b','le'))) + ((("{2}{0}{4}{5}{1}{6}{3}"-f 'zU','zU',' zU3*mdr*',')','3).Name[3,11,2',']-Join','3zU3'))."r`e`PLAce"(([Char]122+[Char]85+[Char]51),[STRInG][Char]39))
    ${InvO`KeEXpRE`sS`Ions`yN`TAX} += ${INvOCA`TI`ONOPerA`TOr} + "( " + (&("{0}{1}{2}" -f 'Get','-Ra','ndom') -Input @(((('g'+'f'+'8Ve'+'rbosePrefere'+'nce.T'+'o'+'String('+')')-CREPlACe 'gf8',[cHaR]36)),((('([Stri'+'n'+'g]ve'+'SVe'+'rbosePr'+'e'+'f'+'erence'+')')  -RepLACE  ([char]118+[char]101+[char]83),[char]36)))) + (((("{3}{0}{4}{2}{1}{5}"-f '{0}','0','0}-Join{','[1,3]+','x{','}{0})')) -F[cHaR]39))
    
    

    
    ${I`NVo`ke`eXPr`Ession} = (&("{1}{2}{0}{3}"-f'nd','Ge','t-Ra','om') -Input ${iNVoKee`xPR`ES`SIOnSy`NtAx})

    
    ${IN`VO`kEeXPreS`SI`on} = ([Char[]]${inVOKeEx`p`R`E`sSiOn} | &("{1}{2}{3}{4}{0}" -f'ect','ForEa','c','h','-Obj') {${CH`AR} = ${_}.("{1}{0}"-f 'g','ToStrin').Invoke().("{0}{2}{1}" -f'T','r','oLowe').Invoke(); If(&("{0}{2}{1}" -f'Get','ndom','-Ra') -Input @(0..1)) {${C`hAr} = ${C`haR}.("{0}{1}"-f 'To','Upper').Invoke()} ${C`HAr}}) -Join ''
    
    
    ${iN`VoKeop`TiONs}  = @()
    ${iNv`oke`OPTioNS} += ' '*(&("{1}{0}{2}"-f't','Ge','-Random') -Input @(0,1)) + ${iN`VOKEEx`p`RessIon} + ' '*(&("{1}{0}{2}" -f '-Rando','Get','m') -Input @(0,1)) + '(' + ' '*(&("{3}{0}{2}{1}"-f '-R','om','and','Get') -Input @(0,1)) + ${n`e`wscRIpt} + ' '*(&("{2}{1}{0}"-f'dom','Ran','Get-') -Input @(0,1)) + ')' + ' '*(&("{0}{3}{1}{2}"-f'Get-','ando','m','R') -Input @(0,1))
    ${in`V`OKe`OpTi`OnS} += ' '*(&("{3}{2}{1}{0}"-f'ndom','Ra','-','Get') -Input @(0,1)) + ${N`E`WsCRiPt} + ' '*(&("{0}{1}{2}"-f 'Get-R','and','om') -Input @(0,1)) + '|' + ' '*(&("{0}{2}{1}{3}" -f'Get-','do','Ran','m') -Input @(0,1)) + ${iNVO`KeeXpr`e`SSiON}

    ${neWsC`R`ipt} = (&("{2}{0}{1}"-f't-Rand','om','Ge') -Input ${inVo`KeO`ptI`onS})

    
    If(!${Ps`B`OundParame`TERS}[("{0}{2}{1}"-f 'Pas','ru','sTh')])
    {
        
        ${pOwe`R`shEllF`lagS} = @()

        
        
        ${c`omM`A`NdLIneo`PTi`oNs} = &("{2}{1}{0}"-f 'Object','w-','Ne') ("{1}{2}{0}" -f ']','String','[')(0)
        If(${p`sBo`U`NdPARA`metERS}[("{0}{2}{1}" -f 'No','t','Exi')])
        {
          ${F`U`llaRGuM`enT} = ("{0}{1}"-f '-N','oExit');
          ${cOM`m`A`NdLI`NE`opTIonS} += ${Ful`L`Arg`UmEnt}.("{1}{2}{0}"-f 'ng','SubStr','i').Invoke(0,(&("{1}{2}{0}{3}"-f'Ran','G','et-','dom') -Minimum 4 -Maximum (${fUl`lar`Gu`Ment}."Le`Ng`Th"+1)))
        }
        If(${psB`o`UnDPA`R`AMETE`Rs}[("{2}{1}{0}" -f 'ile','rof','NoP')])
        {
          ${f`UllarGU`meNT} = ("{0}{2}{1}"-f'-No','e','Profil');
          ${C`OmMANdlInE`oP`T`i`ONS} += ${f`UL`LArGUMe`Nt}.("{0}{1}" -f'SubStrin','g').Invoke(0,(&("{2}{0}{1}" -f'-','Random','Get') -Minimum 4 -Maximum (${FUlLArg`U`M`eNT}."L`enGTH"+1)))
        }
        If(${pS`Bou`NdPArA`M`E`TErS}[("{0}{3}{2}{1}"-f 'NonInte','ve','ti','rac')])
        {
          ${fU`LLaRGUm`eNT} = ("{2}{0}{3}{1}" -f'N','ractive','-','onInte');
          ${c`OmmA`N`dl`Ine`opti`ONS} += ${FULLaR`GU`mENT}.("{0}{1}{2}"-f 'S','ubStr','ing').Invoke(0,(&("{0}{2}{1}" -f 'Get-R','m','ando') -Minimum 5 -Maximum (${f`U`l`largU`MENT}."l`EnGtH"+1)))
        }
        If(${p`Sb`o`UndPAr`AMeTERs}[("{1}{0}" -f'ogo','NoL')])
        {
          ${fuLlARGUm`E`Nt} = ("{0}{1}{2}"-f '-NoLo','g','o');
          ${cO`MmANDL`iNE`opTi`onS} += ${F`ULlar`gUmEnT}.("{1}{0}{2}" -f'trin','SubS','g').Invoke(0,(&("{2}{1}{0}" -f'dom','t-Ran','Ge') -Minimum 4 -Maximum (${fu`lLarG`Um`eNt}."LEng`Th"+1)))
        }
        If(${PSbO`UnD`PAramET`E`Rs}[("{2}{1}{3}{0}" -f 'e','indowSty','W','l')] -OR ${wIndO`W`sS`T`yLe})
        {
            ${FULlA`RGu`MeNT} = ("{1}{0}{2}"-f 'owSty','-Wind','le')
            If(${wIN`DowsS`Tyle}) {${argU`mEntva`luE} = ${wind`owSSt`yLe}}
            Else {${ar`GUMeNTv`A`L`Ue} = ${p`s`B`oundPaRaMe`TeRS}[("{3}{2}{1}{0}" -f 'e','Styl','dow','Win')]}

            
            Switch(${aRG`U`MENtValue}.("{0}{1}"-f 'T','oLower').Invoke())
            {
                ("{0}{1}" -f'no','rmal')    {If(&("{0}{2}{1}{3}" -f 'Get','ando','-R','m') -Input @(0..1)) {${ARG`UmENTV`AlUE} = (&("{0}{1}{2}" -f 'Get-','Rand','om') -Input @('0','n','no','nor',("{0}{1}" -f'nor','m'),("{0}{1}"-f'no','rma')))}}
                ("{0}{1}"-f'hidd','en')    {If(&("{0}{1}{2}"-f'Ge','t-R','andom') -Input @(0..1)) {${arG`Um`E`NT`VAlUe} = (&("{0}{2}{1}" -f 'G','andom','et-R') -Input @('1','h','hi','hid',("{1}{0}"-f'idd','h'),("{0}{1}" -f 'hi','dde')))}}
                ("{2}{1}{0}" -f 'nimized','i','m') {If(&("{1}{2}{0}"-f 'm','Get-R','ando') -Input @(0..1)) {${ar`gu`MenTvAL`UE} = (&("{0}{1}{2}" -f 'Get-R','ando','m') -Input @('2','mi','min',("{0}{1}" -f'min','i'),("{1}{0}"-f'inim','m'),("{1}{0}" -f'inimi','m'),("{1}{0}"-f 'iz','minim'),("{1}{0}{2}"-f'z','minimi','e')))}}
                ("{1}{0}" -f'aximized','m') {If(&("{2}{1}{0}"-f 'Random','-','Get') -Input @(0..1)) {${aR`gumENtv`AL`Ue} = (&("{1}{0}{2}"-f 'an','Get-R','dom') -Input @('3','ma','max',("{1}{0}" -f'axi','m'),("{0}{1}"-f 'maxi','m'),("{1}{0}"-f'ximi','ma'),("{0}{2}{1}" -f 'm','imiz','ax'),("{0}{1}"-f'max','imize')))}}
                ("{1}{0}"-f'efault','d') {&("{1}{0}{2}" -f'-Err','Write','or') ('An'+' '+'i'+'nv'+'alid '+"`$ArgumentValue "+'va'+'lu'+'e '+"($ArgumentValue) "+'wa'+'s '+'pas'+'s'+'ed '+'to'+' '+'swit'+'ch'+' '+'block'+' '+'for'+' '+'Out-'+'Powe'+'rShe'+'llL'+'aunch'+'er.'); Exit;}
            }

            ${p`ow`E`RSHELLfLAGS} += ${F`U`LlARGumenT}.("{1}{0}{2}" -f'trin','SubS','g').Invoke(0,(&("{2}{0}{1}"-f 'et-Ran','dom','G') -Minimum 2 -Maximum (${fu`LLA`Rg`UMENT}."l`ENG`Th"+1))) + ' '*(&("{2}{0}{1}"-f 'a','ndom','Get-R') -Minimum 1 -Maximum 3) + ${ARgUmeN`Tv`A`lUe}
        }
        If(${PSBoUn`dp`AR`A`mETe`Rs}[("{2}{0}{1}{3}"-f 'e','cutionPolic','Ex','y')] -OR ${E`xe`c`UtIoNP`olIcy})
        {
            ${fU`LlAr`GumE`NT} = ("{4}{2}{1}{3}{5}{0}"-f 'y','ut','c','ion','-Exe','Polic')
            If(${Ex`eC`U`TIoNpOLiCY}) {${a`Rg`UMeNtVa`LUE} = ${E`XEcUtio`NP`OliCY}}
            Else {${A`RGuMEN`TvA`LUe} = ${p`sbOU`NDpAr`Am`e`TerS}[("{0}{3}{2}{4}{1}"-f'ExecutionP','cy','l','o','i')]}
            
            ${ExE`cUt`i`OnP`OlICyF`LAGS} = @()
            ${eXeCUtIO`N`PoL`ICYf`lAgS} += '-EP'
            For(${in`d`EX}=3; ${In`D`EX} -le ${fU`LL`AR`GUmE`NT}."leng`TH"; ${Ind`Ex}++)
            {
                ${E`XE`C`UTiOnP`OLI`cYF`lags} += ${FULLar`GuM`E`NT}.("{1}{2}{0}" -f 'ng','S','ubStri').Invoke(0,${IND`ex})
            }
            ${eXEcuTI`onpo`LI`cYFlaG} = &("{2}{0}{1}"-f 'ndo','m','Get-Ra') -Input ${ex`E`C`U`TIONPoliCYfLA`GS}
            ${p`owE`R`ShellF`LagS} += ${EXE`CUtIon`P`O`lIC`yF`Lag} + ' '*(&("{0}{2}{1}" -f'G','t-Random','e') -Minimum 1 -Maximum 3) + ${Ar`Gu`m`en`TVAlue}
        }
        
        
        
        If(${c`Om`mANDLINeo`PtIonS}."cOU`NT" -gt 1)
        {
            ${cOMmaNdl`in`E`oPTI`O`Ns} = &("{0}{3}{2}{1}" -f 'Ge','m','-Rando','t') -InputObject ${cOmMANdl`iNEOP`T`i`O`Ns} -Count ${c`oM`mAnDL`InEOPt`IOns}."C`OunT"
        }

        
        If(${P`SBo`UnDp`AR`Amet`erS}[("{1}{0}{2}" -f'm','Co','mand')])
        {
            ${FUllA`RGuMe`Nt} = ("{0}{2}{1}"-f'-','mmand','Co')
            ${C`OMMANd`LiNE`oPtIoNS} += ${F`Ul`LArguMeNT}.("{0}{3}{1}{2}" -f 'Sub','t','ring','S').Invoke(0,(&("{1}{2}{0}"-f 'm','Get-R','ando') -Minimum 2 -Maximum (${fu`LLa`RgUmeNt}."l`ENG`TH"+1)))
        }

        
        For(${i}=0; ${i} -lt ${POWE`RsH`EllFL`AGS}."C`oUnT"; ${i}++)
        {
            ${Po`WERs`H`El`Lfl`AGs}[${I}] = ([Char[]]${pOwer`S`hel`l`FLags}[${I}] | &("{1}{0}{2}"-f '-Objec','ForEach','t') {${c`hAR} = ${_}.("{2}{0}{1}"-f'trin','g','ToS').Invoke().("{1}{0}" -f 'Lower','To').Invoke(); If(&("{0}{2}{1}" -f 'G','dom','et-Ran') -Input @(0..1)) {${C`HaR} = ${c`hAR}.("{2}{1}{0}"-f 'r','Uppe','To').Invoke()} ${c`HAR}}) -Join ''
        }

        
        ${com`mAndLI`Neo`PT`IoNS} = (${C`ommanD`lin`EOPtIO`Ns} | &("{4}{3}{2}{0}{1}" -f 'jec','t','-Ob','Each','For') {${_} + " "*(&("{1}{2}{0}" -f'm','Get-R','ando') -Minimum 1 -Maximum 3)}) -Join ''
        ${COMmA`NdLIN`eoP`TI`Ons} = " "*(&("{0}{1}{2}" -f 'Get-Ran','d','om') -Minimum 0 -Maximum 3) + ${c`OMMA`N`dlin`EOp`Tions} + " "*(&("{2}{1}{0}" -f'dom','t-Ran','Ge') -Minimum 0 -Maximum 3)

        
        If(${ps`B`Ou`ND`paRamE`TeRS}[("{1}{0}"-f 'ow64','W')])
        {
            ${CommA`NDlinE`O`UtPUt} = "C:\WINDOWS\SysWOW64\WindowsPowerShell\v1.0\powershell.exe $($CommandlineOptions) `"$NewScript`" "
        }
        Else
        {
            
            
            ${comm`AND`l`Ineout`PUT} = "powershell $($CommandlineOptions) `"$NewScript`" "
        }

        
        ${CmDMA`X`l`EnGtH} = 8190
        If(${CoMMaNdlI`N`e`ouTp`Ut}."lEnG`Th" -gt ${Cm`DMax`l`ENgTH})
        {
                &("{2}{0}{3}{1}"-f'ite-War','ing','Wr','n') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        }
        
        ${nEws`c`R`ipT} = ${co`m`mAnDLI`NEouT`pUt}
    }

    Return ${NEW`sCrI`pt}
}
