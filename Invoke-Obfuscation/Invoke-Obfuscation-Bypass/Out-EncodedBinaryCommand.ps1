  &("{2}{0}{1}"-f 'ET','-iTEM','S') ("v"+"ariA"+"bLE:"+"4c"+"K0X") ([typE]("{1}{0}"-F'O.FiLE','i')  ) ;  $Yxo =[typE]("{0}{1}"-f 'C','ONVErT');


















Function OuT-`eN`Co`d`ED`BiNaRycoMMA`Nd
{


    [CmdletBinding(deFAUlTparaMEtersEtName = {"{1}{0}{2}"-f'ile','F','Path'})] Param (
        [Parameter(POsITION = 0, VAlUEfROMPiPELiNe = ${Tr`UE}, ParAMETErSEtnaME = "SCRi`PtB`loCk")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${SC`RiP`TBLO`Ck},

        [Parameter(pOSItion = 0, pARAMETErsETNAme = "FI`leP`ATH")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${p`AtH},

        [Switch]
        ${No`ex`IT},

        [Switch]
        ${n`OPRoF`Ile},

        [Switch]
        ${NoNiNT`Era`C`TI`Ve},

        [Switch]
        ${no`LOgO},

        [Switch]
        ${w`ow64},
        
        [Switch]
        ${C`O`mMand},

        [ValidateSet({"{2}{0}{1}"-f 'm','al','Nor'}, {"{1}{2}{0}" -f'zed','Mi','nimi'}, {"{0}{1}{2}" -f 'Max','imiz','ed'}, {"{1}{0}" -f'idden','H'})]
        [String]
        ${wInD`OW`stY`lE},

        [ValidateSet({"{0}{2}{1}"-f 'By','ass','p'}, {"{0}{2}{1}{3}" -f 'U','estr','nr','icted'}, {"{0}{1}{2}"-f 'RemoteSi','gn','ed'}, {"{2}{1}{0}" -f'ed','gn','AllSi'}, {"{2}{0}{1}" -f 'estri','cted','R'})]
        [String]
        ${EXECUTioNpo`l`i`CY},
        
        [Switch]
        ${P`AS`sthRu}
    )

    
    ${E`Nc`O`DingBa`se} = 2

    
    If(${pSBOu`ND`par`AME`Ters}[("{0}{1}" -f 'Pa','th')])
    {
        &("{4}{3}{2}{0}{1}"-f'dIte','m','l','Chi','Get-') ${pA`TH} -ErrorAction ("{1}{0}"-f'top','S') | &("{0}{1}"-f'O','ut-Null')
        ${sCrI`PT`ST`RINg} =   $4CK0X::("{2}{3}{0}{1}"-f 'lT','ext','Rea','dAl').Invoke((&("{2}{0}{3}{1}"-f 's','-Path','Re','olve') ${pA`Th}))
    }
    Else
    {
        ${SCrIPT`S`TrIng} = [String]${SCr`ipTB`Lo`CK}
    }

    
    
    ${rA`NDOM`dEli`mITErS}  = @('_','-',',','{','}','~','!','@','%','&','<','>',';',':')

    
    @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z') | &("{2}{3}{1}{0}"-f 'bject','-O','For','Each') {${UppeRloWER`cH`AR} = ${_}; If(((&("{2}{0}{1}" -f'o','m','Get-Rand') -Input @(1..2))-1 -eq 0)) {${up`pErl`oWercH`AR} = ${uPpEr`lo`W`eRC`HaR}.("{0}{1}"-f'ToU','pper').Invoke()} ${rAND`O`mDELimIt`eRS} += ${U`pPeRL`oW`ErChaR}}
    
    
    ${raNdO`mDE`lI`miTerS} = (&("{0}{2}{1}" -f'Get-R','om','and') -Input ${raNDo`M`DElimIte`Rs} -Count (${rA`N`D`omDEl`IMitErS}."CoU`Nt"/4))

    
    ${dELImiTE`DencOde`DA`RR`AY} = ''
    ([Char[]]${scrI`PTSt`Ri`Ng}) | &("{0}{2}{1}{3}" -f'ForEac','ec','h-Obj','t') {${D`EL`IM`it`EdEnCOd`eDA`RRay} += (  (&('gi') VariAbLe:YXo  )."vA`LuE"::"tOs`TR`InG"(([Int][Char]${_}),${EN`CO`dI`NgbAse}) + (&("{1}{2}{0}" -f'-Random','Ge','t') -Input ${ran`d`OmD`E`LIMite`RS}))}

    
    ${deLIM`i`TED`ENC`odedAR`RAy} = ${dE`li`mITEd`ENC`OdEdaR`RAY}.("{0}{2}{1}" -f'Su','ng','bStri').Invoke(0,${deLImITE`denco`D`EdAR`R`Ay}."L`e`NGTH"-1)

    
    ${raNDOmDEL`IM`it`Er`STOpRiNt} = (&("{2}{0}{1}"-f'et-','Random','G') -Input ${RaNdo`MdElI`M`I`Ters} -Count ${R`AND`OmdEL`i`MITe`RS}."LEng`TH") -Join ''

    
    ${f`O`R`eAchobjEcT} = &("{0}{1}{2}" -f'Get-Ra','n','dom') -Input @(("{0}{1}"-f'For','Each'),("{0}{3}{2}{1}"-f 'Fo','bject','ch-O','rEa'),'%')
    ${st`RJOIN}       = ([Char[]]("{1}{2}{4}{0}{3}" -f '::Joi','[S','tr','n','ing]')      | &("{1}{0}{4}{3}{2}"-f'o','F','bject','O','rEach-') {${CH`Ar} = ${_}.("{0}{1}"-f 'T','oString').Invoke().("{1}{0}" -f'ower','ToL').Invoke(); If(&("{0}{1}{2}" -f 'Get-Ra','n','dom') -Input @(0..1)) {${CH`Ar} = ${c`haR}.("{1}{0}"-f'Upper','To').Invoke()} ${CH`Ar}}) -Join ''
    ${s`TrstR}        = ([Char[]]("{1}{0}"-f'tring]','[S')            | &("{3}{2}{0}{1}"-f '-O','bject','Each','For') {${c`HaR} = ${_}.("{1}{0}"-f 'ng','ToStri').Invoke().("{1}{0}"-f 'oLower','T').Invoke(); If(&("{0}{1}{2}"-f 'G','et-Ran','dom') -Input @(0..1)) {${cH`Ar} = ${cH`AR}.("{2}{0}{1}" -f 'Uppe','r','To').Invoke()} ${c`haR}}) -Join ''
    ${jo`in}          = ([Char[]]("{1}{0}" -f 'in','-Jo')               | &("{0}{1}{2}" -f'F','orEach-O','bject') {${c`HaR} = ${_}.("{2}{0}{1}" -f'i','ng','ToStr').Invoke().("{0}{1}"-f 'ToL','ower').Invoke(); If(&("{2}{3}{0}{1}"-f '-Rando','m','G','et') -Input @(0..1)) {${c`hAr} = ${Ch`AR}.("{0}{1}" -f'T','oUpper').Invoke()} ${c`HAr}}) -Join ''
    ${C`hA`RsTR}       = ([Char[]]("{0}{1}"-f 'Cha','r')                | &("{0}{2}{1}{3}" -f 'For','bj','Each-O','ect') {${Ch`Ar} = ${_}.("{1}{0}{2}" -f 'oS','T','tring').Invoke().("{1}{0}{2}"-f 'Low','To','er').Invoke(); If(&("{3}{0}{1}{2}"-f 'et-Ran','do','m','G') -Input @(0..1)) {${c`HAr} = ${c`Har}.("{2}{0}{1}"-f'o','Upper','T').Invoke()} ${c`HAr}}) -Join ''
    ${i`Nt}           = ([Char[]]'Int'                 | &("{1}{3}{2}{0}" -f 't','For','c','Each-Obje') {${cH`Ar} = ${_}.("{0}{1}{2}" -f 'To','St','ring').Invoke().("{1}{0}"-f 'r','ToLowe').Invoke(); If(&("{2}{1}{0}"-f 'm','ando','Get-R') -Input @(0..1)) {${Ch`AR} = ${cH`Ar}.("{1}{0}" -f'pper','ToU').Invoke()} ${Ch`Ar}}) -Join ''
    ${For`eaC`h`ObJecT} = ([Char[]]${f`O`REAchoB`jEcT}        | &("{1}{2}{0}{3}" -f'h','For','Eac','-Object') {${CH`Ar} = ${_}.("{2}{1}{0}" -f 'g','Strin','To').Invoke().("{0}{2}{1}" -f 'To','r','Lowe').Invoke(); If(&("{2}{1}{3}{0}"-f 'andom','-','Get','R') -Input @(0..1)) {${ch`Ar} = ${cH`Ar}.("{1}{0}" -f'r','ToUppe').Invoke()} ${c`har}}) -Join ''
    ${t`OiN`T16}       = ([Char[]]((("{1}{5}{2}{0}{3}{4}" -f'oI','[Co',':T','n','t16(','nvert]:'))) | &("{0}{3}{1}{2}"-f'ForE','e','ct','ach-Obj') {${CH`AR} = ${_}.("{2}{0}{1}"-f 'rin','g','ToSt').Invoke().("{0}{1}" -f 'To','Lower').Invoke(); If(&("{1}{0}{3}{2}"-f'Rand','Get-','m','o') -Input @(0..1)) {${c`hAR} = ${c`hAr}.("{0}{2}{1}" -f'ToUpp','r','e').Invoke()} ${C`Har}}) -Join ''

    
    ${ranDoM`deLImit`Ers`Topr`iNTFoRdasHs`Pl`it} = ''
    ForEach(${raN`dOm`dELi`MitER} in ${Ran`dOMDelimi`T`Ers})
    {
        
        ${spL`it} = ([Char[]]("{0}{1}"-f'Sp','lit') | &("{0}{1}{2}"-f 'ForEach-O','bjec','t') {${ch`AR} = ${_}.("{0}{2}{1}" -f'T','g','oStrin').Invoke().("{2}{0}{1}"-f 'oLow','er','T').Invoke(); If(&("{2}{0}{1}"-f 'et-Ra','ndom','G') -Input @(0..1)) {${ch`Ar} = ${C`HAr}.("{1}{0}"-f 'r','ToUppe').Invoke()} ${C`Har}}) -Join ''

        ${R`ANDOmD`e`LiMite`RSTO`P`R`I`NTfordAsHS`PliT} += ('-' + ${SP`lIt} + ' '*(&("{1}{2}{0}" -f'om','Get-','Rand') -Input @(0,1)) + "'" + ${Ra`NDOmdEli`MIt`eR} + "'" + ' '*(&("{2}{3}{1}{0}"-f 'dom','an','G','et-R') -Input @(0,1)))
    }
    ${RaNdomdeli`mITeRS`T`oP`R`i`NtfoR`D`AsH`SPLiT} = ${RAndOM`del`iMitE`RSt`OPRINt`FO`RDAs`hsplIT}.("{0}{1}" -f 'Tr','im').Invoke()
    
    
    ${R`AndOMstRi`NG`syNT`AX} = ([Char[]](&("{0}{2}{1}" -f 'Get-','andom','R') -Input @((('['+'String]{'+'0'+'}_') -F [cHAr]36),((('hWO_'+'.T'+'oSt'+'ring()')-crEPLAcE ([cHAr]104+[cHAr]87+[cHAr]79),[cHAr]36)))) | &("{3}{0}{2}{1}"-f 'orE','-Object','ach','F') {${c`haR} = ${_}.("{1}{2}{0}"-f 'ng','T','oStri').Invoke().("{0}{1}"-f'T','oLower').Invoke(); If(&("{2}{1}{0}"-f'om','et-Rand','G') -Input @(0..1)) {${C`HAR} = ${ch`Ar}.("{0}{1}" -f'To','Upper').Invoke()} ${Ch`Ar}}) -Join ''
    ${ra`N`DOmConvERS`ioNs`YNtAX}  = @()
    ${rAN`DO`MConv`Er`SiO`NsyNT`Ax} += "[$CharStr]" + ' '*(&("{2}{1}{0}"-f'-Random','t','Ge') -Input @(0,1)) + '(' + ' '*(&("{3}{0}{2}{1}"-f 'n','om','d','Get-Ra') -Input @(0,1)) + ${t`OinT16} + ' '*(&("{1}{2}{0}" -f'm','Ge','t-Rando') -Input @(0,1)) + '(' + ' '*(&("{2}{0}{1}"-f'R','andom','Get-') -Input @(0,1)) + ${RANd`OM`Stri`NGsyN`T`AX} + ' '*(&("{2}{1}{0}" -f't-Random','e','G') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}"-f'm','Rando','Get-') -Input @(0,1)) + ',' + ${ENCodI`Ng`BaSE} + ' '*(&("{0}{2}{1}" -f'Get','om','-Rand') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}"-f 'Get-','ndom','Ra') -Input @(0,1)) + ')'
    ${r`ANDoMc`onVE`Rs`ioNsyn`T`Ax} += ${ToiN`T16} + ' '*(&("{2}{0}{1}"-f'-','Random','Get') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}"-f'andom','-R','Get') -Input @(0,1)) + ${RANDomsTrIn`g`sYNT`Ax} + ' '*(&("{2}{0}{1}" -f '-','Random','Get') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}"-f'G','et','-Random') -Input @(0,1)) + ',' + ' '*(&("{3}{1}{0}{2}"-f'nd','t-Ra','om','Ge') -Input @(0,1)) + ${eN`cOD`i`NgBasE} + ' '*(&("{0}{1}{2}"-f 'Get-','R','andom') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}" -f 'Get-Ran','m','do') -Input @(0,1)) + (&("{2}{0}{3}{1}"-f't','dom','Ge','-Ran') -Input @('-as','-As','-aS','-AS')) + ' '*(&("{3}{0}{2}{1}" -f'Ra','om','nd','Get-') -Input @(0,1)) + "[$CharStr]"
    ${rANd`OmcO`Nv`erSIOnSyNTaX} = (&("{0}{2}{1}" -f 'G','t-Random','e') -Input ${RAn`D`OMcoNvER`SiOnSyN`T`Ax})

    
    ${e`NC`ODE`DaR`RaY} = ''
    ([Char[]]${s`Cri`pTstRiNg}) | &("{4}{3}{0}{1}{2}"-f'h-','O','bject','c','ForEa') {
        
        If( (  &("{1}{0}"-f'r','Di')  VaRiable:Yxo)."vA`lue"::"to`stRi`NG"(([Int][Char]${_}),${ENCOdi`N`Gb`A`sE}).("{0}{1}"-f 'Tr','im').Invoke(("{1}{2}{0}" -f '789','0123','456'))."L`EN`gTh" -gt 0) {${Q`U`oTe} = "'"}
        Else {${QU`OTe} = ''}
        ${ENCO`de`DArRaY} += (${QU`ote} +   ( &("{1}{0}"-f 'M','iTE') ('Var'+'Ia'+'BLE:yxo') )."v`AlUE"::"toS`TriNG"(([Int][Char]${_}),${encO`dIng`BA`Se}) + ${QU`OTE} + ' '*(&("{0}{2}{1}" -f'G','Random','et-') -Input @(0,1)) + ',' + ' '*(&("{2}{0}{1}{3}" -f 'et','-Rand','G','om') -Input @(0,1)))
    }

    
    ${EN`coD`EDaRrAY} = ('(' + ' '*(&("{1}{2}{3}{0}"-f'dom','Get','-R','an') -Input @(0,1)) + ${ENco`DeDA`Rr`AY}.("{1}{0}"-f 'm','Tri').Invoke().("{0}{1}"-f 'Tri','m').Invoke(',') + ')')

    
    
    
    
    ${se`T`Ofs`VA`RsynTAx}      = @()
    ${SEt`oFS`VARs`YNT`AX}     += ("{2}{0}{1}" -f't-','Item','Se') + ' '*(&("{1}{0}{3}{2}"-f 'et-R','G','om','and') -Input @(1,2)) + ((("{2}{0}{3}{4}{1}" -f '8Varia','M8','VM','ble',':OFSV'))."RE`pLA`ce"(([chAR]86+[chAR]77+[chAR]56),[sTrInG][chAR]39)) + ' '*(&("{3}{2}{1}{0}"-f 'm','ndo','et-Ra','G') -Input @(1,2)) + "''"
    ${S`eTOFSVa`RsYnt`Ax}     += (&("{2}{0}{1}"-f 't-Rando','m','Ge') -Input @(("{1}{2}{0}"-f 'iable','Set','-Var'),'SV','SET')) + ' '*(&("{1}{0}{2}"-f '-','Get','Random') -Input @(1,2)) + ((("{0}{2}{1}" -f'{','OFS{0}','0}'))-f[char]39) + ' '*(&("{1}{0}{2}"-f'R','Get-','andom') -Input @(1,2)) + "''"
    ${S`E`TofsVAr}            = (&("{1}{0}{2}" -f 'Rando','Get-','m') -Input ${sE`To`FsVAR`SyNt`Ax})

    ${sE`Tofs`V`ARBAck`SYntAX}  = @()
    ${s`eT`OF`SV`ARBa`CKSyNTAx} += ("{0}{2}{1}"-f 'Set-','m','Ite') + ' '*(&("{1}{2}{0}"-f'Random','Ge','t-') -Input @(1,2)) + ((("{1}{4}{2}{0}{3}"-f'FS5p','5','riable:O','O','pOVa')) -CreplACe([cHaR]53+[cHaR]112+[cHaR]79),[cHaR]39) + ' '*(&("{2}{3}{0}{1}" -f 't-Ra','ndom','G','e') -Input @(1,2)) + "' '"
    ${sEtOf`sv`ArBAcK`sYN`Tax} += (&("{2}{0}{1}{3}" -f'et-','Rando','G','m') -Input @(("{1}{2}{0}"-f 'ble','S','et-Varia'),'SV','SET')) + ' '*(&("{0}{1}{2}"-f 'Get-','Rand','om') -Input @(1,2)) + ((("{0}{2}{1}"-f '5sRO','sR','FS5'))."REPl`A`Ce"(([ChAR]53+[ChAR]115+[ChAR]82),[strinG][ChAR]39)) + ' '*(&("{0}{2}{1}{3}" -f 'G','-Rand','et','om') -Input @(1,2)) + "' '"
    ${SE`To`F`SvaRbAck}        = (&("{2}{1}{0}" -f 'om','and','Get-R') -Input ${Se`TOfsVarback`sYn`T`AX})

    
    ${Set`oFsv`Ar}            = ([Char[]]${s`eT`Of`sVAR}     | &("{3}{4}{1}{0}{2}" -f 'jec','-Ob','t','ForEa','ch') {${C`hAr} = ${_}.("{2}{1}{0}" -f 'ing','r','ToSt').Invoke().("{1}{0}{2}" -f'we','ToLo','r').Invoke(); If(&("{1}{2}{0}" -f'-Random','G','et') -Input @(0..1)) {${C`Har} = ${C`har}.("{0}{1}"-f 'T','oUpper').Invoke()} ${C`HAr}}) -Join ''
    ${seToFsvA`R`B`AcK}        = ([Char[]]${Set`OFS`V`ArBACk} | &("{0}{3}{1}{2}"-f 'F','c','h-Object','orEa') {${c`hAr} = ${_}.("{0}{2}{1}"-f 'ToStr','g','in').Invoke().("{0}{1}{2}" -f'ToLo','we','r').Invoke(); If(&("{0}{2}{1}" -f'G','-Random','et') -Input @(0..1)) {${cH`AR} = ${C`haR}.("{0}{1}"-f 'ToU','pper').Invoke()} ${Ch`AR}}) -Join ''

    
    ${baSE`Sc`R`IPTaRRAy}  = @()
    ${bA`sEsc`RiPT`A`RrAy} += '(' + ' '*(&("{1}{0}{2}"-f'et-Rando','G','m') -Input @(0,1)) + "'" + ${DEliMIT`EdENC`odeD`ArR`AY} + "'." + ${Spl`iT} + "(" + ' '*(&("{0}{2}{1}" -f 'G','andom','et-R') -Input @(0,1)) + "'" + ${r`ANdo`m`deLImIteRsTopR`Int} + "'" + ' '*(&("{3}{1}{0}{2}" -f '-Rando','et','m','G') -Input @(0,1)) + ')' + ' '*(&("{1}{0}{2}" -f'et-','G','Random') -Input @(0,1)) + '|' + ' '*(&("{2}{1}{3}{0}"-f'm','and','Get-R','o') -Input @(0,1)) + ${f`o`Re`ACHOBJeCt} + ' '*(&("{2}{0}{1}"-f't-','Random','Ge') -Input @(0,1)) + '{' + ' '*(&("{2}{1}{0}{3}" -f '-Ra','et','G','ndom') -Input @(0,1)) + '(' + ' '*(&("{1}{2}{0}" -f '-Random','G','et') -Input @(0,1)) + ${raNDOM`con`VER`s`iONs`yNt`AX} + ')' +  ' '*(&("{1}{0}{2}{3}"-f 'an','Get-R','do','m') -Input @(0,1)) + '}' + ' '*(&("{0}{1}{2}" -f'Get-Ra','nd','om') -Input @(0,1)) + ')'
    ${BASe`s`cRIpt`Ar`RaY} += '(' + ' '*(&("{2}{1}{0}" -f 'andom','-R','Get') -Input @(0,1)) + "'" + ${dElimiTE`DENC`OdeDA`R`RAy} + "'" + ' '*(&("{0}{2}{1}"-f'G','m','et-Rando') -Input @(0,1)) + ${RA`ND`o`mD`eLImIteRsT`OPrINtF`ord`A`S`hS`pliT} + ' '*(&("{2}{1}{0}"-f 'om','et-Rand','G') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}"-f 'om','Ge','t-Rand') -Input @(0,1)) + ${f`O`Rea`choBJEct} + ' '*(&("{1}{0}{2}"-f 'ando','Get-R','m') -Input @(0,1)) + '{' + ' '*(&("{2}{1}{0}" -f 'dom','t-Ran','Ge') -Input @(0,1)) + '(' + ' '*(&("{1}{2}{0}"-f't-Random','G','e') -Input @(0,1)) + ${Ran`d`O`MCO`N`VER`SIONsYntAx} + ')' +  ' '*(&("{2}{0}{1}{3}" -f'et-Ra','n','G','dom') -Input @(0,1)) + '}' + ' '*(&("{3}{0}{1}{2}"-f 'et','-R','andom','G') -Input @(0,1)) + ')'
    ${BaSE`SCRiP`T`Ar`RAY} += '(' + ' '*(&("{1}{0}{2}" -f '-Rand','Get','om') -Input @(0,1)) + ${en`c`OD`eDaRRaY} + ' '*(&("{2}{0}{1}{3}" -f't-Ran','d','Ge','om') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}"-f'Random','Ge','t-') -Input @(0,1)) + ${f`Or`EaCHObJ`E`cT} + ' '*(&("{1}{0}{2}" -f 'do','Get-Ran','m') -Input @(0,1)) + '{' + ' '*(&("{2}{0}{1}"-f 't-Rand','om','Ge') -Input @(0,1)) + '(' + ' '*(&("{2}{0}{1}"-f '-Rando','m','Get') -Input @(0,1)) + ${RanDOMCONV`e`RS`io`NsYNtAX} + ')' +  ' '*(&("{1}{2}{0}" -f 'Random','Ge','t-') -Input @(0,1)) + '}' + ' '*(&("{1}{2}{0}"-f'andom','Get-','R') -Input @(0,1)) + ')'
    
    
    ${nE`wS`CR`IPtarrAy}   = @()
    ${n`eW`ScRIpTaR`RAY}  += (&("{2}{1}{0}" -f 'm','ando','Get-R') -Input ${b`AsESc`Ri`P`TArRAy}) + ' '*(&("{2}{3}{1}{0}"-f'om','t-Rand','G','e') -Input @(0,1)) + ${j`OiN} + ' '*(&("{2}{1}{0}"-f 't-Random','e','G') -Input @(0,1)) + "''"
    ${NE`w`sCRi`p`TaRRaY}  += ${Jo`iN} + ' '*(&("{0}{1}{2}" -f'Get','-Rand','om') -Input @(0,1)) + (&("{2}{1}{0}"-f 'm','o','Get-Rand') -Input ${baSeSc`R`IP`TA`R`RAy})
    ${N`EWs`criPTa`R`RAY}  += ${ST`RjOin} + '(' + ' '*(&("{0}{1}{2}" -f'Get','-','Random') -Input @(0,1)) + "''" + ' '*(&("{1}{0}{2}" -f'et-','G','Random') -Input @(0,1)) + ',' + ' '*(&("{2}{1}{3}{0}" -f 'm','-Ran','Get','do') -Input @(0,1)) + (&("{2}{0}{1}"-f 't-Rand','om','Ge') -Input ${BAse`sCrIp`TA`RR`Ay}) + ' '*(&("{1}{0}{2}"-f 'an','Get-R','dom') -Input @(0,1)) + ')'
    ${n`ewS`cRIPtA`R`RAY}  += '"' + ' '*(&("{1}{2}{3}{0}" -f'om','G','et-','Rand') -Input @(0,1)) + '$(' + ' '*(&("{2}{1}{0}"-f'm','ndo','Get-Ra') -Input @(0,1)) + ${S`e`TOfS`VAR} + ' '*(&("{2}{0}{1}"-f 't-Rand','om','Ge') -Input @(0,1)) + ')' + ' '*(&("{2}{0}{1}"-f'R','andom','Get-') -Input @(0,1)) + '"' + ' '*(&("{1}{0}{2}"-f'Ran','Get-','dom') -Input @(0,1)) + '+' + ' '*(&("{2}{1}{0}"-f 't-Random','e','G') -Input @(0,1)) + ${St`RS`TR} + (&("{3}{1}{0}{2}"-f'-Ra','t','ndom','Ge') -Input ${B`A`sESCRI`Pt`ArrAy}) + ' '*(&("{2}{1}{0}"-f'Random','-','Get') -Input @(0,1)) + '+' + '"' + ' '*(&("{1}{0}{2}" -f 'a','Get-R','ndom') -Input @(0,1)) + '$(' + ' '*(&("{0}{1}{2}" -f 'G','e','t-Random') -Input @(0,1)) + ${S`ETO`F`svARbA`cK} + ' '*(&("{1}{2}{0}" -f'ndom','Get','-Ra') -Input @(0,1)) + ')' + ' '*(&("{2}{0}{3}{1}" -f'Ran','om','Get-','d') -Input @(0,1)) + '"'

    
    ${Ne`wSCRI`pt} = (&("{0}{2}{1}" -f 'G','andom','et-R') -Input ${N`ewSc`RiPt`AR`RAy})

    
    
    ${Invokee`x`prEs`SIOnS`YNTAx}  = @()
    ${inVOKeeX`PR`ESSIONsy`Nt`AX} += (&("{1}{2}{0}" -f 'dom','G','et-Ran') -Input @('IEX',("{2}{1}{4}{3}{0}"-f'ion','voke-Ex','In','ress','p')))
    
    
    
    ${i`NVOCatI`O`N`OPe`R`ATOR} = (&("{0}{1}{2}"-f'G','et-Ra','ndom') -Input @('.','&')) + ' '*(&("{2}{0}{1}" -f'-R','andom','Get') -Input @(0,1))
    ${INvO`KEeXpR`E`Ssio`Ns`Yn`TAx} += ${INVOC`Ati`O`NOpER`AtOr} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${INvOKEe`X`Pres`SIOn`SYN`T`Ax} += ${in`VoC`ATi`ONoPE`R`Ator} + ('( '+"`$PSHome[") + (&("{1}{0}{2}" -f't-Ra','Ge','ndom') -Input @(4,21)) + "]+`$PSHome[" + (&("{0}{1}{2}" -f 'Ge','t-Rand','om') -Input @(30,34)) + ((("{0}{2}{1}" -f ']','0T)','+g0Txg'))."r`E`plAce"(([cHAr]103+[cHAr]48+[cHAr]84),[sTring][cHAr]39))
    ${invOkee`x`preSsI`o`NS`YNtAX} += ${i`NVOcaT`IonoPeRAT`oR} + ('( '+"`$env:ComSpec[4,") + (&("{2}{0}{1}"-f'Rand','om','Get-') -Input @(15,24,26)) + ((("{3}{1}{2}{0}{4}" -f'ink8l',']','-Jo',',25','k8l)'))."ReP`LACe"(([chaR]107+[chaR]56+[chaR]108),[STrINg][chaR]39))
    ${i`N`Vo`KEexPreSSi`oNSy`N`TAX} += ${i`N`V`oc`ATIonOp`eRATOR} + "((" + (&("{2}{0}{1}"-f 'and','om','Get-R') -Input @(("{2}{1}{0}{3}" -f't-Vari','e','G','able'),'GV',("{2}{1}{0}"-f 'iable','ar','V'))) + (((("{0}{8}{9}{7}{2}{3}{4}{5}{6}{1}" -f' ',')',',11,2]-','J','oin','r6xr','6x','3','r6x*mdr*','r6x).Name[')) -cRepLAcE 'r6x',[ChaR]39))
    ${invOKeExPRess`Ions`yN`TAX} += ${i`NVoCat`Ion`OperaTor} + "( " + (&("{0}{2}{1}" -f 'Get-Ran','m','do') -Input @(((('Uh'+'BV'+'erbose'+'Prefe'+'re'+'nc'+'e.To'+'S'+'tring()')  -rePlaCE  ([Char]85+[Char]104+[Char]66),[Char]36)),(('(['+'String]Gi'+'YV'+'erboseP'+'r'+'eferenc'+'e'+')')."r`ePLa`CE"(([cHar]71+[cHar]105+[cHar]89),[sTRINg][cHar]36)))) + ((("{0}{5}{3}{6}{1}{4}{2}" -f '[1,3]+','oinh','U)','x','NUhN','hNU','hNU-J'))."RepLA`Ce"('hNU',[strinG][CHAr]39))
    
    

    
    ${i`NVOkee`XPrE`SSiOn} = (&("{0}{1}{2}"-f 'G','e','t-Random') -Input ${InV`oKeEXPReSS`I`oNSyNTAx})

    
    ${iN`Vo`KE`EXpResS`i`ON} = ([Char[]]${i`NVOke`EXpresS`i`on} | &("{1}{0}{2}" -f 'or','F','Each-Object') {${C`haR} = ${_}.("{1}{0}{2}"-f'o','T','String').Invoke().("{1}{0}" -f 'Lower','To').Invoke(); If(&("{1}{2}{0}" -f'om','Get','-Rand') -Input @(0..1)) {${c`har} = ${c`Har}.("{0}{1}" -f'ToUppe','r').Invoke()} ${cH`Ar}}) -Join ''
    
    
    ${iN`Vo`kEO`p`TIONs}  = @()
    ${IN`VOKe`oP`T`IOns} += ' '*(&("{1}{2}{0}" -f'ndom','G','et-Ra') -Input @(0,1)) + ${I`Nv`Ok`eexp`Re`ssiON} + ' '*(&("{0}{1}{2}" -f'Ge','t-Rando','m') -Input @(0,1)) + '(' + ' '*(&("{1}{0}{2}{3}"-f't-','Ge','Ra','ndom') -Input @(0,1)) + ${ne`WScRi`Pt} + ' '*(&("{3}{0}{1}{2}"-f'-Ra','nd','om','Get') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}" -f 'm','ando','Get-R') -Input @(0,1))
    ${i`Nv`okeopti`o`NS} += ' '*(&("{1}{0}{3}{2}" -f'-','Get','ndom','Ra') -Input @(0,1)) + ${New`sC`RiPt} + ' '*(&("{0}{1}{2}"-f 'Get','-Rando','m') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}"-f 'andom','Get-','R') -Input @(0,1)) + ${InvOke`EXprEs`Si`On}

    ${NeW`s`CRI`Pt} = (&("{2}{1}{0}{3}"-f 'do','n','Get-Ra','m') -Input ${inVOke`O`P`TIOnS})

    
    If(!${P`s`BoUn`DpArAmEte`Rs}[("{0}{1}{2}" -f 'PassT','h','ru')])
    {
        
        ${p`o`WerSHELlFlA`gs} = @()

        
        
        ${C`omma`NDli`N`eOP`TIONs} = &("{0}{2}{1}" -f 'New','ct','-Obje') ("{1}{0}" -f 'ing[]','Str')(0)
        If(${PsBo`U`ND`Pa`RameTeRs}[("{0}{1}" -f 'NoExi','t')])
        {
          ${FULl`ARG`UMe`Nt} = ("{1}{0}{2}"-f 'Exi','-No','t');
          ${co`MmANDlin`eOP`TIons} += ${fUllARg`U`Me`Nt}.("{1}{0}{2}"-f'bStrin','Su','g').Invoke(0,(&("{1}{0}{2}" -f 't-Ra','Ge','ndom') -Minimum 4 -Maximum (${F`Ul`laR`GUment}."lEnG`TH"+1)))
        }
        If(${P`SBOUNDp`ARAMET`E`RS}[("{0}{2}{3}{1}"-f'NoPr','le','o','fi')])
        {
          ${F`Ul`lARGu`MEnT} = ("{0}{1}{2}" -f '-NoP','ro','file');
          ${cOm`manD`lineoPT`IO`Ns} += ${full`ArGuM`E`Nt}.("{2}{0}{1}" -f'i','ng','SubStr').Invoke(0,(&("{1}{2}{0}"-f'm','Get-','Rando') -Minimum 4 -Maximum (${fu`lL`ArGU`m`eNT}."leNg`Th"+1)))
        }
        If(${p`sB`OUnd`PAra`metErS}[("{1}{2}{3}{0}"-f'ive','NonI','ntera','ct')])
        {
          ${Fu`LL`ArgUM`ENt} = ("{1}{2}{0}{3}" -f'e','-No','nInt','ractive');
          ${CO`m`MaNDl`In`eOP`TioNs} += ${FUlLAR`g`UM`enT}.("{0}{1}{2}" -f'Su','bStri','ng').Invoke(0,(&("{0}{1}{2}"-f'Get-','R','andom') -Minimum 5 -Maximum (${FUlla`R`GumENT}."lEn`gTh"+1)))
        }
        If(${ps`BoUND`ParAmet`Ers}[("{1}{0}"-f'go','NoLo')])
        {
          ${fuL`lARgum`E`NT} = ("{2}{0}{1}" -f'NoLo','go','-');
          ${COmmANdl`i`N`eop`TIO`Ns} += ${f`UllARG`U`mEnT}.("{1}{0}"-f 'g','SubStrin').Invoke(0,(&("{0}{3}{2}{1}"-f'Get','om','d','-Ran') -Minimum 4 -Maximum (${F`UllarG`UmE`Nt}."L`EnGTh"+1)))
        }
        If(${pSb`o`U`NdpaRAmeteRS}[("{0}{1}{2}" -f'Wind','ow','Style')] -OR ${Wi`N`dowS`S`TYlE})
        {
            ${FUl`LarGume`Nt} = ("{2}{0}{1}{3}" -f'Windo','wS','-','tyle')
            If(${W`i`NDOwSs`T`yLe}) {${a`RG`UME`N`TvAlUe} = ${w`indOW`S`s`TYle}}
            Else {${ArGu`mENtv`AlUe} = ${PSBo`U`NdP`ArAM`ete`Rs}[("{0}{3}{2}{1}"-f 'W','yle','owSt','ind')]}

            
            Switch(${Ar`g`UmEN`TVAlue}.("{1}{0}"-f 'Lower','To').Invoke())
            {
                ("{1}{0}" -f'l','norma')    {If(&("{0}{1}{2}{3}" -f'Get-','Rand','o','m') -Input @(0..1)) {${A`Rgu`Men`TVal`Ue} = (&("{0}{1}{2}" -f'G','et-Rando','m') -Input @('0','n','no','nor',("{0}{1}"-f 'no','rm'),("{1}{0}" -f'orma','n')))}}
                ("{0}{1}{2}"-f'h','idde','n')    {If(&("{2}{1}{0}" -f 't-Random','e','G') -Input @(0..1)) {${ArgUmE`Ntva`L`Ue} = (&("{1}{0}{2}"-f 'Ra','Get-','ndom') -Input @('1','h','hi','hid',("{1}{0}" -f'dd','hi'),("{1}{0}" -f'idde','h')))}}
                ("{2}{1}{0}" -f'zed','inimi','m') {If(&("{0}{1}{2}" -f 'Get-Ra','nd','om') -Input @(0..1)) {${ArGUmE`NTv`ALuE} = (&("{0}{1}{2}" -f'Get','-Ran','dom') -Input @('2','mi','min',("{0}{1}" -f 'm','ini'),("{1}{0}"-f 'nim','mi'),("{2}{0}{1}" -f 'i','mi','min'),("{1}{0}{2}" -f 'nim','mi','iz'),("{1}{0}" -f'nimize','mi')))}}
                ("{0}{2}{1}"-f'max','ized','im') {If(&("{1}{0}{2}"-f 'et-Ra','G','ndom') -Input @(0..1)) {${aR`gUme`NTval`UE} = (&("{1}{3}{0}{2}"-f '-Rand','Ge','om','t') -Input @('3','ma','max',("{0}{1}"-f 'max','i'),("{1}{0}"-f 'axim','m'),("{2}{1}{0}"-f 'mi','xi','ma'),("{0}{1}" -f'm','aximiz'),("{1}{2}{0}"-f 'ize','max','im')))}}
                ("{2}{0}{1}"-f'efaul','t','d') {&("{1}{0}{2}"-f 'rite-Erro','W','r') ('An'+' '+'i'+'nva'+'lid '+"`$ArgumentValue "+'value'+' '+"($ArgumentValue) "+'was'+' '+'pass'+'e'+'d '+'to'+' '+'sw'+'itch '+'bl'+'ock '+'f'+'or '+'Out-P'+'o'+'we'+'rS'+'hellLauncher'+'.'); Exit;}
            }

            ${p`oWeR`SH`elLFLAgs} += ${fullaR`gU`mEnt}.("{1}{2}{0}" -f 'ng','SubStr','i').Invoke(0,(&("{0}{2}{1}" -f 'Ge','Random','t-') -Minimum 2 -Maximum (${F`ULLaR`GuM`eNt}."Len`gTh"+1))) + ' '*(&("{3}{2}{1}{0}" -f 'dom','n','et-Ra','G') -Minimum 1 -Maximum 3) + ${A`RgU`MEn`T`ValuE}
        }
        If(${Psbo`UN`dpAR`AMEteRS}[("{1}{2}{0}"-f'icy','Execution','Pol')] -OR ${exe`cuti`ONp`OlICY})
        {
            ${FulL`AR`Gu`MeNT} = ("{0}{1}{4}{3}{2}" -f '-','E','icy','Pol','xecution')
            If(${e`xec`U`Tionp`oLIcY}) {${ARGum`eNtv`A`LUe} = ${EXe`CU`TIonP`OLIcY}}
            Else {${A`R`gUmeNtVAl`UE} = ${pS`Boun`dp`ARAm`ETErS}[("{0}{1}{3}{2}"-f 'Ex','e','icy','cutionPol')]}
            
            ${exeCU`TIoN`P`OlicyFLA`Gs} = @()
            ${ExEC`U`TIONpOl`iCyf`LAGS} += '-EP'
            For(${i`NdEx}=3; ${in`Dex} -le ${f`UL`lar`GUMeNt}."lEn`GTh"; ${IND`eX}++)
            {
                ${Ex`eCU`TiO`Np`O`licyF`Lags} += ${fUL`lArg`UMe`NT}.("{2}{1}{0}"-f 'ng','tri','SubS').Invoke(0,${IN`DEx})
            }
            ${eXEc`UTion`P`oLI`cY`FLag} = &("{0}{2}{1}" -f 'Ge','dom','t-Ran') -Input ${E`XecUTIo`N`P`oL`I`CyfLAgs}
            ${p`oWe`RsHELlf`LAGS} += ${e`XE`C`UtIOnpolIc`YfLAG} + ' '*(&("{0}{1}{2}" -f 'Get-','Rando','m') -Minimum 1 -Maximum 3) + ${a`R`G`UMEntVaLuE}
        }
        
        
        
        If(${c`oMM`A`N`dlIn`eOpTioNs}."co`UNt" -gt 1)
        {
            ${com`mAnD`lINEoPtIO`Ns} = &("{2}{1}{0}"-f 'om','nd','Get-Ra') -InputObject ${COMmANd`lIN`e`O`ptiO`NS} -Count ${CoMMAND`Li`NEopT`IOnS}."C`ount"
        }

        
        If(${p`SBoUNd`par`AMeTeRS}[("{1}{2}{0}" -f 'd','Com','man')])
        {
            ${F`ULLargum`enT} = ("{1}{2}{0}"-f'nd','-Com','ma')
            ${C`OmMA`NDLiNE`oP`TiONs} += ${fuLl`A`Rg`UmEnT}.("{0}{1}{2}" -f'S','u','bString').Invoke(0,(&("{0}{1}{2}"-f 'G','e','t-Random') -Minimum 2 -Maximum (${f`ULLA`RgUM`Ent}."Le`NGtH"+1)))
        }

        
        For(${i}=0; ${I} -lt ${PowE`RShel`lf`lags}."C`OunT"; ${i}++)
        {
            ${PoWERsHELlF`lA`GS}[${i}] = ([Char[]]${po`WER`SHE`lL`FlAGs}[${i}] | &("{2}{1}{0}"-f'ect','Obj','ForEach-') {${C`Har} = ${_}.("{0}{2}{1}" -f 'To','ring','St').Invoke().("{0}{2}{1}"-f 'ToLow','r','e').Invoke(); If(&("{0}{1}{2}" -f'Ge','t-','Random') -Input @(0..1)) {${C`hAr} = ${ch`Ar}.("{1}{0}{2}"-f 'oUppe','T','r').Invoke()} ${Ch`Ar}}) -Join ''
        }

        
        ${c`OmmandLin`EOptiO`NS} = (${CoM`m`A`NDlIneOpt`IoNs} | &("{0}{2}{3}{1}{4}"-f'For','-O','Ea','ch','bject') {${_} + " "*(&("{2}{1}{0}" -f 'm','Rando','Get-') -Minimum 1 -Maximum 3)}) -Join ''
        ${C`oMMandL`ineo`pTIONs} = " "*(&("{1}{0}{3}{2}" -f 't-','Ge','ndom','Ra') -Minimum 0 -Maximum 3) + ${C`Om`mA`NdliNEoPTIO`Ns} + " "*(&("{1}{0}{2}" -f 'an','Get-R','dom') -Minimum 0 -Maximum 3)

        
        If(${p`sBOUndP`A`R`AMETeRs}[("{0}{1}" -f'W','ow64')])
        {
            ${C`ommAN`DlinEOUtP`UT} = "C:\WINDOWS\SysWOW64\WindowsPowerShell\v1.0\powershell.exe $($CommandlineOptions) `"$NewScript`" "
        }
        Else
        {
            
            
            ${c`O`mmANdLI`N`eoutP`UT} = "powershell $($CommandlineOptions) `"$NewScript`" "
        }

        
        ${CmDm`A`Xle`Ngth} = 8190
        If(${CoM`mANDlin`EoUT`pUt}."leN`gtH" -gt ${cmdMa`X`lEn`Gth})
        {
            &("{3}{2}{1}{0}"-f 'g','in','-Warn','Write') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        }
        
        ${n`EWSC`RipT} = ${CommAnDLI`Neo`U`T`PUT}
    }

    Return ${NEW`SC`R`Ipt}
}
