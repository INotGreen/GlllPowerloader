&('sV')  ('C8'+'P') ([TYpE]("{0}{2}{1}"-f 'I','.FILE','O')  ) ; &("{1}{2}{0}" -f 'm','SeT-iT','e')  ("variABlE"+":4"+"vT8") ([tYpE]("{2}{0}{1}"-F 'nVe','rt','co'));  


















Function oUT-`eN`CODeDocTA`lcO`M`Mand
{


    [CmdletBinding(DeFAultPaRAmeTERSetnAmE = {"{1}{0}{2}" -f 'ileP','F','ath'})] Param (
        [Parameter(posITIoN = 0, vaLuEfROmPiPElInE = ${tr`Ue}, PArametErSEtnAME = "ScR`i`PtBloCK")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${S`Cr`iPtb`lOCK},

        [Parameter(poSITIOn = 0, paraMeTeRsETnaME = "fil`Epa`Th")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${P`ATh},

        [Switch]
        ${NOE`X`it},

        [Switch]
        ${n`O`prOfILE},

        [Switch]
        ${nonin`Te`Rac`Tive},

        [Switch]
        ${nO`L`OGO},

        [Switch]
        ${woW`64},
        
        [Switch]
        ${Co`MMAND},

        [ValidateSet({"{1}{0}"-f 'ormal','N'}, {"{1}{2}{0}"-f'mized','Mi','ni'}, {"{0}{2}{1}" -f 'Ma','ed','ximiz'}, {"{1}{0}"-f 'den','Hid'})]
        [String]
        ${W`iNDo`wStYle},

        [ValidateSet({"{1}{0}"-f 's','Bypas'}, {"{2}{1}{3}{0}"-f'icted','nre','U','str'}, {"{2}{3}{0}{1}" -f'ne','d','RemoteS','ig'}, {"{1}{0}{2}" -f 'igne','AllS','d'}, {"{0}{2}{1}" -f'R','ed','estrict'})]
        [String]
        ${E`XeCuTIO`NpO`licy},
        
        [Switch]
        ${P`A`ssthrU}
    )

    
    ${E`N`CO`DiNgBAsE} = 8

    
    If(${Ps`BOu`NDP`ARamE`TERS}[("{0}{1}" -f 'P','ath')])
    {
        &("{0}{2}{1}"-f 'Get-Chi','tem','ldI') ${pA`Th} -ErrorAction ("{1}{0}"-f'op','St') | &("{1}{0}" -f 't-Null','Ou')
        ${s`CRI`pTSTRInG} =   (  &("{0}{1}{2}" -f 'GET','-','VarIABLe') ('C8'+'p')  -vAlue  )::("{0}{2}{1}" -f 'ReadAllT','t','ex').Invoke((&("{2}{0}{1}{3}" -f 'e-P','at','Resolv','h') ${Pa`Th}))
    }
    Else
    {
        ${sCRi`Pt`s`Tr`iNG} = [String]${Sc`RIPTb`lOCK}
    }

    
    
    ${RANDo`mD`ElI`MITerS}  = @('_','-',',','{','}','~','!','@','%','&','<','>',';',':')

    
    @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z') | &("{1}{0}{2}{3}" -f'ch','ForEa','-Ob','ject') {${U`pPeRLo`W`ErcHar} = ${_}; If(((&("{2}{1}{0}" -f'om','and','Get-R') -Input @(1..2))-1 -eq 0)) {${uP`pe`Rlowe`RCHaR} = ${u`pP`Erl`ower`chaR}.("{1}{0}{2}" -f'e','ToUpp','r').Invoke()} ${ra`NdomdEL`I`MIteRs} += ${UPp`erL`OweRCH`AR}}
    
    
    ${rAND`OMdEL`Imi`T`ERs} = (&("{1}{0}{2}"-f'-Ran','Get','dom') -Input ${RAN`doM`DE`LiMIT`E`RS} -Count (${r`AndOM`dElI`mITeRs}."CO`Unt"/4))

    
    ${deLiMiteden`cO`D`e`DAr`RaY} = ''
    ([Char[]]${SCRIpT`sT`R`iNG}) | &("{0}{3}{4}{1}{2}" -f'Fo','h-Obj','ect','rE','ac') {${DEL`Imit`ed`EncOd`EDa`RraY} += (  (&("{0}{1}"-f 'VaRIaBl','e')  ('4V'+'t8') )."v`AlUe"::"T`oSt`RiNG"(([Int][Char]${_}),${encoD`iNGbA`sE}) + (&("{0}{1}{2}"-f 'G','et-','Random') -Input ${R`A`NDoMD`eLiMIte`Rs}))}

    
    ${DEli`mi`T`EDENcOdeD`A`RraY} = ${DEli`M`ITEDe`Nco`De`darRaY}.("{2}{0}{1}" -f 'Stri','ng','Sub').Invoke(0,${DeL`ImI`TEDENCo`D`eDAr`Ray}."LEn`GtH"-1)

    
    ${RaNdoMdeLI`m`I`TerSTo`pRiNt} = (&("{2}{0}{3}{1}"-f'et-Ran','om','G','d') -Input ${RA`ND`OmdElIM`ITeRs} -Count ${Ra`NdomDelIm`IT`Ers}."Le`N`gth") -Join ''
    
    
    ${f`oR`EaC`hO`BjECt} = &("{2}{1}{3}{0}"-f'om','t-Ra','Ge','nd') -Input @(("{0}{1}" -f 'ForE','ach'),("{3}{1}{4}{2}{0}" -f 'ect','c','bj','ForEa','h-O'),'%')
    ${S`TRjO`iN}       = ([Char[]]("{4}{0}{3}{2}{1}" -f't','in','::Jo','ring]','[S')      | &("{1}{2}{3}{0}" -f't','For','Each-Ob','jec') {${c`har} = ${_}.("{1}{0}{2}"-f'Str','To','ing').Invoke().("{1}{0}{2}"-f'L','To','ower').Invoke(); If(&("{2}{3}{1}{0}" -f'm','-Rando','Ge','t') -Input @(0..1)) {${C`HaR} = ${C`har}.("{0}{2}{1}" -f'ToUp','er','p').Invoke()} ${CH`Ar}}) -Join ''
    ${s`TrS`TR}        = ([Char[]]("{1}{2}{0}"-f'tring]','[','S')            | &("{0}{1}{3}{2}"-f 'ForEach','-Obj','ct','e') {${cH`Ar} = ${_}.("{0}{1}"-f 'ToStr','ing').Invoke().("{2}{1}{0}" -f'wer','oLo','T').Invoke(); If(&("{1}{0}{2}"-f'nd','Get-Ra','om') -Input @(0..1)) {${cH`Ar} = ${c`Har}.("{1}{0}"-f 'pper','ToU').Invoke()} ${cH`AR}}) -Join ''
    ${J`oIn}          = ([Char[]]("{1}{0}" -f'oin','-J')               | &("{1}{3}{0}{2}"-f'bjec','ForEach','t','-O') {${ch`Ar} = ${_}.("{0}{1}{2}"-f'To','Str','ing').Invoke().("{2}{0}{1}" -f 'w','er','ToLo').Invoke(); If(&("{2}{0}{1}" -f 'nd','om','Get-Ra') -Input @(0..1)) {${C`haR} = ${CH`AR}.("{1}{0}{2}" -f'p','ToUp','er').Invoke()} ${C`HAR}}) -Join ''
    ${C`HaRS`TR}       = ([Char[]]("{1}{0}"-f'ar','Ch')                | &("{1}{3}{2}{0}" -f 't','ForEach-Ob','c','je') {${C`hAr} = ${_}.("{2}{0}{1}"-f'rin','g','ToSt').Invoke().("{0}{2}{1}" -f'To','wer','Lo').Invoke(); If(&("{0}{2}{1}{3}" -f'Get-Ra','o','nd','m') -Input @(0..1)) {${C`Har} = ${ch`AR}.("{0}{1}" -f'To','Upper').Invoke()} ${C`HAR}}) -Join ''
    ${i`NT}           = ([Char[]]'Int'                 | &("{1}{4}{0}{3}{2}" -f 'ch','ForE','t','-Objec','a') {${c`Har} = ${_}.("{1}{0}{2}" -f'oStr','T','ing').Invoke().("{1}{0}{2}" -f 'oL','T','ower').Invoke(); If(&("{2}{1}{0}" -f'm','ndo','Get-Ra') -Input @(0..1)) {${c`har} = ${c`HAr}.("{1}{0}"-f 'pper','ToU').Invoke()} ${cH`AR}}) -Join ''
    ${fOR`e`AcH`OB`JECT} = ([Char[]]${FoReA`C`HOB`jE`Ct}        | &("{1}{3}{4}{2}{0}" -f 't','F','c','or','Each-Obje') {${c`Har} = ${_}.("{0}{1}{2}" -f 'ToStr','i','ng').Invoke().("{0}{1}{2}" -f'To','Lo','wer').Invoke(); If(&("{1}{0}{2}{3}"-f 'et-Ra','G','n','dom') -Input @(0..1)) {${ch`AR} = ${c`Har}.("{1}{0}" -f 'r','ToUppe').Invoke()} ${cH`Ar}}) -Join ''
    ${tO`IN`T16}       = ([Char[]]((("{0}{3}{2}{4}{1}{5}" -f '[Conv','Int16','::T','ert]','o','('))) | &("{0}{1}{2}{3}" -f 'ForE','ach-Obj','e','ct') {${CH`Ar} = ${_}.("{0}{2}{1}"-f'ToS','ing','tr').Invoke().("{2}{0}{1}" -f'oLow','er','T').Invoke(); If(&("{1}{0}{2}"-f't-R','Ge','andom') -Input @(0..1)) {${c`HAR} = ${cH`Ar}.("{2}{1}{0}"-f'er','pp','ToU').Invoke()} ${C`Har}}) -Join ''

    
    ${raNDomdeLIMI`TErstO`PR`I`NT`FoRdAsHSp`Lit} = ''
    ForEach(${R`ANdomDELi`Mi`Ter} in ${r`An`DO`mDel`ImI`TErs})
    {
        
        ${s`P`lIT} = ([Char[]]("{0}{1}" -f 'S','plit') | &("{1}{3}{2}{0}" -f 'ct','ForEac','e','h-Obj') {${Ch`Ar} = ${_}.("{2}{0}{1}"-f 'tri','ng','ToS').Invoke().("{0}{1}" -f 'ToLo','wer').Invoke(); If(&("{1}{2}{0}" -f'om','Get','-Rand') -Input @(0..1)) {${ch`Ar} = ${CH`Ar}.("{0}{1}" -f'To','Upper').Invoke()} ${CH`Ar}}) -Join ''

        ${RandoM`DE`lIMItEr`s`T`O`p`RIntFo`RDas`hspLit} += ('-' + ${S`pL`It} + ' '*(&("{2}{0}{1}" -f '-Ran','dom','Get') -Input @(0,1)) + "'" + ${Ra`N`DOMD`eLiM`ItEr} + "'" + ' '*(&("{2}{0}{1}"-f 'nd','om','Get-Ra') -Input @(0,1)))
    }
    ${rANdOMD`elImiTERST`O`P`RINT`FORda`S`h`SPLIT} = ${R`A`NdO`mdel`iM`ItE`RsTOpri`N`T`FoRDasHsplit}.("{1}{0}" -f 'm','Tri').Invoke()
    
    
    ${raNdomStri`N`g`SyN`TAX} = ([Char[]](&("{2}{0}{1}"-f 't-Ran','dom','Ge') -Input @(((('[St'+'r'+'ing'+']u5V_')-CREPLace ([cHar]117+[cHar]53+[cHar]86),[cHar]36)),(('{0'+'}_.ToStr'+'ing('+')')-F[cHaR]36))) | &("{2}{1}{3}{4}{0}"-f '-Object','orEa','F','c','h') {${c`hAr} = ${_}.("{2}{0}{1}"-f'in','g','ToStr').Invoke().("{1}{0}{2}"-f'oL','T','ower').Invoke(); If(&("{2}{1}{0}"-f'om','t-Rand','Ge') -Input @(0..1)) {${c`HAr} = ${C`hAr}.("{1}{0}{2}" -f'pe','ToUp','r').Invoke()} ${CH`Ar}}) -Join ''
    ${Rand`o`m`C`Onv`e`RsIONsynTAX}  = @()
    ${RA`N`DOMCO`NversI`o`NsYnTAX} += "[$CharStr]" + ' '*(&("{1}{0}{2}"-f't-Ra','Ge','ndom') -Input @(0,1)) + '(' + ' '*(&("{2}{0}{1}" -f 'et-Rand','om','G') -Input @(0,1)) + ${TO`iN`T16} + ' '*(&("{0}{1}{2}" -f'Ge','t-Rand','om') -Input @(0,1)) + '(' + ' '*(&("{2}{0}{1}" -f'et-Rand','om','G') -Input @(0,1)) + ${rANDO`M`sTRInGs`YN`TAx} + ' '*(&("{0}{1}{2}" -f 'Ge','t-Ra','ndom') -Input @(0,1)) + ')' + ' '*(&("{1}{0}{2}"-f'Rando','Get-','m') -Input @(0,1)) + ',' + ${E`NcodIn`gbase} + ' '*(&("{2}{3}{0}{1}"-f'Ra','ndom','G','et-') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get-R','ando','m') -Input @(0,1)) + ')'
    ${rA`N`DoMCO`NveR`SI`oNsyN`TAx} += ${tOIN`T`16} + ' '*(&("{0}{2}{1}" -f'Get-Ra','m','ndo') -Input @(0,1)) + '(' + ' '*(&("{0}{1}{2}" -f 'G','et-Ra','ndom') -Input @(0,1)) + ${R`AN`D`OmS`TRINgs`yNTAX} + ' '*(&("{3}{0}{1}{2}" -f'an','do','m','Get-R') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}" -f 'om','and','Get-R') -Input @(0,1)) + ',' + ' '*(&("{1}{0}{2}"-f '-Rando','Get','m') -Input @(0,1)) + ${E`NcOdiNGb`ASE} + ' '*(&("{0}{1}{2}"-f'Get-Ra','n','dom') -Input @(0,1)) + ')' + ' '*(&("{2}{0}{1}" -f'-Rand','om','Get') -Input @(0,1)) + (&("{2}{1}{0}" -f 'om','d','Get-Ran') -Input @('-as','-As','-aS','-AS')) + ' '*(&("{3}{0}{1}{2}"-f'-Ra','n','dom','Get') -Input @(0,1)) + "[$CharStr]"
    ${R`A`N`DOMConvERsI`on`SynTAx} = (&("{0}{2}{1}" -f'Get-','om','Rand') -Input ${RAndOMCONv`ERSiOns`yN`TAX})

    
    ${e`NcodeD`AR`Ray} = ''
    ([Char[]]${SCrIpT`StrI`NG}) | &("{1}{2}{0}{3}" -f 'h-O','For','Eac','bject') {${ENcOd`EdA`RRAY} += (  ${4v`T8}::"tosTRi`NG"(([Int][Char]${_}),${en`CO`dI`NgB`ASE}) + ' '*(&("{1}{0}{2}"-f'and','Get-R','om') -Input @(0,1)) + ',' + ' '*(&("{0}{2}{1}" -f 'G','Random','et-') -Input @(0,1)))}

    
    ${E`NcODeDa`R`R`Ay} = ('(' + ' '*(&("{2}{3}{0}{1}" -f'o','m','Get-Ran','d') -Input @(0,1)) + ${ENc`od`edA`Rr`AY}.("{1}{0}"-f'rim','T').Invoke().("{0}{1}"-f'Tri','m').Invoke(',') + ')')

    
    
    
    
    ${sEt`oF`SV`ArSYntAX}      = @()
    ${s`ETOF`Sv`A`RsYntAx}     += ("{2}{0}{1}" -f'et-Ite','m','S') + ' '*(&("{1}{0}{2}" -f'et-','G','Random') -Input @(1,2)) + ((("{0}{1}{2}"-f '{0}','Variable:OFS{0','}'))-f[chAr]39) + ' '*(&("{1}{0}{2}"-f 'do','Get-Ran','m') -Input @(1,2)) + "''"
    ${S`EToFsVA`R`SY`NTAx}     += (&("{2}{0}{3}{1}" -f'et','ndom','G','-Ra') -Input @(("{2}{0}{1}"-f 't-Varia','ble','Se'),'SV','SET')) + ' '*(&("{1}{0}{2}"-f'Rand','Get-','om') -Input @(1,2)) + ((("{1}{2}{0}"-f'FOj','FO','jOFS'))."rEp`l`ACE"(([cHAR]70+[cHAR]79+[cHAR]106),[sTrING][cHAR]39)) + ' '*(&("{2}{0}{1}" -f 'n','dom','Get-Ra') -Input @(1,2)) + "''"
    ${s`e`ToF`SVAR}            = (&("{1}{2}{0}" -f'andom','G','et-R') -Input ${Se`T`OFSVAr`s`yNtaX})

    ${s`e`TOFSvarBACk`Sy`NtAx}  = @()
    ${SetoFSv`Arb`A`CKSY`N`TAX} += ("{0}{1}" -f 'Set-I','tem') + ' '*(&("{1}{2}{0}"-f 'ndom','Ge','t-Ra') -Input @(1,2)) + ((("{2}{0}{1}{3}"-f 'a','riabl','{0}V','e:OFS{0}'))  -f  [cHAR]39) + ' '*(&("{0}{3}{1}{2}"-f 'Get','a','ndom','-R') -Input @(1,2)) + "' '"
    ${S`EtoF`SvaRbaCksynT`Ax} += (&("{3}{1}{2}{0}" -f'om','et','-Rand','G') -Input @(("{3}{2}{1}{0}"-f'able','Vari','t-','Se'),'SV','SET')) + ' '*(&("{3}{0}{1}{2}" -f'a','n','dom','Get-R') -Input @(1,2)) + ((("{0}{1}"-f'EBNO','FSEBN'))  -rEPlACE ([cHar]69+[cHar]66+[cHar]78),[cHar]39) + ' '*(&("{2}{1}{3}{0}"-f 'Random','t','Ge','-') -Input @(1,2)) + "' '"
    ${seTO`FSV`A`Rback}        = (&("{0}{2}{1}"-f 'Ge','Random','t-') -Input ${SeT`Ofs`VaRbaCKsyn`TAx})

    
    ${seT`OfSv`AR}            = ([Char[]]${s`eTo`FsVaR}     | &("{2}{3}{0}{4}{1}" -f'-Ob','t','ForEa','ch','jec') {${C`HAR} = ${_}.("{1}{0}{2}"-f'oStrin','T','g').Invoke().("{0}{1}" -f 'ToLo','wer').Invoke(); If(&("{0}{2}{1}" -f 'Get-R','om','and') -Input @(0..1)) {${C`hAR} = ${Ch`Ar}.("{0}{2}{1}" -f'T','er','oUpp').Invoke()} ${cH`AR}}) -Join ''
    ${S`EtoFSVaRb`A`cK}        = ([Char[]]${Se`TOF`S`VAr`BAck} | &("{4}{3}{1}{2}{0}"-f 't','Obj','ec','ch-','ForEa') {${ch`AR} = ${_}.("{0}{1}"-f 'T','oString').Invoke().("{1}{0}{2}"-f'oLo','T','wer').Invoke(); If(&("{1}{3}{0}{2}"-f'-','Ge','Random','t') -Input @(0..1)) {${C`HAr} = ${Ch`Ar}.("{0}{1}{2}"-f'T','oUppe','r').Invoke()} ${c`HAr}}) -Join ''

    
    ${BAse`s`C`RiptaRR`Ay}  = @()
    ${b`AS`EscRIpTarR`Ay} += '(' + ' '*(&("{1}{2}{0}" -f 'm','Get-Ran','do') -Input @(0,1)) + "'" + ${deL`I`Mi`TEdE`NC`oDedA`RrAY} + "'." + ${Sp`l`iT} + "(" + ' '*(&("{1}{0}{2}"-f'do','Get-Ran','m') -Input @(0,1)) + "'" + ${rAndOM`dELI`MITeRS`TOprI`NT} + "'" + ' '*(&("{2}{1}{3}{0}" -f'om','a','Get-R','nd') -Input @(0,1)) + ')' + ' '*(&("{1}{2}{0}" -f '-Random','G','et') -Input @(0,1)) + '|' + ' '*(&("{1}{2}{0}{3}" -f 'do','Get','-Ran','m') -Input @(0,1)) + ${FOreAc`h`Obje`ct} + ' '*(&("{1}{0}{2}" -f'R','Get-','andom') -Input @(0,1)) + '{' + ' '*(&("{1}{3}{2}{0}"-f'Random','G','-','et') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}" -f 't-Random','e','G') -Input @(0,1)) + ${r`And`oMConV`ERs`ION`SYntax} + ')' +  ' '*(&("{2}{1}{0}"-f 'om','Rand','Get-') -Input @(0,1)) + '}' + ' '*(&("{1}{2}{0}" -f'dom','Ge','t-Ran') -Input @(0,1)) + ')'
    ${b`AS`eScRiPT`ARRAY} += '(' + ' '*(&("{1}{0}{2}" -f'ndo','Get-Ra','m') -Input @(0,1)) + "'" + ${D`eLimiTE`Dencod`Ed`ARrAY} + "'" + ' '*(&("{1}{0}{2}"-f'R','Get-','andom') -Input @(0,1)) + ${r`Ando`MDe`l`i`M`I`TERstoPrINTfORDA`S`hSPlit} + ' '*(&("{0}{2}{1}" -f'G','m','et-Rando') -Input @(0,1)) + '|' + ' '*(&("{1}{0}{3}{2}" -f 'et-','G','andom','R') -Input @(0,1)) + ${Fo`R`EaCHObJ`eCt} + ' '*(&("{0}{2}{1}" -f 'Get','Random','-') -Input @(0,1)) + '{' + ' '*(&("{2}{3}{1}{0}"-f 'm','o','Get','-Rand') -Input @(0,1)) + '(' + ' '*(&("{2}{3}{0}{1}"-f'd','om','Get-','Ran') -Input @(0,1)) + ${R`A`ND`omco`NVERsiOns`YNTaX} + ')' +  ' '*(&("{0}{2}{1}"-f'G','-Random','et') -Input @(0,1)) + '}' + ' '*(&("{0}{2}{1}" -f 'Ge','andom','t-R') -Input @(0,1)) + ')'
    ${BAsesCRi`PTarr`Ay} += '(' + ' '*(&("{0}{1}{2}"-f'Get-','Rando','m') -Input @(0,1)) + ${E`NC`ODeDaRRAY} + ' '*(&("{2}{0}{1}" -f 't-Rando','m','Ge') -Input @(0,1)) + '|' + ' '*(&("{0}{2}{1}"-f 'Get','dom','-Ran') -Input @(0,1)) + ${foReAC`HO`BJECt} + ' '*(&("{2}{1}{0}" -f 'om','t-Rand','Ge') -Input @(0,1)) + '{' + ' '*(&("{2}{1}{0}{3}" -f 'o','nd','Get-Ra','m') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}" -f 'm','Rando','Get-') -Input @(0,1)) + ${RaN`DoMco`NvErsi`oNs`ynTax} + ')' +  ' '*(&("{0}{2}{1}" -f 'Ge','Random','t-') -Input @(0,1)) + '}' + ' '*(&("{0}{2}{1}"-f 'Get-','andom','R') -Input @(0,1)) + ')'
    
    
    ${newS`c`RiptarR`Ay}   = @()
    ${n`eWScrIP`Ta`RRAy}  += (&("{3}{1}{0}{2}" -f 'd','Ran','om','Get-') -Input ${baSeScR`I`PT`Ar`R`AY}) + ' '*(&("{0}{1}{2}"-f'Ge','t-Ra','ndom') -Input @(0,1)) + ${j`OIn} + ' '*(&("{3}{1}{2}{0}" -f 'dom','-','Ran','Get') -Input @(0,1)) + "''"
    ${Ne`w`sC`RIPtar`Ray}  += ${j`oIN} + ' '*(&("{1}{0}{2}"-f 't-Rand','Ge','om') -Input @(0,1)) + (&("{1}{0}{2}"-f'n','Get-Ra','dom') -Input ${ba`sescRI`pT`ArRay})
    ${NewSC`Rip`T`ArRAY}  += ${St`Rjoin} + '(' + ' '*(&("{1}{2}{0}" -f'om','G','et-Rand') -Input @(0,1)) + "''" + ' '*(&("{1}{0}{2}"-f'Rando','Get-','m') -Input @(0,1)) + ',' + ' '*(&("{1}{0}{2}" -f'nd','Get-Ra','om') -Input @(0,1)) + (&("{2}{3}{0}{1}" -f 'do','m','Get','-Ran') -Input ${B`AsESCr`IPTA`Rr`Ay}) + ' '*(&("{3}{1}{2}{0}"-f 'm','et-R','ando','G') -Input @(0,1)) + ')'
    ${NE`Ws`cRI`pt`ArRAy}  += '"' + ' '*(&("{0}{2}{1}" -f'Get-','om','Rand') -Input @(0,1)) + '$(' + ' '*(&("{2}{1}{0}" -f'dom','an','Get-R') -Input @(0,1)) + ${seto`Fsv`AR} + ' '*(&("{0}{1}{2}" -f'Get','-Ran','dom') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get-R','and','om') -Input @(0,1)) + '"' + ' '*(&("{1}{2}{0}" -f'Random','G','et-') -Input @(0,1)) + '+' + ' '*(&("{1}{2}{3}{0}" -f 'andom','Get','-','R') -Input @(0,1)) + ${S`T`RStR} + (&("{1}{0}{2}" -f'Ran','Get-','dom') -Input ${BA`S`e`sCriPtArray}) + ' '*(&("{3}{2}{0}{1}"-f 'an','dom','t-R','Ge') -Input @(0,1)) + '+' + '"' + ' '*(&("{3}{1}{0}{2}" -f'-R','et','andom','G') -Input @(0,1)) + '$(' + ' '*(&("{1}{0}{3}{2}"-f 'et-R','G','m','ando') -Input @(0,1)) + ${s`eT`O`Fsv`ARbACk} + ' '*(&("{0}{2}{1}"-f'G','dom','et-Ran') -Input @(0,1)) + ')' + ' '*(&("{1}{0}{2}"-f'e','G','t-Random') -Input @(0,1)) + '"'

    
    ${Ne`WS`CRI`pt} = (&("{0}{1}{2}" -f'Get-Ra','ndo','m') -Input ${nEwsCr`i`p`TA`RrAy})

    
    
    ${I`N`V`oK`EE`XpRESsioNSynt`Ax}  = @()
    ${In`VOKEExpR`e`ss`Io`N`SyntAX} += (&("{2}{1}{0}" -f'ndom','a','Get-R') -Input @('IEX',("{1}{5}{3}{2}{4}{0}" -f'sion','In','-Expr','oke','es','v')))
    
    
    
    ${invo`c`AtIoN`OperAT`OR} = (&("{2}{1}{0}" -f'andom','t-R','Ge') -Input @('.','&')) + ' '*(&("{0}{2}{1}"-f'Get-R','m','ando') -Input @(0,1))
    ${Inv`Oke`E`XprE`SSiOn`SYntAx} += ${I`NV`OcATi`Ono`p`EraToR} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${iNVo`KeexP`ReSsi`o`N`Syn`TAX} += ${iN`V`o`ca`Ti`oNOpErator} + ('( '+"`$PSHome[") + (&("{1}{0}{2}{3}"-f'-R','Get','an','dom') -Input @(4,21)) + "]+`$PSHome[" + (&("{0}{1}{2}"-f 'G','et-Rand','om') -Input @(30,34)) + (((("{3}{2}{1}{0}"-f '72)','x6','72',']+6'))  -CrEpLAce  '672',[cHaR]39))
    ${Inv`OkEeXP`RES`s`Ion`syntax} += ${In`VOcAtIon`oP`E`RaToR} + ('( '+"`$env:ComSpec[4,") + (&("{2}{1}{0}" -f 'ndom','t-Ra','Ge') -Input @(15,24,26)) + (((("{1}{0}{2}" -f 'inEOnEOn',',25]-Jo',')')) -cREpLACe  ([ChAr]69+[ChAr]79+[ChAr]110),[ChAr]39))
    ${INVO`KE`EX`PR`Es`SiOnSYNtaX} += ${INV`o`caTiON`OPE`RATOr} + "((" + (&("{0}{1}{2}"-f 'Get','-Ra','ndom') -Input @(("{2}{3}{0}{1}" -f'riabl','e','Get','-Va'),'GV',("{2}{0}{1}" -f 'a','ble','Vari'))) + (((("{1}{0}{4}{2}{6}{3}{5}" -f'*',' PVO','1,2','oin','mdr*PVO).Name[3,1','PVOPVO)',']-J')) -rEPLAcE'PVO',[chaR]39))
    ${In`Vo`kEeX`Pr`es`siONSy`Ntax} += ${IN`VocA`TIOnOpERa`TOR} + "( " + (&("{2}{0}{1}"-f 'et','-Random','G') -Input @(((('TdAVerb'+'osePr'+'eference.'+'ToStri'+'n'+'g()')  -crePlACE  ([CHAR]84+[CHAR]100+[CHAR]65),[CHAR]36)),(('(['+'Str'+'ing]{0}Verbo'+'s'+'eP'+'re'+'fer'+'en'+'ce)')  -f [CHAr]36))) + (((("{0}{1}{3}{4}{2}"-f '[1,3',']+c96xc','6c96)','96','-Joinc9'))-crEpLaCE 'c96',[CHAr]39))
    
    

    
    ${iN`V`O`kEE`xPREsSION} = (&("{0}{1}{2}"-f'G','et-R','andom') -Input ${in`V`o`kEEXpr`esSiOnSYn`T`AX})

    
    ${INVok`EE`XpRESs`I`ON} = ([Char[]]${INv`o`keEXP`RESS`Ion} | &("{2}{4}{1}{3}{0}" -f't','ach-Obje','F','c','orE') {${cH`AR} = ${_}.("{2}{1}{0}"-f'ing','Str','To').Invoke().("{0}{1}{2}"-f'ToL','ow','er').Invoke(); If(&("{0}{1}{3}{2}" -f'Ge','t-Ra','dom','n') -Input @(0..1)) {${CH`AR} = ${c`Har}.("{0}{1}"-f 'T','oUpper').Invoke()} ${cH`AR}}) -Join ''
    
    
    ${inV`oKeo`pt`iOnS}  = @()
    ${iN`VO`KeOpti`onS} += ' '*(&("{0}{2}{1}" -f'Get-Ran','m','do') -Input @(0,1)) + ${iN`VokeeXP`Ressi`on} + ' '*(&("{0}{2}{1}" -f'Get-R','ndom','a') -Input @(0,1)) + '(' + ' '*(&("{0}{1}{2}{3}"-f'G','et-Ran','do','m') -Input @(0,1)) + ${nEw`sC`R`Ipt} + ' '*(&("{0}{2}{1}" -f'Get-','andom','R') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get-','Ran','dom') -Input @(0,1))
    ${INv`oK`e`OPTIOnS} += ' '*(&("{1}{3}{2}{0}"-f 'dom','Ge','n','t-Ra') -Input @(0,1)) + ${n`e`wScrI`PT} + ' '*(&("{1}{2}{0}" -f 'm','Get-Ra','ndo') -Input @(0,1)) + '|' + ' '*(&("{0}{2}{1}"-f'Ge','om','t-Rand') -Input @(0,1)) + ${I`NV`o`kEEXpreSSI`on}

    ${N`EwS`criPt} = (&("{1}{2}{0}" -f 'om','Ge','t-Rand') -Input ${I`N`VOk`eop`TIONS})

    
    If(!${pSBoUNDpAramE`T`E`RS}[("{0}{1}{2}" -f 'Pas','sT','hru')])
    {
        
        ${poWeRS`h`E`lLFlAGs} = @()

        
        
        ${CO`MmAN`D`LI`NEoPTIOns} = &("{1}{3}{2}{0}" -f 't','New-Ob','c','je') ("{2}{1}{0}"-f 'ng[]','i','Str')(0)
        If(${pSb`ou`NdpArA`MEtErS}[("{1}{0}"-f'it','NoEx')])
        {
          ${F`UllaR`GUment} = ("{0}{2}{1}" -f '-N','Exit','o');
          ${cOM`m`A`N`Dl`INEoP`TiONs} += ${Fu`llArgum`EnT}.("{2}{0}{1}" -f 'tr','ing','SubS').Invoke(0,(&("{1}{2}{0}" -f'om','Ge','t-Rand') -Minimum 4 -Maximum (${fulL`AR`GumENt}."Le`NgTh"+1)))
        }
        If(${psbo`UNd`ParAMET`ers}[("{1}{0}{3}{2}"-f'f','NoPro','le','i')])
        {
          ${fULLar`G`U`me`Nt} = ("{1}{0}{2}{3}" -f'NoP','-','rofi','le');
          ${CO`mmAND`lIn`eopT`i`ons} += ${FuLL`ARGuMe`NT}.("{0}{1}{2}"-f 'SubStr','i','ng').Invoke(0,(&("{1}{0}{2}"-f 'and','Get-R','om') -Minimum 4 -Maximum (${fu`lLArG`UMENT}."len`gth"+1)))
        }
        If(${PSBoU`NdPar`A`M`etErs}[("{0}{3}{1}{2}" -f'NonInter','c','tive','a')])
        {
          ${fU`LlA`RgUMe`Nt} = ("{1}{0}{3}{2}"-f 'c','-NonIntera','e','tiv');
          ${CoMM`A`NdLINE`OPti`onS} += ${fULl`A`RgU`me`Nt}.("{1}{0}{2}"-f 'ubStri','S','ng').Invoke(0,(&("{0}{2}{1}"-f'Ge','Random','t-') -Minimum 5 -Maximum (${fu`LlArGume`Nt}."LeN`GTH"+1)))
        }
        If(${p`Sbound`p`A`RAMEteRS}[("{1}{2}{0}" -f 'go','N','oLo')])
        {
          ${FullAr`G`UmEnt} = ("{0}{1}" -f'-NoL','ogo');
          ${commANDL`inE`OP`T`Io`Ns} += ${fu`ll`AR`GUmeNT}.("{2}{1}{0}" -f 'String','ub','S').Invoke(0,(&("{1}{0}{2}" -f 't-Rando','Ge','m') -Minimum 4 -Maximum (${fuL`LA`RgUmE`Nt}."le`N`GTH"+1)))
        }
        If(${PSBouNd`pA`R`AmEterS}[("{1}{2}{0}"-f'le','Win','dowSty')] -OR ${W`i`Nd`OWSsTyLE})
        {
            ${fullA`R`GumE`Nt} = ("{0}{3}{2}{1}" -f '-W','tyle','ndowS','i')
            If(${wind`owSs`Tyle}) {${ARgu`MEn`TVaL`Ue} = ${wi`NdOWS`s`TY`lE}}
            Else {${argu`MENtvA`L`UE} = ${P`SBouNDpaRAmE`T`eRs}[("{1}{0}{2}{3}" -f 'indow','W','St','yle')]}

            
            Switch(${A`Rgu`MeNtVa`lue}.("{1}{0}"-f'wer','ToLo').Invoke())
            {
                ("{2}{0}{1}"-f 'rm','al','no')    {If(&("{0}{2}{1}"-f'G','t-Random','e') -Input @(0..1)) {${aR`guMEntVa`L`UE} = (&("{2}{1}{0}" -f'ndom','a','Get-R') -Input @('0','n','no','nor',("{1}{0}" -f'm','nor'),("{0}{1}" -f 'n','orma')))}}
                ("{2}{0}{1}"-f 'd','en','hid')    {If(&("{0}{1}{2}"-f 'Get-','R','andom') -Input @(0..1)) {${ArgumE`Ntv`Alue} = (&("{1}{0}{2}{3}" -f 'et-Ra','G','nd','om') -Input @('1','h','hi','hid',("{1}{0}"-f 'idd','h'),("{0}{1}" -f 'hi','dde')))}}
                ("{3}{2}{0}{1}" -f'i','zed','im','min') {If(&("{2}{0}{1}"-f'ndo','m','Get-Ra') -Input @(0..1)) {${ARg`UmENTVa`l`UE} = (&("{0}{2}{1}" -f 'Get-R','m','ando') -Input @('2','mi','min',("{0}{1}" -f 'min','i'),("{0}{1}"-f 'mi','nim'),("{2}{1}{0}" -f'mi','i','min'),("{0}{1}"-f 'minim','iz'),("{0}{1}{2}"-f 'min','imiz','e')))}}
                ("{2}{1}{0}"-f'ized','m','maxi') {If(&("{0}{2}{1}" -f'Get-','om','Rand') -Input @(0..1)) {${aRgUMe`N`T`VALUe} = (&("{0}{2}{3}{1}" -f 'Ge','om','t','-Rand') -Input @('3','ma','max',("{1}{0}"-f 'xi','ma'),("{0}{1}" -f 'm','axim'),("{0}{1}"-f'max','imi'),("{1}{0}"-f'miz','maxi'),("{0}{1}{2}" -f 'ma','x','imize')))}}
                ("{0}{1}" -f 'def','ault') {&("{0}{3}{1}{2}"-f'W','it','e-Error','r') ('A'+'n '+'inv'+'alid'+' '+"`$ArgumentValue "+'valu'+'e '+"($ArgumentValue) "+'was'+' '+'pass'+'ed'+' '+'to'+' '+'sw'+'itch'+' '+'blo'+'ck '+'f'+'or '+'Out-P'+'owerShe'+'l'+'lL'+'auncher.'); Exit;}
            }

            ${P`oWe`RSh`EllfLAGs} += ${fu`lL`ARgUment}.("{0}{1}{2}"-f'Sub','Strin','g').Invoke(0,(&("{2}{1}{0}" -f'm','ndo','Get-Ra') -Minimum 2 -Maximum (${FUl`lArgUm`E`Nt}."l`EN`GTh"+1))) + ' '*(&("{0}{2}{1}" -f 'Get-Ra','om','nd') -Minimum 1 -Maximum 3) + ${ArGumE`N`TvalUe}
        }
        If(${pS`BounDp`A`RA`MeteRS}[("{3}{0}{2}{4}{1}" -f 'n','cy','Po','Executio','li')] -OR ${ExEC`U`TioNP`OLICY})
        {
            ${Fu`LL`ArgumE`NT} = ("{3}{4}{1}{0}{2}"-f 'l','ionPo','icy','-Exe','cut')
            If(${E`XEcUTio`NpOl`I`cy}) {${a`R`gUM`eNtVAL`Ue} = ${eXeC`UT`ioNPO`Li`cy}}
            Else {${AR`Gu`meNt`VA`lUe} = ${pS`Bo`UndPA`RAMET`e`RS}[("{0}{2}{1}{3}" -f'Execu','Pol','tion','icy')]}
            
            ${e`xEcUTIonpO`Li`CYfL`A`gs} = @()
            ${E`Xe`cUtIo`NpOliCYflA`gs} += '-EP'
            For(${I`NDEx}=3; ${i`N`DeX} -le ${FULLAR`gU`mEnT}."le`N`gth"; ${i`N`DEX}++)
            {
                ${EXeCU`TioN`PO`li`c`YfLags} += ${F`ULLa`RgUM`e`NT}.("{1}{0}"-f'tring','SubS').Invoke(0,${IN`dEx})
            }
            ${eXEC`UTi`onpOLIcYf`lag} = &("{2}{0}{1}" -f'-Rand','om','Get') -Input ${EXECU`T`ionP`OliC`yF`LA`Gs}
            ${pOWErShel`LF`l`AGs} += ${eXEc`U`T`iONPoLIc`Y`FLAg} + ' '*(&("{1}{0}{3}{2}"-f 'n','Get-Ra','om','d') -Minimum 1 -Maximum 3) + ${AR`g`UmEn`TVAlUE}
        }
        
        
        
        If(${commaN`dliNeOp`Ti`oNS}."co`UnT" -gt 1)
        {
            ${coMMa`N`dLinEoP`TI`o`Ns} = &("{2}{0}{1}"-f 'ndo','m','Get-Ra') -InputObject ${C`o`MMANDLI`NEO`PT`IONs} -Count ${COM`MAN`dLINEopTi`o`Ns}."c`oUnt"
        }

        
        If(${Psbo`UNDpA`Ramete`Rs}[("{1}{0}{2}"-f'omma','C','nd')])
        {
            ${F`ULlAR`guMENt} = ("{2}{1}{0}"-f'nd','a','-Comm')
            ${c`o`mMandliN`eO`PtI`oNs} += ${F`UllA`RGuM`eNT}.("{0}{1}{2}"-f'Sub','Str','ing').Invoke(0,(&("{1}{2}{0}"-f 't-Random','G','e') -Minimum 2 -Maximum (${fu`l`La`Rgu`MENT}."LeNg`Th"+1)))
        }

        
        For(${I}=0; ${I} -lt ${po`WER`SHE`lLF`L`AGs}."cOU`Nt"; ${i}++)
        {
            ${PowE`Rs`hEllf`L`Ags}[${i}] = ([Char[]]${p`Ower`SheLlFl`AGs}[${i}] | &("{1}{2}{3}{0}" -f 't','Fo','rEach-Obj','ec') {${c`haR} = ${_}.("{1}{2}{0}" -f 'ing','To','Str').Invoke().("{0}{1}{2}"-f'T','oLow','er').Invoke(); If(&("{1}{0}{2}"-f 'et-R','G','andom') -Input @(0..1)) {${CH`AR} = ${CH`Ar}.("{0}{1}"-f 'T','oUpper').Invoke()} ${cH`Ar}}) -Join ''
        }

        
        ${C`oMMA`NDL`i`NEOpt`iOns} = (${comMA`ND`LiNEo`PT`Io`NS} | &("{0}{1}{2}" -f'F','orEach-Ob','ject') {${_} + " "*(&("{0}{2}{1}"-f'G','dom','et-Ran') -Minimum 1 -Maximum 3)}) -Join ''
        ${CO`m`m`ANDl`InEOptiOnS} = " "*(&("{3}{2}{0}{1}" -f 'do','m','Ran','Get-') -Minimum 0 -Maximum 3) + ${c`Om`mAn`dLINeoptIons} + " "*(&("{3}{2}{1}{0}" -f'Random','t-','e','G') -Minimum 0 -Maximum 3)

        
        If(${psbO`U`NDPaRaM`eTeRS}[("{1}{0}" -f 'w64','Wo')])
        {
            ${C`ommAnDLIn`eoU`TpUt} = "C:\WINDOWS\SysWOW64\WindowsPowerShell\v1.0\powershell.exe $($CommandlineOptions) `"$NewScript`" "
        }
        Else
        {
            
            
            ${com`ma`Nd`lI`NeOuTpuT} = "powershell $($CommandlineOptions) `"$NewScript`" "
        }

        
        ${cmDm`AX`LeNg`TH} = 8190
        If(${c`ommaNd`lIn`EoUT`Put}."LE`NGTH" -gt ${C`mD`mA`xLeng`Th})
        {
                &("{3}{0}{2}{1}"-f 'r','Warning','ite-','W') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        }
        
        ${n`eWsCr`IpT} = ${C`OMma`N`dL`inEOU`TPUt}
    }

    Return ${N`EW`scrIpT}
}
