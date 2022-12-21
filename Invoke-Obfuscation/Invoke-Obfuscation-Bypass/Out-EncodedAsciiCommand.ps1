  $NSDF=  [tyPE]("{2}{1}{0}"-F '.fIlE','o','i') ;


















Function o`UT-enC`OdE`da`sciIcOMManD
{


    [CmdletBinding(dEFaULtparAMeteRSetname = {"{1}{0}" -f 'ath','FileP'})] Param (
        [Parameter(POsiTION = 0, vaLUEfrompipeLINE = ${tr`Ue}, pARAMeTERSETNamE = "S`crIpTb`lOCK")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${SCR`ipTbl`Ock},

        [Parameter(PositION = 0, pARaMEtERsETnaMe = "File`pATh")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${P`Ath},

        [Switch]
        ${NOeX`IT},

        [Switch]
        ${NoP`Ro`FiLe},

        [Switch]
        ${nO`N`InTe`Ra`ctivE},

        [Switch]
        ${N`oLo`go},

        [Switch]
        ${WO`w64},
        
        [Switch]
        ${c`Omm`AnD},

        [ValidateSet({"{1}{2}{0}"-f'l','Norm','a'}, {"{1}{0}{2}"-f'n','Mi','imized'}, {"{0}{1}{2}"-f 'Ma','ximize','d'}, {"{0}{2}{1}"-f'Hi','n','dde'})]
        [String]
        ${W`I`N`dOwstYLe},

        [ValidateSet({"{0}{1}"-f'Byp','ass'}, {"{2}{0}{3}{1}" -f 'tric','ed','Unres','t'}, {"{3}{1}{0}{2}" -f'ig','eS','ned','Remot'}, {"{2}{1}{0}"-f'gned','llSi','A'}, {"{1}{2}{0}"-f'd','Rest','ricte'})]
        [String]
        ${e`X`ec`UTIO`NpoliCy},
        
        [Switch]
        ${pASs`THru}
    )

    
    If(${p`sBOun`d`pa`RamEtErS}[("{0}{1}" -f 'Pat','h')])
    {
        &("{3}{2}{4}{1}{0}"-f 'm','Ite','t-','Ge','Child') ${PA`Th} -ErrorAction ("{0}{1}"-f'St','op') | &("{0}{2}{1}"-f'O','t-Null','u')
        ${scRipt`S`TRI`NG} =   $NSDf::("{2}{3}{0}{1}"-f'dAl','lText','Re','a').Invoke((&("{2}{1}{3}{0}" -f 'e-Path','eso','R','lv') ${pa`TH}))
    }
    Else
    {
        ${s`CR`IPt`StRInG} = [String]${ScR`i`ptBlO`Ck}
    }

    
    
    ${rA`N`DOM`DelIMi`TeRS}  = @('_','-',',','{','}','~','!','@','%','&','<','>',';',':')

    
    @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z') | &("{3}{2}{0}{1}" -f'h-Obje','ct','orEac','F') {${upPerLowE`RC`H`AR} = ${_}; If(((&("{1}{2}{0}"-f'dom','Get-','Ran') -Input @(1..2))-1 -eq 0)) {${u`ppErLo`w`eRcHaR} = ${U`p`pE`RLow`ERchAr}.("{0}{2}{1}"-f'ToUp','r','pe').Invoke()} ${RaN`DOMD`e`Li`m`iTers} += ${up`pEr`LO`We`RCHar}}
    
    
    ${RANdoMDelim`i`T`eRs} = (&("{2}{1}{3}{0}" -f 'om','R','Get-','and') -Input ${r`AnDOM`dEl`imitERs} -Count (${RAndO`m`DeLi`m`i`TerS}."Co`UnT"/4))

    
    ${dELIm`ItEDE`NCODe`d`AR`R`Ay} = ''
    ([Char[]]${sC`RI`PtS`TRiNg}) | &("{1}{3}{2}{0}" -f 'ct','For','bje','Each-O') {${delImi`TED`EncO`DeDArr`Ay} += ([String]([Int][Char]${_}) + (&("{0}{1}{3}{2}" -f 'G','e','andom','t-R') -Input ${RAN`d`omDel`imiteRs}))}

    
    ${De`lImiTe`denC`oDE`dar`RAy} = ${dEL`I`Mit`EdenCod`eD`ARR`Ay}.("{2}{0}{1}"-f 'ubS','tring','S').Invoke(0,${D`eLiMITEdE`NCod`E`dARray}."LEnG`TH"-1)

    
    ${rAnDO`MdeliM`i`Terst`O`pRi`NT} = (&("{0}{1}{2}"-f'Get-R','a','ndom') -Input ${rANd`oMdEL`imIT`E`Rs} -Count ${rAND`OMd`EL`IMiT`eRS}."LE`NGTH") -Join ''

    
    ${fo`ReachO`BJ`ECT} = &("{0}{3}{1}{2}" -f 'Ge','o','m','t-Rand') -Input @(("{0}{1}"-f 'Fo','rEach'),("{3}{1}{4}{0}{2}"-f 'je','orEach','ct','F','-Ob'),'%')
    ${sT`RJo`in}       = ([Char[]]("{1}{3}{2}{0}"-f 'n','[S','Joi','tring]::') | &("{4}{0}{2}{1}{3}" -f 'or','-Ob','Each','ject','F') {${C`HaR} = ${_}.("{1}{2}{0}" -f'ing','ToSt','r').Invoke().("{0}{1}{2}"-f 'ToL','owe','r').Invoke(); If(&("{2}{1}{0}"-f 'm','et-Rando','G') -Input @(0..1)) {${cH`AR} = ${C`haR}.("{0}{1}{2}" -f'ToU','ppe','r').Invoke()} ${C`hAR}}) -Join ''
    ${St`RsTR}        = ([Char[]]("{0}{1}{2}"-f '[St','ri','ng]')       | &("{2}{4}{3}{0}{1}"-f'e','ct','F','ach-Obj','orE') {${C`har} = ${_}.("{1}{2}{0}" -f 'g','T','oStrin').Invoke().("{1}{0}{2}"-f'Low','To','er').Invoke(); If(&("{1}{3}{2}{0}" -f'm','Ge','Rando','t-') -Input @(0..1)) {${Ch`Ar} = ${C`har}.("{0}{2}{1}"-f 'ToU','er','pp').Invoke()} ${cH`Ar}}) -Join ''
    ${j`OIn}          = ([Char[]]("{0}{1}" -f'-Joi','n')          | &("{3}{2}{1}{0}" -f't','bjec','orEach-O','F') {${c`HAr} = ${_}.("{1}{0}" -f'oString','T').Invoke().("{1}{2}{0}" -f 'Lower','T','o').Invoke(); If(&("{1}{0}{2}"-f't-R','Ge','andom') -Input @(0..1)) {${ch`Ar} = ${Ch`AR}.("{2}{0}{1}" -f'o','Upper','T').Invoke()} ${C`HAr}}) -Join ''
    ${CHa`R`stR}       = ([Char[]]("{0}{1}" -f'Ch','ar')           | &("{0}{2}{1}"-f'ForEach','ect','-Obj') {${CH`Ar} = ${_}.("{2}{1}{0}"-f'ng','tri','ToS').Invoke().("{0}{1}" -f'ToLowe','r').Invoke(); If(&("{1}{0}{2}" -f 'and','Get-R','om') -Input @(0..1)) {${C`Har} = ${cH`AR}.("{0}{1}{2}" -f 'To','Upp','er').Invoke()} ${C`hAr}}) -Join ''
    ${i`NT}           = ([Char[]]'Int'            | &("{0}{1}{2}"-f'ForE','ach-Ob','ject') {${CH`Ar} = ${_}.("{1}{2}{0}"-f 'g','T','oStrin').Invoke().("{2}{1}{0}"-f'r','we','ToLo').Invoke(); If(&("{2}{1}{0}"-f'om','nd','Get-Ra') -Input @(0..1)) {${Ch`Ar} = ${CH`AR}.("{1}{0}" -f'oUpper','T').Invoke()} ${C`Har}}) -Join ''
    ${f`o`REAc`hoBj`ECT} = ([Char[]]${FoREach`ObJE`Ct}   | &("{1}{3}{2}{4}{0}"-f'Object','For','ac','E','h-') {${C`HAR} = ${_}.("{2}{1}{0}" -f'ng','tri','ToS').Invoke().("{0}{1}"-f 'To','Lower').Invoke(); If(&("{3}{2}{1}{0}"-f 'ndom','Ra','-','Get') -Input @(0..1)) {${cH`Ar} = ${C`HAr}.("{0}{1}" -f'ToUp','per').Invoke()} ${C`haR}}) -Join ''

    
    ${rAn`DOmD`el`iMi`TErSto`p`RINtfoR`DASHSp`lIt} = ''
    ForEach(${r`A`NDO`md`EliMitER} in ${ran`Do`mde`L`IM`ITERs})
    {
        
        ${s`pliT} = ([Char[]]("{0}{1}"-f'Sp','lit') | &("{0}{3}{1}{2}"-f 'ForEac','Objec','t','h-') {${C`Har} = ${_}.("{0}{1}{2}" -f'ToSt','rin','g').Invoke().("{0}{2}{1}" -f'T','er','oLow').Invoke(); If(&("{2}{0}{1}" -f'R','andom','Get-') -Input @(0..1)) {${cH`Ar} = ${C`HaR}.("{1}{2}{0}" -f 'r','To','Uppe').Invoke()} ${cH`AR}}) -Join ''

        ${rA`N`D`oM`D`Elim`ItersTOp`RintFoR`DaShS`Pl`It} += ('-' + ${S`PLit} + ' '*(&("{1}{2}{0}" -f'andom','Get','-R') -Input @(0,1)) + "'" + ${RAndO`MdEl`iM`IT`er} + "'" + ' '*(&("{2}{0}{1}" -f 'et-Rando','m','G') -Input @(0,1)))
    }
    ${R`A`NdOMD`eLI`mITERStOPr`iN`TfORdAsHSPLit} = ${RanDOM`dE`lIm`iTERSToPRIntFOrdAs`hspL`IT}.("{0}{1}"-f 'Tr','im').Invoke()
    
    
    ${rA`ND`omcO`NVERSI`onSyntAX}  = @()
    ${Ra`NdOMcoN`VeRsiO`NSY`NtAx} += "[$CharStr]" + ' '*(&("{2}{1}{0}"-f 'm','do','Get-Ran') -Input @(0,1)) + "[$Int]" + ' '*(&("{0}{1}{2}" -f'Get-','Ra','ndom') -Input @(0,1)) + '$_'
    ${R`AnDOmcOn`Ve`RSIoN`SyntAx} += ("[$Int]" + ' '*(&("{2}{1}{0}" -f'om','et-Rand','G') -Input @(0,1)) + '$_' + ' '*(&("{1}{2}{0}" -f'ndom','Ge','t-Ra') -Input @(0,1)) + (&("{1}{2}{0}"-f '-Random','Ge','t') -Input @('-as','-As','-aS','-AS')) + ' '*(&("{1}{0}{2}" -f'a','Get-R','ndom') -Input @(0,1)) + "[$CharStr]")
    ${r`AnDOMCONvER`s`IoNSY`N`TAX} = (&("{1}{2}{3}{0}"-f 'm','G','et-R','ando') -Input ${r`ANDomcOn`VERsiO`Ns`yN`TAx})

    
    ${En`Co`deda`RraY} = ''
    ([Char[]]${scrip`TST`RI`Ng}) | &("{1}{4}{2}{0}{3}"-f '-Objec','F','h','t','orEac') {${E`NC`Od`eda`RRay} += ([String]([Int][Char]${_}) + ' '*(&("{1}{0}{2}"-f 't-R','Ge','andom') -Input @(0,1)) + ',' + ' '*(&("{1}{0}{2}"-f'-Rand','Get','om') -Input @(0,1)))}

    
    ${E`NCOd`edAr`RAY} = ('(' + ' '*(&("{2}{3}{0}{1}"-f 'ndo','m','G','et-Ra') -Input @(0,1)) + ${e`NcOD`e`DArRay}.("{1}{0}"-f 'm','Tri').Invoke().("{1}{0}" -f 'rim','T').Invoke(',') + ')')

    
    
    
    
    ${sE`Tof`svaR`SYnTax}      = @()
    ${Se`Tofs`VAr`syNTAx}     += ("{0}{1}" -f 'S','et-Item') + ' '*(&("{1}{0}{3}{2}" -f 'et','G','dom','-Ran') -Input @(1,2)) + ((("{0}{4}{1}{3}{2}"-f'{','Varia',':OFS{0}','ble','0}'))-F [cHAR]39) + ' '*(&("{2}{0}{1}"-f'et-Ran','dom','G') -Input @(1,2)) + "''"
    ${SeT`ofsVa`RS`yNtax}     += (&("{0}{2}{1}" -f'Get-','andom','R') -Input @(("{0}{2}{1}{3}" -f'S','ari','et-V','able'),'SV','SET')) + ' '*(&("{0}{2}{1}" -f 'Get-R','ndom','a') -Input @(1,2)) + ((("{0}{2}{1}" -f'yLmO','Lm','FSy')) -crePLace  'yLm',[Char]39) + ' '*(&("{2}{1}{0}"-f'dom','an','Get-R') -Input @(1,2)) + "''"
    ${S`etOfs`VAR}            = (&("{0}{1}{2}"-f'Get-Ra','ndo','m') -Input ${SE`T`ofsV`ArSY`NTAX})

    ${S`Et`ofsVArb`AC`KsYN`TAX}  = @()
    ${SeTOF`sv`ARB`ACKS`y`NTax} += ("{2}{1}{0}"-f'm','Ite','Set-') + ' '*(&("{0}{1}{2}"-f'G','e','t-Random') -Input @(1,2)) + ((("{1}{0}{2}" -f 'Variable:OFS','{0}','{0}'))  -f [Char]39) + ' '*(&("{0}{1}{2}" -f 'Ge','t-Ran','dom') -Input @(1,2)) + "' '"
    ${S`EtoFSVArBa`C`ksy`NTaX} += (&("{0}{3}{2}{1}"-f 'G','Random','t-','e') -Input @(("{1}{2}{0}"-f'e','Se','t-Variabl'),'SV','SET')) + ' '*(&("{3}{0}{1}{2}" -f '-','Rando','m','Get') -Input @(1,2)) + ((("{1}{0}"-f'}OFS{0}','{0'))-F  [char]39) + ' '*(&("{1}{0}{2}"-f 't-Rando','Ge','m') -Input @(1,2)) + "' '"
    ${Se`TOfS`V`ArBa`Ck}        = (&("{1}{2}{0}" -f 'andom','Get','-R') -Input ${SeT`Of`sVa`R`BaCKSyNTax})

    
    ${SE`TO`Fs`VAr}            = ([Char[]]${s`EtO`F`svAR}     | &("{1}{2}{0}"-f'bject','ForEach-','O') {${ch`Ar} = ${_}.("{1}{0}{2}"-f 'oStr','T','ing').Invoke().("{1}{0}" -f 'Lower','To').Invoke(); If(&("{3}{0}{2}{1}" -f'and','m','o','Get-R') -Input @(0..1)) {${C`har} = ${ch`Ar}.("{2}{0}{1}" -f'ppe','r','ToU').Invoke()} ${Ch`Ar}}) -Join ''
    ${sEtO`Fsv`ARBacK}        = ([Char[]]${S`eTOfsVa`RBA`Ck} | &("{1}{0}{2}" -f'ch','ForEa','-Object') {${ch`AR} = ${_}.("{1}{0}" -f 'g','ToStrin').Invoke().("{0}{1}"-f'ToL','ower').Invoke(); If(&("{2}{3}{0}{1}" -f'a','ndom','G','et-R') -Input @(0..1)) {${C`hAr} = ${C`hAR}.("{1}{0}" -f'Upper','To').Invoke()} ${c`haR}}) -Join ''

    
    ${BaSEsCRi`P`T`A`RrAY}  = @()
    ${bASE`sC`Rip`TarRAY} += "[$CharStr[]]" + ' '*(&("{0}{1}{2}"-f 'Get-Ra','ndo','m') -Input @(0,1)) + ${e`NcoDEdA`RR`Ay}
    ${bAs`EscrIPTa`R`RAy} += '(' + ' '*(&("{3}{0}{1}{2}"-f'-','Ran','dom','Get') -Input @(0,1)) + "'" + ${De`Li`mItED`EN`COdEDAR`RaY} + "'." + ${sPl`it} + "(" + ' '*(&("{2}{1}{0}" -f'ndom','a','Get-R') -Input @(0,1)) + "'" + ${raNdo`Md`eL`imIters`T`op`RINT} + "'" + ' '*(&("{0}{2}{1}"-f'Get-','m','Rando') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}" -f 'Ge','andom','t-R') -Input @(0,1)) + '|' + ' '*(&("{0}{1}{2}"-f'Get','-Ra','ndom') -Input @(0,1)) + ${FOr`EA`C`HoBjEct} + ' '*(&("{1}{0}{2}" -f 'et-Ran','G','dom') -Input @(0,1)) + '{' + ' '*(&("{1}{2}{0}"-f 'ndom','Ge','t-Ra') -Input @(0,1)) + '(' + ' '*(&("{0}{1}{2}"-f 'Get-Ra','ndo','m') -Input @(0,1)) + ${randomc`on`VERs`IoN`Syn`T`Ax} + ')' +  ' '*(&("{1}{2}{0}" -f 'Random','G','et-') -Input @(0,1)) + '}' + ' '*(&("{1}{3}{0}{2}"-f '-','Ge','Random','t') -Input @(0,1)) + ')'
    ${baSeScr`I`PTaR`Ray} += '(' + ' '*(&("{2}{1}{0}"-f'andom','R','Get-') -Input @(0,1)) + "'" + ${D`eLimI`TEd`EnCOd`edArr`AY} + "'" + ' '*(&("{2}{1}{0}"-f'Random','-','Get') -Input @(0,1)) + ${R`AN`DO`m`dELiM`IT`ERs`ToPRiNtfordASHSPLiT} + ' '*(&("{2}{0}{1}"-f 't-Rand','om','Ge') -Input @(0,1)) + '|' + ' '*(&("{2}{1}{0}{3}"-f 't-Rando','e','G','m') -Input @(0,1)) + ${fOREAchO`B`j`eCT} + ' '*(&("{2}{0}{3}{1}" -f't-R','om','Ge','and') -Input @(0,1)) + '{' + ' '*(&("{2}{1}{0}"-f'ndom','-Ra','Get') -Input @(0,1)) + '(' + ' '*(&("{1}{0}{2}"-f'nd','Get-Ra','om') -Input @(0,1)) + ${R`A`N`d`OMConvERsi`ONSyntAx} + ')' +  ' '*(&("{1}{0}{2}"-f'R','Get-','andom') -Input @(0,1)) + '}' + ' '*(&("{0}{1}{2}" -f 'Get','-Rando','m') -Input @(0,1)) + ')'
    ${B`As`escr`ipTAr`Ray} += '(' + ' '*(&("{1}{2}{0}{3}" -f '-Rando','Ge','t','m') -Input @(0,1)) + ${ENcOd`EdarR`AY} + ' '*(&("{0}{1}{2}" -f 'Get-Ra','nd','om') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}" -f 'om','Get','-Rand') -Input @(0,1)) + ${f`OR`eacHob`jE`cT} + ' '*(&("{1}{0}{2}" -f'n','Get-Ra','dom') -Input @(0,1)) + '{' + ' '*(&("{2}{1}{0}" -f'andom','-R','Get') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}{3}"-f'd','Ran','Get-','om') -Input @(0,1)) + ${RAnD`om`COn`VerSI`oNS`y`NtAX} + ')' +  ' '*(&("{2}{3}{1}{0}" -f 'm','ndo','Get','-Ra') -Input @(0,1)) + '}' + ' '*(&("{2}{3}{0}{1}" -f't-Rando','m','G','e') -Input @(0,1)) + ')'
    
    
    ${NEWSc`R`iptA`R`RAY}   = @()
    ${neWsC`RIpT`A`Rr`AY}  += (&("{1}{0}{2}" -f'et-Ra','G','ndom') -Input ${ba`SESCri`pT`Array}) + ' '*(&("{1}{2}{0}"-f 'm','Ge','t-Rando') -Input @(0,1)) + ${jO`in} + ' '*(&("{0}{2}{1}" -f'Get-Rand','m','o') -Input @(0,1)) + "''"
    ${nE`wScRip`TAR`RAy}  += ${J`Oin} + ' '*(&("{2}{1}{0}" -f'om','d','Get-Ran') -Input @(0,1)) + (&("{3}{0}{2}{1}" -f 't-Ra','dom','n','Ge') -Input ${b`ASesCri`pTAr`RAy})
    ${ne`WSCRI`PTar`RAY}  += ${strj`o`In} + '(' + ' '*(&("{0}{1}{2}"-f'Get-R','ando','m') -Input @(0,1)) + "''" + ' '*(&("{1}{2}{0}"-f 'm','Get-R','ando') -Input @(0,1)) + ',' + ' '*(&("{1}{0}{2}"-f'a','Get-R','ndom') -Input @(0,1)) + (&("{2}{0}{1}"-f 'et-R','andom','G') -Input ${b`ASESc`RIpTa`R`RaY}) + ' '*(&("{0}{2}{1}" -f 'Get','andom','-R') -Input @(0,1)) + ')'
    ${nEwsCRI`p`T`ARRaY}  += '"' + ' '*(&("{2}{1}{0}"-f'ndom','a','Get-R') -Input @(0,1)) + '$(' + ' '*(&("{1}{3}{0}{2}" -f 'Ra','Get','ndom','-') -Input @(0,1)) + ${s`EtofSV`AR} + ' '*(&("{0}{1}{2}"-f'G','et-','Random') -Input @(0,1)) + ')' + ' '*(&("{1}{2}{0}"-f 'om','Ge','t-Rand') -Input @(0,1)) + '"' + ' '*(&("{1}{3}{0}{2}"-f'o','G','m','et-Rand') -Input @(0,1)) + '+' + ' '*(&("{0}{1}{2}" -f'Get-Ran','do','m') -Input @(0,1)) + ${StRs`TR} + (&("{0}{2}{1}"-f'G','-Random','et') -Input ${bASeScRIpTa`R`R`Ay}) + ' '*(&("{2}{0}{1}" -f'o','m','Get-Rand') -Input @(0,1)) + '+' + '"' + ' '*(&("{1}{2}{0}" -f'om','Get-Ran','d') -Input @(0,1)) + '$(' + ' '*(&("{1}{2}{0}"-f'om','G','et-Rand') -Input @(0,1)) + ${sETOFsva`R`BAcK} + ' '*(&("{2}{0}{1}"-f 'et-R','andom','G') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}"-f'Get-R','a','ndom') -Input @(0,1)) + '"'
    
    
    ${NewS`cr`I`Pt} = (&("{0}{1}{2}" -f'Ge','t','-Random') -Input ${N`eW`ScR`iPtArr`Ay})

    
    
    ${i`NvOKEe`xpr`ess`iO`NsyNtaX}  = @()
    ${INVOKee`x`PR`eSs`i`ONsYNTAX} += (&("{1}{0}{2}" -f'e','G','t-Random') -Input @('IEX',("{3}{2}{0}{1}" -f 'xpr','ession','E','Invoke-')))
    
    
    
    ${InVOcatiONo`Pe`RA`Tor} = (&("{1}{2}{0}" -f'-Random','Ge','t') -Input @('.','&')) + ' '*(&("{2}{1}{0}" -f'm','et-Rando','G') -Input @(0,1))
    ${iNVokeeXPres`si`OnsY`NTAX} += ${i`NvocA`TIo`N`opeRATor} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${I`N`VOK`eEXPrESsIo`NSyntaX} += ${invOC`ATIonO`P`er`A`Tor} + ('( '+"`$PSHome[") + (&("{0}{1}{2}{3}"-f'Get-','R','an','dom') -Input @(4,21)) + "]+`$PSHome[" + (&("{2}{0}{1}" -f'et-Ran','dom','G') -Input @(30,34)) + (((("{2}{1}{0}"-f '{0})','}x',']+{0')) -F  [chAR]39))
    ${invOKEex`prESsIons`Y`NT`Ax} += ${iN`VO`CATIONOPe`RA`ToR} + ('( '+"`$env:ComSpec[4,") + (&("{2}{0}{1}"-f't-Ran','dom','Ge') -Input @(15,24,26)) + (((("{0}{2}{1}{4}{3}" -f',25]-J','n','oi','R9)','lR9l'))-CRePlaCe  'lR9',[ChaR]39))
    ${INV`oKEeXPRe`SsiOns`y`Ntax} += ${iN`V`OcaTI`O`NOPeRA`T`OR} + "((" + (&("{3}{0}{2}{1}" -f 'et','om','-Rand','G') -Input @(("{2}{0}{1}{3}"-f 'V','a','Get-','riable'),'GV',("{1}{2}{0}" -f 'le','V','ariab'))) + (((("{6}{2}{3}{5}{1}{4}{9}{8}{7}{0}{11}{10}" -f'n','.','3Nq*mdr','*3Nq','Name',')',' ','i','11,2]-Jo','[3,','3Nq)','3Nq')) -RepLAcE  ([cHaR]51+[cHaR]78+[cHaR]113),[cHaR]39))
    ${IN`VOK`eeXPR`eSsI`oNsyNTAx} += ${INVO`c`AtiONO`p`erat`oR} + "( " + (&("{3}{2}{1}{0}"-f 'm','ndo','et-Ra','G') -Input @((('{'+'0}Ver'+'bosePr'+'e'+'ference'+'.T'+'o'+'Stri'+'ng()')-F [cHar]36),(('([Str'+'ing'+']hP8Ve'+'r'+'boseP'+'reference)')."reP`laCE"(([chAR]104+[chAR]80+[chAR]56),'$')))) + ((("{4}{3}{0}{5}{1}{2}" -f 'n','o','inn2fn2f)','3]+','[1,','2fxn2f-J'))."R`ePl`ACE"(([cHar]110+[cHar]50+[cHar]102),[stRINg][cHar]39))
    
    

    
    ${iNvOk`Ee`xpR`ESSIon} = (&("{2}{1}{0}" -f'm','ndo','Get-Ra') -Input ${IN`Vok`E`ex`PRESsio`N`sYNTAx})

    
    ${inVoKeExP`ReSs`i`On} = ([Char[]]${inv`okeEXP`REs`SiOn} | &("{2}{1}{3}{0}"-f 'ject','rEac','Fo','h-Ob') {${ch`Ar} = ${_}.("{1}{0}" -f'ing','ToStr').Invoke().("{0}{1}"-f'To','Lower').Invoke(); If(&("{0}{2}{1}" -f 'Get-Ra','dom','n') -Input @(0..1)) {${c`haR} = ${C`haR}.("{0}{1}{2}"-f'T','oUppe','r').Invoke()} ${C`HaR}}) -Join ''
    
    
    ${iN`Vo`k`EOPtiONs}  = @()
    ${invO`kE`OPt`i`onS} += ' '*(&("{1}{2}{3}{0}" -f 'om','Get','-Ran','d') -Input @(0,1)) + ${iNv`o`KEe`x`PRES`sIoN} + ' '*(&("{0}{2}{1}"-f'Ge','Random','t-') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}" -f 'dom','et-Ran','G') -Input @(0,1)) + ${neW`scR`IPt} + ' '*(&("{2}{0}{1}{3}"-f 'Ra','ndo','Get-','m') -Input @(0,1)) + ')' + ' '*(&("{2}{0}{1}"-f 'n','dom','Get-Ra') -Input @(0,1))
    ${In`VoKEO`pTiO`NS} += ' '*(&("{2}{1}{0}" -f '-Random','et','G') -Input @(0,1)) + ${N`ewS`cRIpt} + ' '*(&("{2}{0}{1}" -f 'nd','om','Get-Ra') -Input @(0,1)) + '|' + ' '*(&("{1}{0}{2}" -f 'nd','Get-Ra','om') -Input @(0,1)) + ${i`N`VO`KeExPRe`S`SIoN}

    ${n`EWsCRi`pt} = (&("{1}{2}{0}"-f 'dom','G','et-Ran') -Input ${I`NvO`KEop`TIOns})

    
    If(!${P`sB`OU`NDPa`RAmE`TERs}[("{0}{1}{2}"-f'Pa','ss','Thru')])
    {
        
        ${p`Ower`SHe`LLFl`AGS} = @()

        
        
        ${cOM`mA`ND`L`INE`oPtIONs} = &("{0}{2}{1}" -f 'New-','bject','O') ("{1}{2}{0}" -f']','String','[')(0)
        If(${Ps`BouN`DpARaM`eT`eRS}[("{0}{2}{1}"-f 'N','t','oExi')])
        {
          ${fU`LlaRG`U`menT} = ("{0}{1}"-f'-NoEx','it');
          ${C`o`mm`ANDlIN`EoPt`ions} += ${fu`L`larGUMENt}.("{2}{0}{1}"-f 'b','String','Su').Invoke(0,(&("{0}{1}{2}" -f'G','et-','Random') -Minimum 4 -Maximum (${fULl`A`RguMenT}."LEn`G`TH"+1)))
        }
        If(${Ps`BoU`NdpaRAme`TErs}[("{1}{2}{3}{0}" -f 'e','N','oPr','ofil')])
        {
          ${FUlL`Ar`GuME`NT} = ("{0}{1}{2}"-f'-N','oPr','ofile');
          ${coMMANdl`i`N`eOpTIoNs} += ${F`UL`LARGUme`NT}.("{1}{2}{0}{3}" -f 'trin','Sub','S','g').Invoke(0,(&("{1}{2}{0}" -f 'andom','Ge','t-R') -Minimum 4 -Maximum (${FU`Ll`A`RGUMEnt}."lENg`Th"+1)))
        }
        If(${p`sbOU`N`Dp`ARameTers}[("{0}{2}{3}{1}" -f 'NonInt','ive','er','act')])
        {
          ${fUlL`A`RGU`MEnT} = ("{2}{4}{0}{1}{3}"-f 'In','t','-N','eractive','on');
          ${COmMANdlINE`o`PTIo`NS} += ${FU`Ll`A`RGumeNt}.("{0}{2}{1}" -f'Su','ng','bStri').Invoke(0,(&("{0}{2}{1}"-f'Get','m','-Rando') -Minimum 5 -Maximum (${Ful`l`Ar`GUment}."le`NG`TH"+1)))
        }
        If(${P`Sb`OUndParAM`E`T`ERS}[("{0}{1}" -f'N','oLogo')])
        {
          ${fU`llarGu`M`ENT} = ("{2}{0}{1}" -f'Lo','go','-No');
          ${COMmaN`d`liNe`O`PTIOns} += ${ful`la`R`GuMe`NT}.("{2}{1}{0}"-f 'String','ub','S').Invoke(0,(&("{2}{1}{0}"-f'andom','t-R','Ge') -Minimum 4 -Maximum (${f`UlL`ArgUM`Ent}."LEn`GTH"+1)))
        }
        If(${ps`BOun`dpa`RAMeTers}[("{0}{1}{2}" -f 'WindowS','ty','le')] -OR ${wI`NDOw`S`sTy`lE})
        {
            ${fulLa`Rgum`eNt} = ("{2}{0}{3}{1}" -f'S','e','-Window','tyl')
            If(${WI`Ndow`SS`TyLE}) {${aR`GUm`enT`Val`UE} = ${w`IN`d`owsSTyle}}
            Else {${argumeNT`VA`lue} = ${PsBo`U`ND`P`ArAM`Eters}[("{0}{1}{2}"-f 'W','indow','Style')]}

            
            Switch(${a`RGUmE`NTV`AluE}.("{0}{1}{2}"-f 'T','oLo','wer').Invoke())
            {
                ("{1}{0}"-f 'l','norma')    {If(&("{0}{1}{2}" -f'Get','-R','andom') -Input @(0..1)) {${aRgUmEnt`V`AL`UE} = (&("{0}{2}{1}"-f'G','andom','et-R') -Input @('0','n','no','nor',("{1}{0}" -f 'rm','no'),("{0}{1}" -f 'n','orma')))}}
                ("{0}{1}"-f 'hidde','n')    {If(&("{2}{1}{0}" -f'm','ndo','Get-Ra') -Input @(0..1)) {${Ar`GuMeN`TvaLuE} = (&("{1}{2}{0}"-f'om','G','et-Rand') -Input @('1','h','hi','hid',("{0}{1}"-f'hid','d'),("{0}{1}"-f'hid','de')))}}
                ("{2}{0}{1}"-f 'z','ed','minimi') {If(&("{2}{1}{0}"-f 'andom','R','Get-') -Input @(0..1)) {${AR`GUmENT`V`ALuE} = (&("{2}{1}{0}"-f'Random','t-','Ge') -Input @('2','mi','min',("{0}{1}"-f 'mi','ni'),("{0}{1}" -f'min','im'),("{1}{2}{0}" -f'i','m','inim'),("{0}{1}" -f'mini','miz'),("{1}{0}{2}" -f'miz','mini','e')))}}
                ("{1}{3}{2}{0}"-f 'zed','ma','mi','xi') {If(&("{0}{1}{2}{3}" -f 'Get-','Ran','do','m') -Input @(0..1)) {${a`RGuMe`NTVal`UE} = (&("{1}{0}{2}{3}" -f 'et-R','G','an','dom') -Input @('3','ma','max',("{0}{1}" -f 'max','i'),("{1}{0}"-f 'im','max'),("{1}{0}"-f 'mi','maxi'),("{0}{1}"-f'maxi','miz'),("{0}{1}"-f 'maximi','ze')))}}
                ("{1}{0}"-f 'efault','d') {&("{1}{2}{0}"-f 'rror','Write','-E') ('An'+' '+'i'+'nvalid '+"`$ArgumentValue "+'v'+'alue '+"($ArgumentValue) "+'was'+' '+'pa'+'sse'+'d '+'t'+'o '+'switc'+'h '+'b'+'lock '+'fo'+'r '+'Ou'+'t-'+'PowerS'+'hel'+'lLa'+'uncher.'); Exit;}
            }

            ${po`werS`HEll`FlA`gS} += ${fulLAR`gu`MenT}.("{1}{0}{2}"-f 'bS','Su','tring').Invoke(0,(&("{1}{2}{0}"-f'dom','G','et-Ran') -Minimum 2 -Maximum (${f`U`lL`ARGuMeNt}."le`NGTh"+1))) + ' '*(&("{1}{2}{0}" -f 'dom','Ge','t-Ran') -Minimum 1 -Maximum 3) + ${ar`Gu`M`ENt`VAlue}
        }
        If(${Ps`BOu`ND`ParAMEtERS}[("{0}{1}{2}{3}{4}"-f'E','xecution','Po','l','icy')] -OR ${E`xEC`UtIoNP`Ol`ICy})
        {
            ${Fu`l`LaRGU`mENt} = ("{1}{4}{3}{2}{0}"-f 'y','-Exec','ic','ol','utionP')
            If(${ex`ECu`TIOn`p`oLICY}) {${A`R`g`UmE`NTVaLUE} = ${E`xEC`Ut`ION`PoLIcy}}
            Else {${a`Rg`UMENtvALuE} = ${psBo`U`ND`PArAmEt`ErS}[("{3}{1}{0}{2}" -f'olic','nP','y','Executio')]}
            
            ${E`XECUtIOnP`o`l`IcYflags} = @()
            ${e`x`E`cUtiONpOLICYFLAGs} += '-EP'
            For(${i`N`dEx}=3; ${iN`dex} -le ${fUlLArG`UmE`Nt}."LEN`Gth"; ${i`N`DEx}++)
            {
                ${E`Xec`U`TIOnpoLI`cy`FLags} += ${F`ULLaRg`UMeNT}.("{2}{0}{1}"-f 'bS','tring','Su').Invoke(0,${in`D`Ex})
            }
            ${ExECuTio`NPOl`i`cYfl`AG} = &("{2}{0}{1}"-f 'e','t-Random','G') -Input ${eX`ec`UtIo`NpoLi`cY`FLa`Gs}
            ${PoWeRSHel`LF`LaGS} += ${E`XEcut`ioNPOL`Ic`Yf`lAg} + ' '*(&("{2}{0}{1}" -f'n','dom','Get-Ra') -Minimum 1 -Maximum 3) + ${aRgumE`Ntva`l`UE}
        }
        
        
        
        If(${coMm`A`NDLinEopt`I`O`NS}."cOu`Nt" -gt 1)
        {
            ${COMMaN`dLiNe`oP`TI`ONS} = &("{1}{0}{2}"-f '-Rand','Get','om') -InputObject ${coMMANd`L`I`NEOP`T`I`OnS} -Count ${c`omm`An`dlIN`EOPt`ioNS}."Co`UNT"
        }

        
        If(${Ps`Bo`UNDPAR`Am`eTerS}[("{1}{0}" -f 'mand','Com')])
        {
            ${f`U`L`LargU`ment} = ("{0}{1}{2}" -f'-','Co','mmand')
            ${Co`M`MaNDli`N`eoPTI`O`Ns} += ${full`A`Rg`UMEnT}.("{0}{1}{2}" -f 'Su','b','String').Invoke(0,(&("{0}{2}{1}" -f 'Get','om','-Rand') -Minimum 2 -Maximum (${FU`lL`Arg`UMent}."L`ENGtH"+1)))
        }

        
        For(${i}=0; ${I} -lt ${pO`WERs`hE`llFlagS}."c`OuNt"; ${i}++)
        {
            ${POw`erSH`elLf`LAgS}[${i}] = ([Char[]]${p`oweRsHE`LL`FlagS}[${I}] | &("{2}{0}{1}{3}" -f 'o','rEa','F','ch-Object') {${CH`Ar} = ${_}.("{2}{1}{0}"-f'ing','r','ToSt').Invoke().("{1}{0}{2}"-f 'o','T','Lower').Invoke(); If(&("{1}{0}{2}"-f 'et-Rand','G','om') -Input @(0..1)) {${C`har} = ${C`HAr}.("{1}{0}{2}"-f 'o','T','Upper').Invoke()} ${ch`Ar}}) -Join ''
        }

        
        ${CO`MmANd`lIN`eoP`TIO`Ns} = (${C`oMM`ANdL`In`eopTiOnS} | &("{2}{3}{1}{0}"-f 'ect','-Obj','Fo','rEach') {${_} + " "*(&("{0}{2}{1}"-f 'Get-Rand','m','o') -Minimum 1 -Maximum 3)}) -Join ''
        ${CO`MmAND`LI`N`eoptiONs} = " "*(&("{2}{1}{0}"-f 'andom','t-R','Ge') -Minimum 0 -Maximum 3) + ${C`om`MAndlINeOp`TiONS} + " "*(&("{1}{3}{2}{0}" -f 'm','Get-R','ndo','a') -Minimum 0 -Maximum 3)

        
        If(${psBoUn`D`Pa`R`AMETErs}[("{0}{1}" -f 'W','ow64')])
        {
            ${cOmMaN`D`Lineo`U`TPut} = "C:\WINDOWS\SysWOW64\WindowsPowerShell\v1.0\powershell.exe $($CommandlineOptions) `"$NewScript`" "
        }
        Else
        {
            
            
            ${Co`mM`Andl`IN`e`oUTPuT} = "powershell $($CommandlineOptions) `"$NewScript`" "
        }

        
        ${c`mDMAxLeng`TH} = 8190
        If(${co`mma`NDlInE`OUtP`Ut}."leN`GTh" -gt ${c`mdm`AxLe`N`gth})
        {
            &("{1}{2}{3}{0}"-f 'g','Writ','e-Wa','rnin') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        }
        
        ${NEw`S`cR`IPT} = ${COMmaNdLi`NeO`U`TpUT}
    }

    Return ${NeWS`Cr`Ipt}
}
