  ${2B`8el}  =  [TYPe]("{0}{2}{1}"-F'i','LE','O.FI')  ;${bC4`s`97}  = [tyPE]("{0}{2}{1}"-f 'CoNV','RT','E') ; 


















Function ouT-eN`Co`DEDh`EXCommAnd
{


    [CmdletBinding(defAuLTParAMETErsETnaMe = {"{2}{1}{0}" -f 'ath','leP','Fi'})] Param (
        [Parameter(PositION = 0, vALUEfroMpiPeline = ${Tr`UE}, paRAmETerSetNAme = "S`CRIP`Tb`LocK")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${Sc`RI`P`TBlock},

        [Parameter(posITIon = 0, ParaMeterseTNAMe = "f`i`LEpatH")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${p`ATH},

        [Switch]
        ${NOE`X`It},

        [Switch]
        ${n`opr`ofIle},

        [Switch]
        ${n`oNiNT`eRAc`TI`Ve},

        [Switch]
        ${noL`oGo},

        [Switch]
        ${w`OW64},
        
        [Switch]
        ${c`OmMaNd},

        [ValidateSet({"{0}{1}"-f 'Norm','al'}, {"{3}{0}{2}{1}"-f'im','ed','iz','Min'}, {"{0}{1}{2}"-f'Maxi','mi','zed'}, {"{0}{1}"-f'H','idden'})]
        [String]
        ${wiNdOwS`T`YlE},

        [ValidateSet({"{2}{0}{1}"-f'pa','ss','By'}, {"{1}{0}{2}{3}" -f 'nres','U','tric','ted'}, {"{3}{1}{2}{0}" -f'd','e','Signe','Remot'}, {"{1}{0}{2}" -f'g','AllSi','ned'}, {"{3}{0}{1}{2}" -f'e','s','tricted','R'})]
        [String]
        ${EX`E`CUTionp`Ol`ICY},
        
        [Switch]
        ${pASST`hRu}
    )

    
    ${ENC`oDI`N`gBASE} = 16

    
    If(${ps`BoUnD`P`ArAmeTers}[("{0}{1}" -f'Pa','th')])
    {
        &("{0}{1}{2}" -f'G','et-ChildI','tem') ${pa`TH} -ErrorAction ("{1}{0}"-f 'op','St') | &("{0}{2}{1}" -f'Out','l','-Nul')
        ${ScRip`T`s`TRInG} =  (  &('LS') ("{3}{0}{1}{2}" -f'lE:2b8','E','L','vARiaB'))."val`Ue"::("{0}{2}{1}{3}" -f'Rea','lTe','dAl','xt').Invoke((&("{1}{0}{2}"-f'a','Resolve-P','th') ${P`AtH}))
    }
    Else
    {
        ${sCR`i`PtStriNG} = [String]${scr`IP`TBlO`CK}
    }

    
    
    ${RanD`oMDe`lim`I`TerS}  = @('_','-',',','{','}','~','!','@','%','&','<','>',';',':')

    
    @('g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z') | &("{0}{2}{1}{3}"-f'For','-Obje','Each','ct') {${upPer`l`Ow`erchAr} = ${_}; If(((&("{2}{1}{0}"-f 'ndom','a','Get-R') -Input @(1..2))-1 -eq 0)) {${u`pPER`lower`CHar} = ${up`PErLoWEr`ch`Ar}.("{2}{0}{1}" -f 'pp','er','ToU').Invoke()} ${RANd`Omd`ELI`miT`ErS} += ${uPPERLOWe`RcH`AR}}

    
    ${rAn`doMDe`LI`mItERS} = (&("{1}{2}{0}" -f 'm','Get-Rand','o') -Input ${rANDO`Md`ELiM`I`T`ers} -Count (${raN`d`OMD`eLimITERS}."Cou`Nt"/4))

    
    ${D`e`lImiTEDenc`od`edaRraY} = ''
    ([Char[]]${s`cRI`ptStrI`NG}) | &("{2}{1}{4}{3}{0}"-f 't','E','For','ec','ach-Obj') {${DElim`ItE`D`E`N`codEDARr`AY} += (  ${b`c4S`97}::"TO`STri`Ng"(([Int][Char]${_}),${eNCoDI`NGBa`Se}) + (&("{2}{1}{0}"-f 't-Random','e','G') -Input ${rand`o`MD`ELI`MiteRs}))}

    
    ${dEliMItede`NC`OdED`A`RrAY} = ${DE`LI`mi`TEDenc`o`dE`DARraY}.("{0}{1}{2}"-f'S','u','bString').Invoke(0,${dElimiTEd`eN`C`Ode`DArrAY}."lE`Ngth"-1)

    
    ${R`AnDo`mdE`liMITERs`Top`R`INt} = (&("{0}{1}{2}" -f 'G','et-Ra','ndom') -Input ${ranD`OmDeL`imI`T`Ers} -Count ${raN`dOMDE`lIm`iTErs}."lENg`Th") -Join ''
    
    
    ${for`eA`chOBjeCt} = &("{0}{2}{1}"-f 'Ge','om','t-Rand') -Input @(("{0}{1}" -f 'Fo','rEach'),("{1}{0}{4}{3}{2}" -f 'rE','Fo','ct','bje','ach-O'),'%')
    ${s`Tr`joiN}       = ([Char[]]("{4}{0}{3}{1}{2}" -f'r','::Joi','n','ing]','[St')      | &("{0}{3}{4}{2}{1}"-f'Fo','t','ec','rEa','ch-Obj') {${cH`AR} = ${_}.("{0}{1}{2}"-f 'T','oS','tring').Invoke().("{1}{0}{2}"-f 'o','T','Lower').Invoke(); If(&("{1}{0}{2}{3}"-f 'Ra','Get-','nd','om') -Input @(0..1)) {${cH`AR} = ${Ch`AR}.("{0}{2}{1}"-f 'T','per','oUp').Invoke()} ${c`Har}}) -Join ''
    ${S`TRstr}        = ([Char[]]("{1}{2}{0}"-f ']','[St','ring')            | &("{4}{2}{0}{3}{1}"-f 'ch-','ect','a','Obj','ForE') {${C`haR} = ${_}.("{1}{2}{0}"-f 'ing','ToS','tr').Invoke().("{1}{0}"-f'wer','ToLo').Invoke(); If(&("{3}{0}{2}{1}" -f 'et','andom','-R','G') -Input @(0..1)) {${C`hAr} = ${C`hAR}.("{2}{1}{0}" -f 'er','Upp','To').Invoke()} ${cH`Ar}}) -Join ''
    ${j`oIN}          = ([Char[]]("{1}{0}" -f 'n','-Joi')               | &("{1}{2}{0}"-f'ach-Object','Fo','rE') {${cH`AR} = ${_}.("{0}{1}{2}" -f 'To','St','ring').Invoke().("{1}{0}" -f 'er','ToLow').Invoke(); If(&("{1}{0}{2}"-f 'd','Get-Ran','om') -Input @(0..1)) {${c`har} = ${C`hAR}.("{2}{0}{1}"-f 'ppe','r','ToU').Invoke()} ${C`haR}}) -Join ''
    ${cH`A`RsTr}       = ([Char[]]("{1}{0}"-f'r','Cha')                | &("{1}{2}{3}{0}" -f 'ct','F','or','Each-Obje') {${c`hAr} = ${_}.("{0}{1}{2}" -f'T','o','String').Invoke().("{1}{0}{2}"-f 'L','To','ower').Invoke(); If(&("{1}{2}{0}"-f'om','Get-R','and') -Input @(0..1)) {${c`har} = ${Ch`AR}.("{0}{2}{1}"-f 'T','r','oUppe').Invoke()} ${Ch`AR}}) -Join ''
    ${I`Nt}           = ([Char[]]'Int'                 | &("{3}{2}{1}{0}"-f'ect','bj','orEach-O','F') {${c`HAr} = ${_}.("{2}{1}{0}"-f 'g','in','ToStr').Invoke().("{2}{1}{0}"-f 'er','oLow','T').Invoke(); If(&("{1}{0}{2}" -f'o','Get-Rand','m') -Input @(0..1)) {${Ch`AR} = ${CH`AR}.("{1}{0}{2}"-f'e','ToUpp','r').Invoke()} ${CH`Ar}}) -Join ''
    ${F`ORE`A`ch`oBjECt} = ([Char[]]${FOR`e`AChOBJe`ct}        | &("{1}{3}{2}{0}"-f 'Object','ForE','-','ach') {${cH`Ar} = ${_}.("{2}{0}{1}"-f'S','tring','To').Invoke().("{1}{0}"-f'Lower','To').Invoke(); If(&("{3}{0}{2}{1}"-f 't','andom','-R','Ge') -Input @(0..1)) {${cH`Ar} = ${CH`AR}.("{0}{1}"-f 'ToUpp','er').Invoke()} ${c`HAR}}) -Join ''
    ${Toin`T16}       = ([Char[]]((("{1}{3}{2}{0}" -f't16(','[','ToIn','Convert]::'))) | &("{1}{2}{0}{3}"-f '-O','Fo','rEach','bject') {${C`HaR} = ${_}.("{2}{1}{0}"-f'ng','Stri','To').Invoke().("{1}{0}{2}" -f'oL','T','ower').Invoke(); If(&("{0}{2}{1}" -f 'Ge','dom','t-Ran') -Input @(0..1)) {${C`hAR} = ${C`har}.("{1}{0}"-f'oUpper','T').Invoke()} ${Ch`Ar}}) -Join ''

    
    ${RaNDOm`dEl`ImIT`er`S`ToPRInTForda`S`hspL`IT} = ''
    ForEach(${randomDelIm`iT`ER} in ${rANd`o`mDeLI`M`Ite`Rs})
    {
        
        ${SPl`It} = ([Char[]]("{0}{1}" -f'Sp','lit') | &("{0}{2}{1}"-f 'F','t','orEach-Objec') {${ch`Ar} = ${_}.("{0}{1}{2}"-f'T','oStrin','g').Invoke().("{1}{0}"-f'r','ToLowe').Invoke(); If(&("{1}{3}{2}{0}" -f 'dom','Get','n','-Ra') -Input @(0..1)) {${c`haR} = ${CH`AR}.("{0}{1}"-f'ToU','pper').Invoke()} ${CH`AR}}) -Join ''

        ${rAnd`om`dELImIte`R`stoPrin`TFOR`DA`ShspLIt} += ('-' + ${S`p`lIt} + ' '*(&("{2}{1}{0}"-f'm','o','Get-Rand') -Input @(0,1)) + "'" + ${rA`N`doMdElIMIteR} + "'" + ' '*(&("{1}{2}{0}" -f'dom','Get-','Ran') -Input @(0,1)))
    }
    ${R`AN`D`OMDelIM`iteR`s`TOPRi`N`TFORdaSHSplit} = ${rA`NDOm`D`ElImITERstOPrINtFORDa`S`HS`Pl`iT}.("{1}{0}"-f'rim','T').Invoke()
    
    
    ${RA`NDOM`s`Tri`NGsYntax} = ([Char[]](&("{1}{0}{2}"-f '-Rand','Get','om') -Input @((('['+'St'+'ring]'+'kpN_')."r`epL`Ace"(([cHaR]107+[cHaR]112+[cHaR]78),'$')),(('{0}_.T'+'oSt'+'r'+'ing()') -F  [ChAr]36))) | &("{0}{1}{2}{3}" -f'For','Each-','Objec','t') {${Ch`AR} = ${_}.("{0}{1}"-f'ToS','tring').Invoke().("{0}{2}{1}" -f 'T','Lower','o').Invoke(); If(&("{0}{2}{1}"-f 'Get-','dom','Ran') -Input @(0..1)) {${Ch`Ar} = ${C`HAR}.("{0}{1}"-f'ToUpp','er').Invoke()} ${cH`AR}}) -Join ''
    ${RAN`DO`mc`onvErSi`O`NSYN`TAx}  = @()
    ${ran`DO`mconveRSiO`N`s`yn`TAX} += "[$CharStr]" + ' '*(&("{1}{0}{2}" -f'et-Rand','G','om') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}{3}"-f'ndo','et-Ra','G','m') -Input @(0,1)) + ${tO`INT`16} + ' '*(&("{2}{0}{3}{1}"-f'et-','andom','G','R') -Input @(0,1)) + '(' + ' '*(&("{1}{0}{2}"-f 'et-R','G','andom') -Input @(0,1)) + ${RAN`Do`msT`RIn`g`syNtaX} + ' '*(&("{1}{2}{0}"-f'om','Get-R','and') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}{3}" -f'Get-R','a','n','dom') -Input @(0,1)) + ',' + ${En`cOd`IN`GBaSe} + ' '*(&("{1}{2}{0}"-f 'm','Get-Ra','ndo') -Input @(0,1)) + ')' + ' '*(&("{1}{0}{2}"-f '-Ran','Get','dom') -Input @(0,1)) + ')'
    ${rA`Nd`OmCoNv`eRs`iON`sy`NTax} += ${T`O`iNT16} + ' '*(&("{1}{0}{2}" -f'ando','Get-R','m') -Input @(0,1)) + '(' + ' '*(&("{1}{0}{3}{2}"-f 'Ran','Get-','m','do') -Input @(0,1)) + ${rAnD`oMS`Tr`iNgsyN`T`AX} + ' '*(&("{3}{0}{1}{2}"-f'e','t-Ra','ndom','G') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get','-Rando','m') -Input @(0,1)) + ',' + ' '*(&("{0}{1}{2}"-f 'Get-Rand','o','m') -Input @(0,1)) + ${Enco`DINgB`A`Se} + ' '*(&("{3}{2}{0}{1}" -f '-Ra','ndom','et','G') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}"-f 'Get','ndom','-Ra') -Input @(0,1)) + (&("{1}{3}{0}{2}" -f'-R','G','andom','et') -Input @('-as','-As','-aS','-AS')) + ' '*(&("{0}{2}{1}" -f'Get-Rand','m','o') -Input @(0,1)) + "[$CharStr]"
    ${rA`N`DOMCONv`er`Si`oNs`ynTAx} = (&("{2}{1}{0}{3}"-f '-Rando','t','Ge','m') -Input ${randOmcO`N`VeRSio`N`s`YnTAx})

    
    ${en`codedAR`Ray} = ''
    ([Char[]]${ScRI`p`Tst`RIng}) | &("{1}{2}{0}{4}{3}"-f 'Ob','ForEac','h-','t','jec') {
        
        If(  ${b`C4`S97}::"T`oStrI`NG"(([Int][Char]${_}),${enCo`diNgBA`Se}).("{0}{1}" -f 'Tri','m').Invoke(("{1}{3}{0}{2}" -f '5678','01','9','234'))."le`NGTh" -gt 0) {${q`Uo`Te} = "'"}
        Else {${quo`TE} = ''}
        ${e`Nco`dED`ARRAy} += (${QU`OtE} +  ${b`c4`s97}::"TO`St`RING"(([Int][Char]${_}),${ENCoDI`N`gb`ASe}) + ${q`UOtE} + ' '*(&("{2}{1}{0}"-f'm','-Rando','Get') -Input @(0,1)) + ',' + ' '*(&("{0}{3}{2}{1}"-f 'G','dom','-Ran','et') -Input @(0,1)))
    }

    
    ${eNcoDeD`ARr`AY} = ('(' + ' '*(&("{0}{2}{1}"-f'G','andom','et-R') -Input @(0,1)) + ${eNcOD`eD`ARR`Ay}.("{0}{1}" -f'Tr','im').Invoke().("{1}{0}"-f 'rim','T').Invoke(',') + ')')

    
    
    
    
    ${SEtOfSva`RSy`N`TAX}      = @()
    ${Se`TOFs`VaRSYN`Tax}     += ("{1}{0}{2}" -f'It','Set-','em') + ' '*(&("{2}{3}{0}{1}"-f'an','dom','G','et-R') -Input @(1,2)) + ((("{1}{0}{3}{2}{5}{4}"-f 'ar','jH7V',':OFS','iable','7','jH'))-cREPLaCe ([ChaR]106+[ChaR]72+[ChaR]55),[ChaR]39) + ' '*(&("{1}{2}{0}" -f 'm','Get-Ra','ndo') -Input @(1,2)) + "''"
    ${s`ETO`FSVarsy`NTaX}     += (&("{1}{0}{2}" -f '-R','Get','andom') -Input @(("{3}{0}{2}{1}" -f'a','able','ri','Set-V'),'SV','SET')) + ' '*(&("{2}{0}{1}"-f'et-Ra','ndom','G') -Input @(1,2)) + ((("{2}{0}{1}"-f 'F','Sxe3','xe3O'))."rEP`la`Ce"('xe3',[stRIng][chaR]39)) + ' '*(&("{0}{2}{1}" -f 'Get','m','-Rando') -Input @(1,2)) + "''"
    ${sETofS`V`Ar}            = (&("{1}{2}{3}{0}" -f'andom','G','et-','R') -Input ${s`eTo`FSv`ArsYnt`Ax})

    ${sE`TOFs`V`ArbAC`KSYNtaX}  = @()
    ${S`e`ToFs`VaRBaCks`YNt`Ax} += ("{2}{1}{0}" -f 'm','e','Set-It') + ' '*(&("{2}{0}{1}" -f 'et-','Random','G') -Input @(1,2)) + ((("{0}{6}{5}{4}{1}{3}{2}" -f 'Z','S','j','Zc','ble:OF','a','cjVari'))  -rEPlAce 'Zcj',[chAr]39) + ' '*(&("{2}{0}{1}" -f'ando','m','Get-R') -Input @(1,2)) + "' '"
    ${seTo`F`SVarbAcKs`Yn`Tax} += (&("{2}{0}{1}"-f'-Rando','m','Get') -Input @(("{1}{0}{2}"-f'et-V','S','ariable'),'SV','SET')) + ' '*(&("{0}{1}{2}"-f'Get-R','an','dom') -Input @(1,2)) + ((("{2}{1}{0}"-f'm','FSkV','kVmO'))."ReP`LAcE"(([CHaR]107+[CHaR]86+[CHaR]109),[STrIng][CHaR]39)) + ' '*(&("{0}{2}{1}" -f 'G','om','et-Rand') -Input @(1,2)) + "' '"
    ${S`eTOfSva`RBa`ck}        = (&("{2}{1}{0}"-f'm','et-Rando','G') -Input ${S`e`TOfsVArba`CKs`Y`Nt`Ax})

    
    ${s`ETO`Fsv`AR}            = ([Char[]]${Se`TofS`VAR}     | &("{0}{2}{1}{3}"-f 'Fo','h-Ob','rEac','ject') {${Ch`Ar} = ${_}.("{0}{1}" -f 'ToStrin','g').Invoke().("{0}{1}" -f 'ToL','ower').Invoke(); If(&("{2}{1}{0}{3}"-f't-Rando','e','G','m') -Input @(0..1)) {${CH`Ar} = ${cH`AR}.("{0}{2}{1}" -f 'ToU','er','pp').Invoke()} ${C`HaR}}) -Join ''
    ${seto`Fs`V`ARbACk}        = ([Char[]]${S`E`T`oF`svarbAck} | &("{1}{2}{0}"-f 'ach-Object','Fo','rE') {${c`Har} = ${_}.("{2}{1}{0}"-f 'ing','oStr','T').Invoke().("{1}{0}"-f'ower','ToL').Invoke(); If(&("{1}{2}{0}"-f'Random','Ge','t-') -Input @(0..1)) {${C`HAR} = ${CH`AR}.("{0}{1}"-f'ToUpp','er').Invoke()} ${CH`Ar}}) -Join ''

    
    ${bASeS`crI`P`TaRR`AY}  = @()
    ${B`AsE`ScrIPT`ARR`AY} += '(' + ' '*(&("{1}{2}{0}"-f 'm','Get','-Rando') -Input @(0,1)) + "'" + ${DeLI`mi`Te`DE`NCoDEda`Rr`AY} + "'." + ${s`PlIT} + "(" + ' '*(&("{2}{0}{1}"-f 't-Rand','om','Ge') -Input @(0,1)) + "'" + ${RA`Ndom`d`ElimIt`ERsTo`P`RInt} + "'" + ' '*(&("{2}{1}{0}"-f'ndom','a','Get-R') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get','-Rando','m') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}"-f'dom','Get-Ra','n') -Input @(0,1)) + ${For`EAC`hObJeCt} + ' '*(&("{3}{2}{0}{1}" -f'an','dom','t-R','Ge') -Input @(0,1)) + '{' + ' '*(&("{0}{1}{2}"-f 'Get-Ra','nd','om') -Input @(0,1)) + '(' + ' '*(&("{1}{2}{0}"-f 'andom','Get','-R') -Input @(0,1)) + ${Rand`o`Mco`NVer`S`ioN`sYNtaX} + ')' +  ' '*(&("{0}{1}{2}" -f'Ge','t-R','andom') -Input @(0,1)) + '}' + ' '*(&("{0}{2}{1}" -f'Get-R','ndom','a') -Input @(0,1)) + ')'
    ${Ba`sEscR`i`PTA`Rr`Ay} += '(' + ' '*(&("{2}{1}{0}{3}" -f 'do','n','Get-Ra','m') -Input @(0,1)) + "'" + ${dE`LimIT`EDencO`dedA`RRaY} + "'" + ' '*(&("{0}{1}{2}" -f 'G','e','t-Random') -Input @(0,1)) + ${Ran`dOmDe`LiMi`TeRs`ToPrinTf`or`d`AShspl`It} + ' '*(&("{3}{1}{2}{0}" -f'm','et','-Rando','G') -Input @(0,1)) + '|' + ' '*(&("{1}{0}{2}"-f'et','G','-Random') -Input @(0,1)) + ${fOREacH`o`B`j`ecT} + ' '*(&("{1}{2}{0}" -f'ndom','G','et-Ra') -Input @(0,1)) + '{' + ' '*(&("{2}{0}{3}{1}"-f 'n','om','Get-Ra','d') -Input @(0,1)) + '(' + ' '*(&("{1}{0}{2}"-f'e','G','t-Random') -Input @(0,1)) + ${RaNdom`c`on`VErsI`oNsYN`Tax} + ')' +  ' '*(&("{2}{1}{0}"-f'm','et-Rando','G') -Input @(0,1)) + '}' + ' '*(&("{0}{2}{1}" -f'Ge','-Random','t') -Input @(0,1)) + ')'
    ${b`AS`E`SCri`pTaRraY} += '(' + ' '*(&("{3}{0}{2}{1}" -f'a','om','nd','Get-R') -Input @(0,1)) + ${EN`c`ODEDAr`R`AY} + ' '*(&("{1}{0}{2}{3}"-f'et-Ra','G','n','dom') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}" -f '-Random','G','et') -Input @(0,1)) + ${Fo`ReAC`hO`BjE`cT} + ' '*(&("{2}{1}{0}" -f 'm','ndo','Get-Ra') -Input @(0,1)) + '{' + ' '*(&("{0}{2}{1}{3}"-f 'Get-Ra','d','n','om') -Input @(0,1)) + '(' + ' '*(&("{3}{2}{1}{0}"-f'm','ndo','Ra','Get-') -Input @(0,1)) + ${RANDo`M`COnVeRsioN`SyntAx} + ')' +  ' '*(&("{2}{1}{0}"-f 'andom','-R','Get') -Input @(0,1)) + '}' + ' '*(&("{1}{2}{0}"-f 'ndom','Get','-Ra') -Input @(0,1)) + ')'
    
    
    ${neWS`cR`IpT`AR`Ray}   = @()
    ${n`E`wscri`PtArRay}  += (&("{1}{2}{0}{3}"-f'-Rand','Ge','t','om') -Input ${BAS`eSCri`PtaR`RAy}) + ' '*(&("{3}{1}{0}{2}"-f'-Ra','et','ndom','G') -Input @(0,1)) + ${J`OiN} + ' '*(&("{2}{0}{1}" -f'et','-Random','G') -Input @(0,1)) + "''"
    ${NeWSc`R`iPTArr`Ay}  += ${j`oiN} + ' '*(&("{2}{3}{1}{0}" -f'om','and','Get','-R') -Input @(0,1)) + (&("{3}{2}{0}{1}" -f'ndo','m','Ra','Get-') -Input ${baS`E`scRI`PtA`RraY})
    ${nE`WSCRIpTA`R`R`AY}  += ${st`R`JoIN} + '(' + ' '*(&("{0}{2}{1}"-f'G','ndom','et-Ra') -Input @(0,1)) + "''" + ' '*(&("{1}{0}{2}"-f 'et-Rando','G','m') -Input @(0,1)) + ',' + ' '*(&("{2}{1}{0}" -f'dom','t-Ran','Ge') -Input @(0,1)) + (&("{1}{0}{2}"-f'o','Get-Rand','m') -Input ${b`ASESC`RIpTaR`RaY}) + ' '*(&("{0}{2}{1}" -f 'G','ndom','et-Ra') -Input @(0,1)) + ')'
    ${nEwS`CRIPt`ARRay}  += '"' + ' '*(&("{2}{0}{1}" -f 'n','dom','Get-Ra') -Input @(0,1)) + '$(' + ' '*(&("{0}{2}{1}{3}" -f'Get','o','-Rand','m') -Input @(0,1)) + ${SETOf`Sv`AR} + ' '*(&("{1}{0}{2}{3}" -f'd','Get-Ran','o','m') -Input @(0,1)) + ')' + ' '*(&("{2}{0}{1}"-f '-','Random','Get') -Input @(0,1)) + '"' + ' '*(&("{1}{0}{2}{3}" -f'et-R','G','an','dom') -Input @(0,1)) + '+' + ' '*(&("{2}{0}{1}"-f'et-Ra','ndom','G') -Input @(0,1)) + ${ST`Rs`Tr} + (&("{1}{0}{2}" -f't-Rando','Ge','m') -Input ${b`ASE`sC`R`iptaRrAY}) + ' '*(&("{1}{2}{0}"-f 'om','Get-Ran','d') -Input @(0,1)) + '+' + '"' + ' '*(&("{2}{1}{0}"-f 'ndom','et-Ra','G') -Input @(0,1)) + '$(' + ' '*(&("{2}{0}{1}{3}" -f'et-','R','G','andom') -Input @(0,1)) + ${Se`T`OFsv`ARbacK} + ' '*(&("{3}{0}{1}{2}" -f'et-','Ran','dom','G') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}" -f'om','and','Get-R') -Input @(0,1)) + '"'

    
    ${nEW`scrI`pT} = (&("{2}{1}{0}" -f 'dom','Ran','Get-') -Input ${N`EWs`criPTaR`R`Ay})

    
    
    ${inv`o`KEE`x`pRESs`iONs`YNTaX}  = @()
    ${I`NvoKe`ExprEsSIoNs`Ynt`Ax} += (&("{0}{1}{2}" -f'Get-Ran','do','m') -Input @('IEX',("{2}{4}{1}{3}{0}"-f 'n','pressi','In','o','voke-Ex')))
    
    
    
    ${iN`VoCAti`On`Ope`RA`TOR} = (&("{2}{0}{1}"-f '-R','andom','Get') -Input @('.','&')) + ' '*(&("{1}{2}{0}" -f'andom','G','et-R') -Input @(0,1))
    ${i`Nv`O`k`eexPRESsIoNSYntAx} += ${I`NVO`c`AT`IONo`PeraToR} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${iNV`okeExp`REs`SIO`NS`y`NTaX} += ${InvocA`T`ioN`o`peRATOr} + ('( '+"`$PSHome[") + (&("{0}{2}{1}" -f 'G','dom','et-Ran') -Input @(4,21)) + "]+`$PSHome[" + (&("{2}{1}{0}"-f 'm','Rando','Get-') -Input @(30,34)) + ((("{0}{2}{1}"-f']+sI0xs',')','I0'))."re`place"('sI0',[STriNg][ChAR]39))
    ${inVO`k`eExpReSSIONs`YN`Tax} += ${InVOca`TiOnOP`eRaT`Or} + ('( '+"`$env:ComSpec[4,") + (&("{2}{0}{1}"-f 'an','dom','Get-R') -Input @(15,24,26)) + (((("{1}{4}{2}{0}{5}{3}"-f'}{',',2','-Join{0',')','5]','0}'))  -F[CHAR]39))
    ${Inv`O`kEE`XPRE`sSi`OnsYntAX} += ${i`NV`o`cAtiONopER`ATOr} + "((" + (&("{1}{0}{2}" -f 'd','Get-Ran','om') -Input @(("{1}{2}{0}"-f 'iable','G','et-Var'),'GV',("{1}{0}" -f'ariable','V'))) + (((("{10}{2}{11}{9}{3}{8}{0}{5}{1}{4}{7}{6}" -f ',11,','o','pT','.Name[','inpT','2]-J',')','cpTc','3','*mdr*pTc)',' ','c'))  -rEplAcE  'pTc',[ChaR]39))
    ${In`VO`keEXPReS`SIoN`sy`N`TAx} += ${INvO`Ca`TiO`NO`PERAtOr} + "( " + (&("{2}{0}{3}{1}" -f'an','om','Get-R','d') -Input @(((('6bN'+'V'+'erb'+'osePr'+'ef'+'eren'+'ce.'+'ToS'+'t'+'ring('+')')  -CrePlacE  '6bN',[char]36)),((('([Strin'+'g'+']'+'j'+'qa'+'V'+'erboseP'+'r'+'eferenc'+'e)')-REPLACE ([chAr]106+[chAr]113+[chAr]97),[chAr]36)))) + (((("{0}{4}{6}{3}{2}{1}{5}{7}" -f '[1,','o','J','ZhW-','3]+ZhW','i','x','nZhWZhW)'))  -rePLACE'ZhW',[ChAr]39))
    
    

    
    ${InVO`keeX`PR`eSsiOn} = (&("{3}{0}{2}{1}"-f 'an','m','do','Get-R') -Input ${i`NVOKEEx`PRe`SsIOnSyn`TAx})

    
    ${INv`O`keE`x`p`REsSioN} = ([Char[]]${i`N`VOKEe`xPressIon} | &("{2}{3}{1}{0}"-f't','jec','F','orEach-Ob') {${CH`Ar} = ${_}.("{0}{1}{2}"-f 'ToS','trin','g').Invoke().("{1}{0}"-f 'wer','ToLo').Invoke(); If(&("{1}{2}{0}"-f'm','G','et-Rando') -Input @(0..1)) {${C`HAr} = ${C`HAR}.("{2}{0}{1}" -f 'Upp','er','To').Invoke()} ${c`HAR}}) -Join ''
    
    
    ${In`V`Oke`oPTiO`Ns}  = @()
    ${i`NVO`keOptIo`NS} += ' '*(&("{2}{1}{0}"-f'Random','-','Get') -Input @(0,1)) + ${INVoK`Eex`preSSi`on} + ' '*(&("{0}{2}{1}" -f 'Ge','om','t-Rand') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}" -f 't-Random','e','G') -Input @(0,1)) + ${n`EWsc`Ript} + ' '*(&("{0}{1}{2}"-f'Ge','t','-Random') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{3}{2}"-f 'Ge','t-Ra','om','nd') -Input @(0,1))
    ${in`VOKeo`Pt`IonS} += ' '*(&("{0}{2}{1}{3}" -f'Get-Ra','do','n','m') -Input @(0,1)) + ${neWsc`RI`pT} + ' '*(&("{0}{2}{1}"-f'G','ndom','et-Ra') -Input @(0,1)) + '|' + ' '*(&("{1}{0}{2}" -f 't-Ran','Ge','dom') -Input @(0,1)) + ${invOkEEx`p`R`EsS`I`on}

    ${Ne`w`sCrIPt} = (&("{2}{1}{0}" -f 'andom','-R','Get') -Input ${IN`VO`K`eO`pTionS})

    
    If(!${pS`B`O`UNd`PArAMETeRs}[("{0}{2}{1}"-f 'Pass','ru','Th')])
    {
        
        ${PowerS`HEL`lFL`A`gs} = @()

        
        
        ${c`o`MmanDlineO`pTIO`Ns} = &("{2}{0}{3}{1}" -f'-Ob','t','New','jec') ("{1}{0}"-f '[]','String')(0)
        If(${P`sBOUNd`Paramet`ers}[("{2}{0}{1}"-f'oEx','it','N')])
        {
          ${F`UllA`R`g`UMENt} = ("{0}{1}{2}" -f'-','N','oExit');
          ${COmM`ANdLInEOpT`I`OnS} += ${FuLlaRGu`m`ENT}.("{1}{0}{2}" -f 'ubSt','S','ring').Invoke(0,(&("{0}{2}{1}"-f'Get-R','dom','an') -Minimum 4 -Maximum (${f`U`llaRGUM`Ent}."L`eNGTh"+1)))
        }
        If(${Ps`BOUn`dP`AramETerS}[("{0}{1}{2}" -f 'No','Pr','ofile')])
        {
          ${Fu`Lla`RG`UMEnt} = ("{2}{0}{1}"-f 'P','rofile','-No');
          ${cOm`mAN`dLIn`eOp`TI`Ons} += ${FUL`L`ArgUM`ENT}.("{2}{0}{1}" -f'S','tring','Sub').Invoke(0,(&("{2}{0}{1}"-f 't-Ra','ndom','Ge') -Minimum 4 -Maximum (${fuLlA`Rgu`MeNt}."l`eNgtH"+1)))
        }
        If(${p`sbO`UNdPA`RaMetErS}[("{2}{3}{1}{0}"-f 've','i','NonInt','eract')])
        {
          ${fuLLaRgU`Me`Nt} = ("{1}{0}{3}{2}"-f 'rac','-NonInte','ive','t');
          ${CO`MmAn`D`lInEOP`TIOns} += ${Fu`LLAR`gUM`e`Nt}.("{0}{2}{1}" -f 'Sub','ing','Str').Invoke(0,(&("{3}{0}{1}{2}"-f 'a','nd','om','Get-R') -Minimum 5 -Maximum (${fuL`LArgu`M`enT}."len`g`TH"+1)))
        }
        If(${pSBouNd`P`Ar`Amet`ErS}[("{1}{2}{0}" -f'Logo','N','o')])
        {
          ${FuLlar`GumE`Nt} = ("{0}{1}"-f '-NoL','ogo');
          ${C`O`MmANDL`inEOpT`ions} += ${F`ULlArGume`Nt}.("{2}{1}{0}"-f 'ng','ubStri','S').Invoke(0,(&("{1}{0}{2}" -f 'et-Ran','G','dom') -Minimum 4 -Maximum (${fu`ll`ArGUMEnt}."l`EngTH"+1)))
        }
        If(${p`SbOUn`dPA`Ra`Meters}[("{3}{1}{0}{2}" -f'ndowS','i','tyle','W')] -OR ${wi`N`DOwSSty`le})
        {
            ${Fu`LL`Arg`U`mEnt} = ("{0}{1}{2}"-f '-W','indowStyl','e')
            If(${WINd`ows`S`TYle}) {${A`R`GumEn`TvalUE} = ${WINdowSS`TY`Le}}
            Else {${ARG`UMe`N`TVa`lUe} = ${PS`BO`UNDpAR`Am`etErS}[("{3}{2}{1}{0}"-f'le','y','St','Window')]}

            
            Switch(${aRgu`mentV`A`LUe}.("{0}{1}"-f'To','Lower').Invoke())
            {
                ("{2}{0}{1}" -f 'rm','al','no')    {If(&("{2}{1}{0}" -f't-Random','e','G') -Input @(0..1)) {${ARGu`Men`TVAL`Ue} = (&("{2}{1}{0}"-f 't-Random','e','G') -Input @('0','n','no','nor',("{1}{0}"-f 'm','nor'),("{1}{0}"-f'rma','no')))}}
                ("{1}{2}{0}" -f'n','hi','dde')    {If(&("{2}{0}{1}" -f'and','om','Get-R') -Input @(0..1)) {${ArGument`V`AL`Ue} = (&("{1}{2}{0}"-f 'dom','Get-R','an') -Input @('1','h','hi','hid',("{0}{1}"-f 'hi','dd'),("{0}{1}"-f'hid','de')))}}
                ("{0}{2}{1}" -f'mi','d','nimize') {If(&("{2}{0}{1}" -f't-Ra','ndom','Ge') -Input @(0..1)) {${A`R`gUMeNT`VALuE} = (&("{2}{0}{1}{3}"-f'Ra','nd','Get-','om') -Input @('2','mi','min',("{0}{1}" -f 'mi','ni'),("{1}{0}" -f 'm','mini'),("{1}{2}{0}" -f'mi','min','i'),("{0}{1}{2}"-f 'min','imi','z'),("{2}{1}{0}"-f'e','imiz','min')))}}
                ("{2}{0}{1}"-f 'ximi','zed','ma') {If(&("{0}{2}{1}" -f 'G','-Random','et') -Input @(0..1)) {${a`Rgum`e`NTv`ALUe} = (&("{1}{2}{0}"-f'Random','Get','-') -Input @('3','ma','max',("{0}{1}" -f'max','i'),("{0}{1}"-f'm','axim'),("{1}{0}"-f'ximi','ma'),("{0}{1}"-f'ma','ximiz'),("{1}{2}{0}"-f'e','ma','ximiz')))}}
                ("{1}{0}" -f 'ult','defa') {&("{1}{2}{0}" -f 'r','W','rite-Erro') ('A'+'n '+'in'+'v'+'alid '+"`$ArgumentValue "+'va'+'l'+'ue '+"($ArgumentValue) "+'w'+'as '+'pas'+'s'+'ed '+'to'+' '+'s'+'wi'+'tch '+'blo'+'ck '+'fo'+'r '+'Out'+'-P'+'ow'+'erS'+'hell'+'La'+'uncher.'); Exit;}
            }

            ${p`OWeR`ShELLF`lAGS} += ${ful`LAr`G`UmEnt}.("{1}{0}{2}" -f 'trin','SubS','g').Invoke(0,(&("{0}{1}{2}" -f'G','et-Rand','om') -Minimum 2 -Maximum (${f`UlLA`Rg`UME`Nt}."Len`GtH"+1))) + ' '*(&("{1}{0}{2}"-f't-Ra','Ge','ndom') -Minimum 1 -Maximum 3) + ${argU`mEN`T`Va`LuE}
        }
        If(${pSb`ou`NDparAmet`e`Rs}[("{0}{1}{2}" -f 'Exec','u','tionPolicy')] -OR ${eXe`c`Ut`IoN`polIcy})
        {
            ${FUl`LarG`UMent} = ("{3}{4}{1}{2}{0}" -f'icy','P','ol','-Exec','ution')
            If(${EXecUt`io`NpoLi`cY}) {${A`Rg`UmEnTv`ALUe} = ${E`XeC`UtiOnPolI`CY}}
            Else {${ArgUmENT`V`Alue} = ${pSBo`U`N`D`pARaME`TErS}[("{0}{4}{2}{1}{3}" -f 'Exe','olic','P','y','cution')]}
            
            ${e`XeCuTioNp`ol`ic`yfLagS} = @()
            ${E`XEcut`I`ONPolICyF`lA`gS} += '-EP'
            For(${IN`DeX}=3; ${IN`DeX} -le ${f`UlLA`RGUM`EnT}."lEN`GtH"; ${IN`DeX}++)
            {
                ${ex`eCUtionpOl`icYFL`AGS} += ${FUllarGu`M`e`Nt}.("{1}{0}"-f 'ing','SubStr').Invoke(0,${I`ND`EX})
            }
            ${e`XecUt`iOnpoLIc`YFlAg} = &("{1}{0}{2}"-f 'et-Ra','G','ndom') -Input ${eXe`cUtIO`Np`Oli`CyflaGs}
            ${po`WeRS`h`ellflAGs} += ${E`XeC`Ut`IOnpoLICYFlAG} + ' '*(&("{0}{2}{1}"-f 'Get','m','-Rando') -Minimum 1 -Maximum 3) + ${Ar`gumEN`TvaL`UE}
        }
        
        
        
        If(${cO`MmAndLi`N`Eop`TiO`Ns}."Co`UNT" -gt 1)
        {
            ${COmma`Ndlin`Eop`Ti`oNS} = &("{2}{0}{1}"-f'R','andom','Get-') -InputObject ${c`oMmANDlI`N`eo`pTIOns} -Count ${cOmm`A`NDLINeO`pTIonS}."COu`NT"
        }

        
        If(${p`sBOu`NdpARaM`eTE`Rs}[("{2}{1}{0}"-f 'and','m','Com')])
        {
            ${fu`l`LarGum`e`Nt} = ("{2}{0}{1}" -f 'om','mand','-C')
            ${coMmAn`DLiNeo`P`T`IOnS} += ${fU`l`laRg`Um`Ent}.("{1}{0}{2}"-f'ubStr','S','ing').Invoke(0,(&("{1}{2}{0}{3}"-f'-R','G','et','andom') -Minimum 2 -Maximum (${fU`ll`A`RgumENt}."lenG`Th"+1)))
        }

        
        For(${i}=0; ${i} -lt ${P`OwersHEL`lFL`A`gs}."C`OuNT"; ${I}++)
        {
            ${POW`E`Rs`h`eLlf`LAgS}[${i}] = ([Char[]]${P`owerShE`l`LflAgs}[${i}] | &("{0}{3}{1}{4}{2}" -f'F','ch-Ob','ect','orEa','j') {${CH`Ar} = ${_}.("{1}{0}"-f'ng','ToStri').Invoke().("{1}{0}" -f 'Lower','To').Invoke(); If(&("{2}{0}{1}" -f 'et-','Random','G') -Input @(0..1)) {${C`hAr} = ${c`Har}.("{0}{1}"-f'ToUpp','er').Invoke()} ${C`hAr}}) -Join ''
        }

        
        ${comMAnD`L`iNeOP`TI`ONs} = (${coMMa`NdLINE`o`p`Ti`oNs} | &("{3}{2}{4}{0}{1}"-f 'Obje','ct','or','F','Each-') {${_} + " "*(&("{0}{1}{3}{2}"-f'G','et-Ra','om','nd') -Minimum 1 -Maximum 3)}) -Join ''
        ${Co`M`mA`N`dliN`EO`PTIONS} = " "*(&("{3}{1}{2}{0}"-f 'dom','-R','an','Get') -Minimum 0 -Maximum 3) + ${comMAn`DLinEo`P`Ti`o`Ns} + " "*(&("{2}{1}{0}"-f'dom','an','Get-R') -Minimum 0 -Maximum 3)

        
        If(${P`s`BOuN`Dp`ARAM`eters}[("{0}{1}"-f'W','ow64')])
        {
            ${c`oMMAndlin`eouT`p`Ut} = "C:\WINDOWS\SysWOW64\WindowsPowerShell\v1.0\powershell.exe $($CommandlineOptions) `"$NewScript`" "
        }
        Else
        {
            
            
            ${c`o`Mm`An`DlINeOUt`PuT} = "powershell $($CommandlineOptions) `"$NewScript`" "
        }

        
        ${cM`d`M`AXLEn`GTH} = 8190
        If(${Co`M`mAnDl`INEO`UTp`Ut}."len`GTH" -gt ${C`mdmaXle`NgTH})
        {
                &("{1}{2}{0}" -f'Warning','W','rite-') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        }
        
        ${neW`scrI`PT} = ${co`MMandl`in`eoutP`Ut}
    }

    Return ${NewS`c`RIpT}
}
