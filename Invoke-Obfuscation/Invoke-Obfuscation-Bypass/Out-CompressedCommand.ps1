${9DU`S1z}  =[tyPe]("{2}{1}{0}"-f'LE','FI','IO.');   &("{1}{0}{2}"-f 'T-Var','Se','iAbLe') ("e5Sc"+"Lv") (  [Type]("{2}{0}{3}{1}"-f'.EN','ing','tEXT','CoD')  )  ; ${I`mL}  =[TyPE]("{6}{7}{8}{1}{4}{5}{2}{3}{0}"-f 'e','n','sI','onmod','.CoMpR','es','i','O.COmPRess','Io') ;  &("{2}{1}{0}"-f '-itEM','T','SE') ("V"+"A"+"RIabLe"+":lwYh") ( [TyPE]("{1}{0}"-F'ERT','CoNv')  ) ; 


















Function ouT-C`O`m`P`REs`S`EdcOmmand
{


    [CmdletBinding(defaUlTPaRAMeTERsetnAme = {"{1}{0}"-f 'Path','File'})] Param (
        [Parameter(posITiOn = 0, vaLUefrOMPIpelINE = ${tr`Ue}, paRamETERsetNaME = "s`c`RIptbL`oCK")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${s`CripTB`l`oCk},

        [Parameter(pOsITion = 0, PArAMEtErSetNaME = "F`ilEp`ATh")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${Pa`TH},

        [Switch]
        ${NO`eXiT},

        [Switch]
        ${nOp`ROfI`le},

        [Switch]
        ${NOnInt`eRa`C`TiVE},

        [Switch]
        ${noL`OGo},

        [Switch]
        ${Wo`W64},
        
        [Switch]
        ${C`Omm`AnD},

        [ValidateSet({"{0}{1}"-f'Norm','al'}, {"{2}{0}{1}"-f'inimize','d','M'}, {"{2}{0}{1}"-f'imiz','ed','Max'}, {"{0}{1}"-f 'H','idden'})]
        [String]
        ${WIndo`W`STy`lE},

        [ValidateSet({"{0}{1}"-f 'Bypas','s'}, {"{1}{2}{3}{0}" -f 'ed','Un','res','trict'}, {"{2}{0}{1}"-f'S','igned','Remote'}, {"{2}{1}{0}" -f 'gned','i','AllS'}, {"{2}{0}{1}" -f'trict','ed','Res'})]
        [String]
        ${EX`E`CUti`onP`oLiCY},
        
        [Switch]
        ${p`Ass`ThRU}
    )

    
    If(${pSbo`UNdPA`Ra`M`EteRS}[("{1}{0}"-f'h','Pat')])
    {
        &("{1}{2}{0}" -f'ildItem','G','et-Ch') ${P`Ath} -ErrorAction ("{0}{1}"-f'Sto','p') | &("{1}{0}"-f'l','Out-Nul')
        ${S`cRIP`T`STri`Ng} =   (  &("{1}{3}{2}{0}" -f 'ble','G','rIa','Et-va')  ("9D"+"uS"+"1Z")).ValUE::("{0}{2}{1}"-f'Re','ytes','adAllB').Invoke((&("{3}{0}{1}{2}" -f'-','Pa','th','Resolve') ${Pa`TH}))
    }
    Else
    {
        ${scr`I`pTstRING} = (  (&("{1}{0}{3}{2}" -f '-V','gET','rIablE','a')  ("E5Sc"+"LV") ).vALUE::"As`cIi").("{2}{1}{0}" -f'es','t','GetBy').Invoke(${sc`RIPtb`lO`CK})
    }

    
    
    ${C`OmpRessE`DSTr`EAM} = &("{1}{2}{3}{0}"-f'bject','N','ew-','O') ("{0}{1}{2}{3}"-f'IO','.Mem','oryStre','am')
    ${D`Eflates`TRE`Am} = &("{0}{2}{1}" -f'N','-Object','ew') ("{2}{1}{4}{3}{0}{5}{6}"-f'n.D','mpr','IO.Co','io','ess','eflat','eStream') (${COm`pr`e`sS`eDs`TREam},  ${I`ml}::"c`OM`PRESs")
    ${deFlat`Es`TReAM}.("{1}{0}"-f 'e','Writ').Invoke(${sCR`IpT`sTR`iNg}, 0, ${SCRI`PTsTR`inG}."len`gTh")
    ${deFlat`esTr`E`AM}.("{1}{0}{2}"-f'os','Disp','e').Invoke()
    ${co`M`preSse`dScRIpTb`Ytes} = ${COMPrE`SS`eDS`TRE`AM}.("{1}{0}{2}"-f 'a','ToArr','y').Invoke()
    ${C`o`M`PRES`SeDST`Ream}.("{1}{0}"-f 'ispose','D').Invoke()
    ${encode`DCO`m`p`RE`sSedSCr`ipT} =   (&('LS')  ("V"+"A"+"RIaBLe"+":LWYH")).VaLuE::"toBASE`64`St`R`ing"(${c`oM`PREsS`EDs`cRiPT`By`TEs})

    
    ${sTR`EaM`Re`ADER}     = &("{2}{1}{0}"-f 'andom','-R','Get') -Input @(("{0}{3}{2}{1}"-f'I','eamReader','.Str','O'),("{5}{0}{3}{2}{4}{1}" -f 'r','ader','a','e','mRe','System.IO.St'))
    ${def`lA`T`eSTr`eam}    = &("{1}{0}{2}" -f 'nd','Get-Ra','om') -Input @(("{0}{3}{4}{1}{2}{6}{5}" -f 'IO.','on.','Defl','Compres','si','tream','ateS'),("{4}{3}{2}{6}{1}{0}{5}"-f'Strea','late','O.Compression.D','stem.I','Sy','m','ef'))
    ${memOrYs`T`R`EAM}     = &("{2}{0}{1}" -f'-Ran','dom','Get') -Input @(("{2}{1}{3}{4}{0}" -f 'tream','e','IO.M','mor','yS'),("{0}{4}{5}{1}{2}{3}"-f 'S','Mem','ory','Stream','ystem','.IO.'))
    ${c`OnVe`Rt}          = &("{1}{0}{2}" -f 'nd','Get-Ra','om') -Input @(("{0}{1}" -f'Conve','rt'),("{3}{2}{0}{1}" -f 's','tem.Convert','y','S'))
    ${Co`Mpr`esS`ionM`oDe}  = &("{2}{1}{0}" -f 'ndom','et-Ra','G') -Input @(("{4}{6}{5}{7}{3}{2}{0}{1}" -f'ompr','essionMode','.C','on','IO.','om','C','pressi'),("{2}{5}{3}{4}{6}{0}{1}"-f 'n.Compres','sionMode','Sy','Compr','ess','stem.IO.','io'))
    ${e`N`c`OdINg}         = &("{0}{3}{2}{1}" -f'Ge','Random','-','t') -Input @(("{0}{1}{2}" -f'Text','.Enc','oding'),("{5}{0}{2}{3}{4}{1}"-f'yst','ng','em','.T','ext.Encodi','S'))
    ${foRea`C`Hob`jECT}    = &("{0}{1}{2}"-f'Get','-Rand','om') -Input @(("{0}{1}" -f'ForE','ach'),("{1}{2}{0}"-f 't','ForEach-Obje','c'),'%')
    ${s`TReA`mre`Ad`er}     = ([Char[]]${St`R`eamRE`ADeR}      | &("{1}{0}{2}" -f'ch-O','ForEa','bject') {${cH`AR} = ${_}.("{1}{2}{0}"-f'g','To','Strin').Invoke().("{2}{0}{1}" -f 'oL','ower','T').Invoke(); If(&("{2}{1}{0}" -f'om','t-Rand','Ge') -Input @(0..1)) {${C`HAR} = ${Ch`Ar}.("{1}{2}{0}" -f'er','ToUp','p').Invoke()} ${c`hAR}}) -Join ''
    ${d`e`FlatE`sTrEAm}    = ([Char[]]${dEflATES`TRe`AM}     | &("{2}{0}{3}{1}"-f'o','t','F','rEach-Objec') {${C`HAR} = ${_}.("{1}{2}{0}"-f'g','ToStr','in').Invoke().("{2}{1}{0}" -f'r','oLowe','T').Invoke(); If(&("{1}{0}{2}{3}"-f 'an','Get-R','d','om') -Input @(0..1)) {${C`haR} = ${cH`Ar}.("{1}{0}"-f'pper','ToU').Invoke()} ${CH`Ar}}) -Join ''
    ${memorys`T`ReaM}     = ([Char[]]${MEM`o`RyST`REaM}      | &("{1}{2}{3}{4}{0}"-f '-Object','F','or','E','ach') {${CH`AR} = ${_}.("{1}{0}" -f'ing','ToStr').Invoke().("{0}{1}" -f'ToLo','wer').Invoke(); If(&("{1}{2}{0}" -f 'om','Get-Ra','nd') -Input @(0..1)) {${CH`Ar} = ${C`HAR}.("{0}{1}"-f 'T','oUpper').Invoke()} ${ch`AR}}) -Join ''
    ${Co`N`VeRT}          = ([Char[]]${cOn`Ve`RT}           | &("{2}{0}{1}"-f 'ach-O','bject','ForE') {${CH`AR} = ${_}.("{0}{1}" -f'ToStrin','g').Invoke().("{0}{1}" -f'T','oLower').Invoke(); If(&("{2}{1}{0}"-f'om','Rand','Get-') -Input @(0..1)) {${CH`AR} = ${C`haR}.("{0}{1}{2}"-f'To','U','pper').Invoke()} ${CH`Ar}}) -Join ''
    ${CO`MPresSi`o`NM`ODE}  = ([Char[]]${co`Mpr`e`ssiOnMOde}   | &("{0}{1}{2}{3}" -f'ForEach-','O','bjec','t') {${CH`AR} = ${_}.("{2}{1}{0}" -f'ing','oStr','T').Invoke().("{0}{1}" -f 'ToLow','er').Invoke(); If(&("{2}{0}{1}"-f 't-Rando','m','Ge') -Input @(0..1)) {${C`har} = ${cH`Ar}.("{2}{0}{1}"-f'oU','pper','T').Invoke()} ${ch`AR}}) -Join ''
    ${EN`CO`diNg}         = ([Char[]]${enCo`Di`Ng}          | &("{3}{1}{2}{0}{4}"-f'-Ob','rE','ach','Fo','ject') {${ch`AR} = ${_}.("{0}{1}" -f 'To','String').Invoke().("{2}{1}{0}"-f'er','Low','To').Invoke(); If(&("{0}{1}{2}" -f 'Get-','R','andom') -Input @(0..1)) {${c`HaR} = ${ch`AR}.("{0}{1}" -f'To','Upper').Invoke()} ${Ch`AR}}) -Join ''
    ${new`OB`JECt}        = ([Char[]]("{0}{2}{1}" -f 'N','Object','ew-')       | &("{4}{1}{0}{3}{2}"-f'b','ach-O','ect','j','ForE') {${c`haR} = ${_}.("{1}{0}{2}"-f 'oStrin','T','g').Invoke().("{1}{0}"-f 'wer','ToLo').Invoke(); If(&("{2}{1}{0}" -f 'm','ando','Get-R') -Input @(0..1)) {${c`har} = ${c`hAr}.("{0}{1}" -f 'To','Upper').Invoke()} ${c`hAr}}) -Join ''
    ${FRO`MBASe`64}       = ([Char[]]("{3}{4}{1}{2}{0}"-f'ring','s','e64St','From','Ba') | &("{4}{1}{0}{2}{3}"-f 'j','orEach-Ob','e','ct','F') {${C`hAR} = ${_}.("{1}{2}{0}"-f'ng','ToSt','ri').Invoke().("{0}{1}"-f'ToLo','wer').Invoke(); If(&("{1}{0}{2}" -f 'Ran','Get-','dom') -Input @(0..1)) {${C`har} = ${Ch`AR}.("{1}{0}" -f'r','ToUppe').Invoke()} ${ch`Ar}}) -Join ''
    ${DeCoMpr`e`ss}       = ([Char[]]("{0}{1}{2}" -f 'Decomp','res','s')       | &("{2}{3}{0}{1}" -f'ach-Obj','ect','Fo','rE') {${cH`AR} = ${_}.("{1}{2}{0}"-f 'g','T','oStrin').Invoke().("{0}{1}" -f 'ToL','ower').Invoke(); If(&("{2}{1}{0}"-f'm','ando','Get-R') -Input @(0..1)) {${cH`AR} = ${cH`AR}.("{1}{0}"-f'pper','ToU').Invoke()} ${CH`Ar}}) -Join ''
    ${A`SCIi}            = ([Char[]]("{0}{1}"-f'Asc','ii')            | &("{2}{1}{0}" -f 'ch-Object','a','ForE') {${c`hAr} = ${_}.("{1}{0}"-f 'ng','ToStri').Invoke().("{0}{1}" -f'ToLow','er').Invoke(); If(&("{0}{2}{3}{1}" -f'Get','om','-Ran','d') -Input @(0..1)) {${C`HAr} = ${CH`Ar}.("{0}{2}{1}" -f 'ToU','r','ppe').Invoke()} ${C`haR}}) -Join ''
    ${r`E`A`DtoEND}        = ([Char[]]("{2}{1}{0}"-f'nd','adToE','Re')        | &("{0}{3}{1}{4}{2}"-f'For','h-O','ct','Eac','bje') {${Ch`AR} = ${_}.("{2}{0}{1}"-f 'oStrin','g','T').Invoke().("{1}{0}" -f'r','ToLowe').Invoke(); If(&("{0}{2}{1}"-f 'Get-Rand','m','o') -Input @(0..1)) {${c`HaR} = ${C`har}.("{1}{0}"-f'Upper','To').Invoke()} ${c`har}}) -Join ''
    ${Fo`REa`chOB`j`ect}    = ([Char[]]${fOrEAC`h`oB`JECT}     | &("{2}{1}{4}{3}{0}" -f 'ect','o','F','Obj','rEach-') {${cH`AR} = ${_}.("{0}{1}{2}" -f'ToStr','in','g').Invoke().("{1}{0}" -f'oLower','T').Invoke(); If(&("{1}{2}{0}" -f 'andom','G','et-R') -Input @(0..1)) {${C`hAR} = ${ch`AR}.("{0}{1}" -f 'To','Upper').Invoke()} ${cH`Ar}}) -Join ''
    ${FoR`E`AcHo`BJe`Ct2}   = ([Char[]]${foREA`chO`B`je`ct}     | &("{2}{0}{3}{1}"-f 'rEac','-Object','Fo','h') {${cH`AR} = ${_}.("{2}{0}{1}" -f'Stri','ng','To').Invoke().("{1}{0}" -f 'oLower','T').Invoke(); If(&("{0}{1}{2}{3}"-f 'G','et-Ra','nd','om') -Input @(0..1)) {${C`HAr} = ${C`hAR}.("{1}{2}{0}" -f'per','To','Up').Invoke()} ${cH`AR}}) -Join ''

    
    ${B`Ase64} = ' '*(&("{1}{0}{2}"-f'an','Get-R','dom') -Input @(0,1)) + "[$Convert]::$FromBase64(" + ' '*(&("{1}{2}{0}" -f 'm','Get-','Rando') -Input @(0,1)) + "'$EncodedCompressedScript'" + ' '*(&("{0}{2}{1}" -f'Get-Ra','dom','n') -Input @(0,1)) + ")" + ' '*(&("{3}{0}{2}{1}" -f't-','andom','R','Ge') -Input @(0,1))
    ${de`FLAte`StRe`AmsY`NTAx} = ' '*(&("{3}{1}{0}{2}"-f'ando','R','m','Get-') -Input @(0,1)) + "$DeflateStream(" + ' '*(&("{2}{0}{1}"-f 'et','-Random','G') -Input @(0,1)) + "[$MemoryStream]$Base64," + ' '*(&("{0}{2}{1}" -f 'Get','om','-Rand') -Input @(0,1)) + "[$CompressionMode]::$Decompress" + ' '*(&("{1}{3}{0}{2}"-f'nd','Get-R','om','a') -Input @(0,1)) + ")" + ' '*(&("{2}{1}{0}" -f'm','o','Get-Rand') -Input @(0,1))

    
    ${NE`wsC`RIpTa`R`Ray}   = @()
    ${NEWSC`R`I`pTARray}  += "(" + ' '*(&("{1}{0}{2}"-f 't-Ran','Ge','dom') -Input @(0,1)) + ("$NewObject "+'') + ' '*(&("{2}{3}{0}{1}"-f 'd','om','Get-Ra','n') -Input @(0,1)) + "$StreamReader(" + ' '*(&("{2}{1}{0}"-f 'Random','t-','Ge') -Input @(0,1)) + "(" + ' '*(&("{0}{1}{2}"-f 'G','et-Ran','dom') -Input @(0,1)) + ("$NewObject "+"$DeflateStreamSyntax)") + ' '*(&("{2}{0}{1}" -f'e','t-Random','G') -Input @(0,1)) + "," + ' '*(&("{0}{1}{2}"-f'G','et-Rand','om') -Input @(0,1)) + "[$Encoding]::$Ascii)" + ' '*(&("{2}{3}{1}{0}" -f'om','d','G','et-Ran') -Input @(0,1)) + ").$ReadToEnd(" + ' '*(&("{1}{0}{2}" -f'Ra','Get-','ndom') -Input @(0,1)) + ")"
    ${NE`wSc`RipTarrAy}  += "(" + ' '*(&("{2}{0}{1}" -f 't-','Random','Ge') -Input @(0,1)) + ("$NewObject "+"$DeflateStreamSyntax|") + ' '*(&("{0}{2}{1}{3}"-f'G','Ra','et-','ndom') -Input @(0,1)) + "$ForEachObject" + ' '*(&("{2}{0}{1}"-f'-','Random','Get') -Input @(0,1)) + "{" + ' '*(&("{2}{1}{0}"-f 'ndom','Ra','Get-') -Input @(0,1)) + ("$NewObject "+'') + ' '*(&("{1}{0}{2}"-f'-Rando','Get','m') -Input @(0,1)) + "$StreamReader(" + ' '*(&("{0}{2}{1}" -f 'Get-R','dom','an') -Input @(0,1)) + "`$_" + ' '*(&("{2}{1}{0}{3}" -f 'n','a','Get-R','dom') -Input @(0,1)) + "," + ' '*(&("{2}{1}{0}"-f'Random','et-','G') -Input @(0,1)) + "[$Encoding]::$Ascii" + ' '*(&("{1}{0}{2}"-f '-','Get','Random') -Input @(0,1)) + ")" + ' '*(&("{0}{3}{1}{2}" -f 'Get','an','dom','-R') -Input @(0,1)) + "}" + ' '*(&("{0}{1}{2}" -f 'Ge','t-Rand','om') -Input @(0,1)) + ").$ReadToEnd(" + ' '*(&("{1}{0}{2}" -f 'R','Get-','andom') -Input @(0,1)) + ")"
    ${nEws`CRIP`TAr`R`AY}  += "(" + ' '*(&("{2}{1}{0}"-f'andom','R','Get-') -Input @(0,1)) + ("$NewObject "+"$DeflateStreamSyntax|") + ' '*(&("{1}{0}{2}"-f 'et-Rando','G','m') -Input @(0,1)) + "$ForEachObject" + ' '*(&("{1}{0}{2}" -f 'Ra','Get-','ndom') -Input @(0,1)) + "{" + ' '*(&("{2}{1}{0}"-f'ndom','t-Ra','Ge') -Input @(0,1)) + ("$NewObject "+'') + ' '*(&("{3}{1}{0}{2}" -f 'o','et-Rand','m','G') -Input @(0,1)) + "$StreamReader(" + ' '*(&("{0}{2}{1}"-f 'Get','m','-Rando') -Input @(0,1)) + "`$_" + ' '*(&("{1}{0}{2}"-f'et-Ra','G','ndom') -Input @(0,1)) + "," + ' '*(&("{0}{2}{1}"-f 'G','andom','et-R') -Input @(0,1)) + "[$Encoding]::$Ascii" + ' '*(&("{0}{2}{1}"-f 'Ge','andom','t-R') -Input @(0,1)) + ")" + ' '*(&("{2}{0}{1}" -f'do','m','Get-Ran') -Input @(0,1)) + "}" + ' '*(&("{1}{2}{0}" -f 'ndom','Get-','Ra') -Input @(0,1)) + "|" + ' '*(&("{0}{2}{1}"-f 'Get-','dom','Ran') -Input @(0,1)) + "$ForEachObject2" + ' '*(&("{1}{0}{3}{2}"-f't-','Ge','ndom','Ra') -Input @(0,1)) + "{" + ' '*(&("{0}{1}{2}" -f 'Get','-Rand','om') -Input @(0,1)) + "`$_.$ReadToEnd(" + ' '*(&("{1}{2}{0}"-f'om','Ge','t-Rand') -Input @(0,1)) + ")" + ' '*(&("{3}{0}{2}{1}" -f'n','m','do','Get-Ra') -Input @(0,1)) + "}" + ' '*(&("{3}{1}{2}{0}" -f'ndom','-','Ra','Get') -Input @(0,1)) + ")"
    
    
    ${n`EWs`CRIpt} = (&("{0}{1}{3}{2}"-f'Ge','t','andom','-R') -Input ${nE`W`sC`Ript`ArRAY})

    
    
    ${INVO`K`eE`xpr`EssIONsYntax}  = @()
    ${inVO`KeeXpreSs`iON`SyN`T`AX} += (&("{1}{2}{0}" -f 'ndom','Get-R','a') -Input @('IEX',("{0}{2}{3}{1}" -f'In','n','voke','-Expressio')))
    
    
    
    ${iNvocAt`i`on`o`P`erATOr} = (&("{0}{1}{2}"-f 'G','et-Ra','ndom') -Input @('.','&')) + ' '*(&("{2}{0}{1}"-f 'e','t-Random','G') -Input @(0,1))
    ${I`NVo`keEx`pRe`sSions`YnTAx} += ${InVOc`AT`IONopERa`TOR} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${INV`okeE`XPrE`s`S`io`NsyntaX} += ${IN`VOcA`TI`ONoPEra`Tor} + ('( '+"`$PSHome[") + (&("{1}{2}{0}" -f '-Random','G','et') -Input @(4,21)) + "]+`$PSHome[" + (&("{2}{0}{3}{1}" -f'e','andom','G','t-R') -Input @(30,34)) + ((("{0}{3}{2}{1}"-f ']',')','SA','+wSAxw'))."Re`pl`AcE"(([ChaR]119+[ChaR]83+[ChaR]65),[sTRing][ChaR]39))
    ${iN`VoK`EEXpREssI`O`NsY`NTAx} += ${IN`VOca`TI`OnOpERA`TOR} + ('( '+"`$env:ComSpec[4,") + (&("{2}{1}{0}" -f 'andom','R','Get-') -Input @(15,24,26)) + (((("{2}{1}{3}{4}{0}"-f'}{0})','25]-',',','Join{','0')) -f  [ChAR]39))
    ${IN`V`OKeEXpre`sSi`O`Nsyn`Tax} += ${i`NVOCat`I`oN`OpERA`TOr} + "((" + (&("{0}{2}{1}"-f'Get','andom','-R') -Input @(("{2}{1}{0}"-f '-Variable','et','G'),'GV',("{2}{0}{1}"-f 'ari','able','V'))) + (((("{5}{4}{3}{2}{9}{1}{8}{7}{0}{6}" -f'J','Na','M','*mdr*hZ','ZM',' h','oinhZMhZM)','[3,11,2]-','me',').')) -crePlAcE'hZM',[CHar]39))
    ${InVo`k`eeXPResS`iOnsyNt`AX} += ${inv`O`caTiOnO`pe`Ra`TOR} + "( " + (&("{1}{2}{0}"-f 'ndom','Get-','Ra') -Input @(((('cziVerbosePr'+'efer'+'ence'+'.'+'To'+'Stri'+'ng()') -cRePlACE 'czi',[ChaR]36)),(('([Str'+'in'+'g]{0}'+'Verb'+'ose'+'Pre'+'f'+'e'+'ren'+'ce)')  -F[ChaR]36))) + (((("{1}{0}{2}{3}{6}{4}{5}"-f'3','[1,',']+rD','LxrD','-JoinrDL','rDL)','L')) -crEpLaCE  ([Char]114+[Char]68+[Char]76),[Char]39))
    
    
    
    
    ${inv`ok`EEXP`R`eSsiON} = (&("{1}{2}{0}"-f 'om','Get-Ra','nd') -Input ${in`V`OKE`Exp`RE`sSio`NS`yntax})

    
    ${INvOkeEx`PR`eS`SI`ON} = ([Char[]]${In`VO`k`EeXpRESsIOn} | &("{0}{2}{1}{3}" -f'F','Ea','or','ch-Object') {${C`HaR} = ${_}.("{0}{1}"-f'ToStrin','g').Invoke().("{0}{1}" -f'ToLow','er').Invoke(); If(&("{0}{2}{3}{1}"-f'G','ndom','e','t-Ra') -Input @(0..1)) {${CH`AR} = ${C`haR}.("{1}{0}" -f'oUpper','T').Invoke()} ${C`hAR}}) -Join ''
    
    
    ${INV`O`keO`Pti`ONs}  = @()
    ${I`N`V`OKeOPtIo`NS} += ' '*(&("{2}{0}{1}"-f 'ando','m','Get-R') -Input @(0,1)) + ${i`Nv`OkEEX`Pr`eSSI`on} + ' '*(&("{2}{0}{3}{1}"-f 't-R','dom','Ge','an') -Input @(0,1)) + ${NE`w`s`CriPT} + ' '*(&("{0}{1}{2}" -f 'Get-R','and','om') -Input @(0,1))
    ${INVok`eo`P`TioNs} += ' '*(&("{2}{0}{1}"-f't-Rando','m','Ge') -Input @(0,1)) + ${neWs`CrI`pT} + ' '*(&("{2}{0}{1}{3}" -f'R','an','Get-','dom') -Input @(0,1)) + '|' + ' '*(&("{2}{0}{1}" -f't','-Random','Ge') -Input @(0,1)) + ${iNVoKE`E`xpRe`ssIOn}

    ${NEWScR`I`pt} = (&("{2}{0}{1}"-f'an','dom','Get-R') -Input ${inVOK`E`Op`TiO`Ns})

    
    If(!${P`sBOunD`pA`Ra`MEters}[("{1}{0}{2}" -f 'a','P','ssThru')])
    {
        
        ${PoW`ERsheL`l`Flags} = @()

        
        
        ${cOmMAnD`L`InEOPtI`o`Ns} = &("{0}{1}{2}"-f 'Ne','w-Obje','ct') ("{1}{0}{2}" -f't','S','ring[]')(0)
        If(${P`sb`OunDpaR`A`mETE`RS}[("{0}{1}"-f 'N','oExit')])
        {
          ${FU`llArgUM`eNt} = ("{1}{0}" -f 'it','-NoEx');
          ${comMa`NDL`INe`OPTIo`Ns} += ${fuLlArgU`mE`NT}.("{1}{0}{2}" -f 'ubSt','S','ring').Invoke(0,(&("{1}{2}{0}"-f'dom','Get','-Ran') -Minimum 4 -Maximum (${FulLAr`GuM`ENT}."lE`Ng`TH"+1)))
        }
        If(${Psbo`UnDPa`R`AMe`T`ErS}[("{0}{1}{2}" -f 'NoPr','ofil','e')])
        {
          ${fUl`La`RgumENt} = ("{0}{1}{2}"-f'-NoPro','fi','le');
          ${CoM`mA`NdliNEoP`TIO`Ns} += ${f`UlLA`Rg`Um`EnT}.("{2}{0}{1}"-f'Stri','ng','Sub').Invoke(0,(&("{0}{1}{2}"-f 'Get','-R','andom') -Minimum 4 -Maximum (${fulLarGu`ME`Nt}."LeN`G`Th"+1)))
        }
        If(${p`SbOUnD`pARa`M`ETe`RS}[("{4}{2}{3}{1}{0}" -f 'active','er','n','t','NonI')])
        {
          ${f`ULlArguM`E`NT} = ("{1}{3}{2}{0}{4}" -f'i','-NonI','act','nter','ve');
          ${cOmMandlI`N`E`oPTIO`NS} += ${fU`llaR`g`UMeNT}.("{1}{2}{0}" -f'ng','SubStr','i').Invoke(0,(&("{0}{1}{2}"-f'G','et-Rand','om') -Minimum 5 -Maximum (${fu`LL`ARG`UMEnt}."LEN`G`TH"+1)))
        }
        If(${psBO`U`NDpar`Am`eT`eRs}[("{0}{2}{1}" -f'No','ogo','L')])
        {
          ${F`UllA`RgUm`Ent} = ("{1}{0}{2}" -f'NoL','-','ogo');
          ${c`OMmaND`L`i`Ne`OpTIoNs} += ${fu`ll`ARG`UMe`NT}.("{2}{0}{1}"-f'trin','g','SubS').Invoke(0,(&("{2}{0}{3}{1}"-f't','m','Ge','-Rando') -Minimum 4 -Maximum (${fU`llARg`UMe`Nt}."Len`GtH"+1)))
        }
        If(${pSBOU`NdPAr`A`metErs}[("{0}{3}{1}{2}" -f'Wind','wSty','le','o')] -OR ${WINDoWS`s`TYLE})
        {
            ${Ful`LaRg`UmenT} = ("{1}{0}{2}"-f 'ndowS','-Wi','tyle')
            If(${w`i`NdoWS`s`TyLe}) {${Ar`GumEnTV`ALUE} = ${WiND`OWs`STy`lE}}
            Else {${argume`N`Tv`Al`UE} = ${psb`oUnDPa`RA`MeTeRs}[("{2}{1}{0}" -f 'e','yl','WindowSt')]}

            
            Switch(${ARguMEn`T`V`A`LuE}.("{0}{1}{2}"-f'ToLow','e','r').Invoke())
            {
                ("{0}{1}" -f'norma','l')    {If(&("{0}{1}{2}"-f'Get-','Rando','m') -Input @(0..1)) {${a`RGuMEntVa`L`Ue} = 0}}
                ("{1}{0}" -f 'idden','h')    {If(&("{3}{0}{1}{2}"-f 't-R','a','ndom','Ge') -Input @(0..1)) {${Ar`G`UM`enT`VaLUe} = 1}}
                ("{0}{1}" -f'min','imized') {If(&("{1}{2}{0}"-f '-Random','G','et') -Input @(0..1)) {${aR`gUMe`Ntv`ALuE} = 2}}
                ("{0}{1}{3}{2}" -f'maximi','z','d','e') {If(&("{0}{1}{2}" -f'Get-','R','andom') -Input @(0..1)) {${aRG`UMe`NT`VALuE} = 3}}
                ("{1}{0}" -f 'ault','def') {&("{3}{0}{1}{2}"-f'e','-Er','ror','Writ') ('A'+'n '+'inva'+'li'+'d '+"`$ArgumentValue "+'va'+'lue'+' '+"($ArgumentValue) "+'wa'+'s '+'pa'+'ssed '+'t'+'o '+'s'+'wi'+'tch '+'bl'+'o'+'ck '+'for'+' '+'O'+'ut'+'-Powe'+'rShell'+'L'+'au'+'ncher.'); Exit;}
            }

            ${POWeRs`HE`LLfLags} += ${FuLlA`R`gUME`NT}.("{2}{0}{1}"-f 'trin','g','SubS').Invoke(0,(&("{2}{0}{1}"-f't-Ra','ndom','Ge') -Minimum 2 -Maximum (${Ful`LAR`gu`MeNt}."lE`NGTh"+1))) + ' '*(&("{1}{2}{0}"-f'm','Get-Rand','o') -Minimum 1 -Maximum 3) + ${arG`UM`ENt`VALuE}
        }
        If(${p`sbO`Und`PArAmETERs}[("{2}{3}{0}{1}"-f 'onP','olicy','Execut','i')] -OR ${E`Xec`UTio`NPoL`iCY})
        {
            ${f`UlLA`RgUME`Nt} = ("{3}{2}{0}{4}{1}"-f'c','cy','xe','-E','utionPoli')
            If(${E`X`EcUtIO`NpOLICY}) {${ArgU`mEnt`VA`LUe} = ${ex`e`cu`TIONPO`Licy}}
            Else {${A`R`GUMeNT`VALue} = ${psbO`UnDp`ARA`M`eTErS}[("{1}{2}{0}{3}"-f'ution','E','xec','Policy')]}
            
            ${ex`e`CuTiO`NPol`ICYFLa`gs} = @()
            ${Exe`cuTiO`NpoLI`CYFL`AgS} += '-EP'
            For(${In`dEx}=3; ${inD`eX} -le ${f`U`Ll`ARgUMenT}."l`Eng`TH"; ${I`N`dEx}++)
            {
                ${Ex`ECuT`Io`NPOliCyFLa`GS} += ${FullaR`G`UMeNT}.("{0}{1}{2}" -f'S','ub','String').Invoke(0,${I`NdEX})
            }
            ${e`xEC`Ut`I`ONPolIcyFLaG} = &("{1}{2}{0}"-f 'ndom','Get','-Ra') -Input ${EXE`cUtIO`NpOl`IcY`FLA`Gs}
            ${pOwERsHE`Llfl`AgS} += ${e`xecut`IONPOl`icY`Fl`AG} + ' '*(&("{2}{1}{0}"-f '-Random','t','Ge') -Minimum 1 -Maximum 3) + ${aRGUmeNT`Va`l`UE}
        }
        
        
        
        If(${COM`MAnd`LIneOpTIo`NS}."cO`Unt" -gt 1)
        {
            ${CommaN`DL`INeOPT`IoNS} = &("{3}{0}{1}{2}"-f 'a','nd','om','Get-R') -InputObject ${comm`AND`l`i`NE`oP`TIONS} -Count ${comM`AnD`lIN`Eo`Pt`ionS}."C`OuNt"
        }

        
        If(${PSBoUNdPar`Amet`E`Rs}[("{2}{0}{1}" -f'o','mmand','C')])
        {
            ${fUlLar`gu`M`e`NT} = ("{0}{2}{1}" -f'-C','d','omman')
            ${C`OMm`AndLi`NeOptiO`NS} += ${f`U`lLarG`UMENt}.("{1}{2}{0}" -f'ring','SubS','t').Invoke(0,(&("{2}{1}{0}" -f'om','-Rand','Get') -Minimum 2 -Maximum (${fuL`Lar`g`UMENT}."LE`Ngth"+1)))
        }

        
        For(${I}=0; ${i} -lt ${pOw`E`RSHEL`l`FLAGs}."cOU`NT"; ${I}++)
        {
            ${PoWeRshe`L`lF`laGs}[${i}] = ([Char[]]${PO`weRs`HeLLFL`A`gS}[${I}] | &("{4}{2}{3}{0}{1}" -f 'j','ect','h-','Ob','ForEac') {${c`HaR} = ${_}.("{1}{0}{2}"-f 'oStr','T','ing').Invoke().("{0}{1}" -f'ToLo','wer').Invoke(); If(&("{2}{1}{0}{3}" -f 'Ran','t-','Ge','dom') -Input @(0..1)) {${C`HAR} = ${c`hAr}.("{1}{0}"-f 'per','ToUp').Invoke()} ${ch`Ar}}) -Join ''
        }

        
        ${comm`And`Lin`Eo`pTIONs} = (${C`omm`AN`dl`IneoP`TiO`NS} | &("{0}{1}{2}{3}" -f'ForEac','h-','Obj','ect') {${_} + " "*(&("{2}{3}{1}{0}"-f 'm','Rando','Get','-') -Minimum 1 -Maximum 3)}) -Join ''
        ${C`omMANdlI`NeOPtio`NS} = " "*(&("{3}{1}{0}{2}" -f '-Rando','et','m','G') -Minimum 0 -Maximum 3) + ${coMmaND`LIN`eO`PT`IONs} + " "*(&("{1}{2}{0}"-f 'm','Get-Ra','ndo') -Minimum 0 -Maximum 3)

        
        If(${psBo`UnDp`ARA`mEtERs}[("{1}{0}" -f'4','Wow6')])
        {
            ${C`omMaNDLIn`EOUt`pUt} = "$($Env:windir)\SysWOW64\WindowsPowerShell\v1.0\powershell.exe $($CommandlineOptions) `"$NewScript`" "
        }
        Else
        {
            
            
            ${cOMMaNDL`INE`Out`pUt} = "powershell $($CommandlineOptions) `"$NewScript`" "
        }

        
        ${CM`DM`AX`lengTH} = 8190
        If(${Com`MaNDLin`eo`UTput}."le`NGth" -gt ${Cm`d`MAXl`Eng`TH})
        {
            &("{1}{0}{2}{3}" -f'ite','Wr','-W','arning') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        }
        
        ${nEw`sc`R`IPt} = ${c`O`MMANdl`Ineo`UtPUT}
    }

    Return ${neW`s`cRIPT}
}
