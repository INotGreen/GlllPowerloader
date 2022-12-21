  &("{0}{2}{1}"-f'seT-It','M','e')  VaRiaBlE:C5u ( [tYpE]("{1}{0}"-F'.fILE','io') )  ;    $bhavsf=[TYpe]("{1}{0}"-F'AY','aRR') ;  &("{0}{1}"-f 'S','eT') yL3 (  [TyPE]("{8}{3}{2}{5}{4}{7}{11}{9}{10}{0}{1}{6}"-F 'PAr','Se','a','aN','nt.AU','geME','R','toM','sysTEm.m','.p','S','aTion')  )  ;   &('sv') ('Ime'+'3z')  (  [tYPE]("{1}{2}{3}{0}" -F 'ck','sC','RipTb','Lo') );


















Function oUT`-O`B`F`UScAte`D`STRiNgCOm`MA`ND
{


    [CmdletBinding( DeFaUltpaRAMetERSETnAme = {"{1}{0}"-f'ilePath','F'})] Param (
        [Parameter(POsiTiON = 0, vaLUeFrOmpIpelinE = ${tr`UE}, PArameTeRSetNaME = "Sc`Ri`pTBlOCK")]
        [ValidateNotNullOrEmpty()]
        [ScriptBlock]
        ${Sc`R`IP`TblOck},

        [Parameter(POSITIon = 0, PaRAMeTersETNAMe = "F`iLePATh")]
        [ValidateNotNullOrEmpty()]
        [String]
        ${Pa`TH},

        [ValidateSet('1', '2', '3')]
        [Parameter(POSITiON = 1)]
        [ValidateNotNullOrEmpty()]
        [Int]
        ${Obf`U`scATionleV`el} = (&("{3}{0}{2}{1}" -f'et-','ndom','Ra','G') -Input @(1..3)) 
    )

    
    If(${PsB`Ou`NdpaRA`mEtErs}[("{0}{1}"-f'Pa','th')])
    {
        &("{1}{0}{3}{2}"-f 'Chi','Get-','m','ldIte') ${p`ATh} -ErrorAction ("{0}{1}" -f 'S','top') | &("{1}{0}"-f'ull','Out-N')
        ${scriP`T`S`TrIng} =  ( &("{1}{3}{0}{2}"-f'-vAria','Ge','Ble','t') C5U  ).VALUE::("{0}{3}{2}{1}"-f 'ReadAll','t','ex','T').Invoke((&("{2}{0}{1}" -f '-Pat','h','Resolve') ${pA`TH}))
    }
    Else
    {
        ${SCr`i`ptS`T`RING} = [String]${scRI`Pt`BLO`cK}
    }

    
    ${vALid`OBF`USCAtIO`NLev`ELS} = @(0,1,2,3)
    
    
    If(${VALidOB`Fus`cATIon`le`VEls} -NotContains ${oBf`U`sc`AtIONLevel}) {${O`BFUS`Cat`iO`Nl`EvEL} = ${VAlI`dO`BFUs`C`ATIO`NleV`elS} | &("{3}{1}{2}{0}"-f't','r','t-Objec','So') -Descending | &("{1}{2}{0}" -f 'bject','Selec','t-O') -First 1}  
    
    Switch(${ob`FUSC`At`Ion`Lev`EL})
    {
        0 {Continue}
        1 {${scri`ptS`TRING} = &("{5}{0}{1}{2}{4}{3}{6}" -f'ring','Delimi','tedAndCo','a','ncaten','Out-St','ted') ${Sc`R`IpTSTri`NG}}
        2 {${S`CRIPt`St`Ring} = &("{7}{6}{4}{0}{8}{3}{2}{1}{5}{9}{10}"-f'n','tedAndR','edConcatena','limit','-Stri','eo','ut','O','gDe','rd','ered') ${sc`RiPTStR`INg}}
        3 {${sC`R`Ip`TsTrING} = &("{2}{1}{0}{4}{3}" -f'R','ut-String','O','versed','e') ${sCRIP`T`sTR`i`Ng}}
        ("{1}{2}{0}" -f 't','defau','l') {&("{1}{2}{0}" -f 'rror','W','rite-E') ('A'+'n '+'invali'+'d '+"`$ObfuscationLevel "+'v'+'alu'+'e '+"($ObfuscationLevel) "+'w'+'as '+'pas'+'sed '+'t'+'o '+'swi'+'tch '+'bloc'+'k '+'fo'+'r '+'Str'+'ing '+'Ob'+'fusc'+'ation.'); Exit}
    }

    Return ${sC`RiptStRi`Ng}
}


Function out-ST`Ri`NgDE`l`IMi`T`edaNdcoN`Cat`enaTEd
{


    [CmdletBinding()] Param (
        [Parameter(poSITION = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${S`crIPT`STR`InG},

        [Switch]
        ${Pas`sth`RU}
    )

    
    ${cHaRs`Tor`eplace} = @('$','|','`','\','"',"'")
    ${c`HARstO`RE`PL`ACE} = (&("{2}{0}{1}" -f'n','dom','Get-Ra') -Input ${C`H`ArStor`EpLaCe} -Count ${CHArsT`orE`pl`ACE}."c`ounT")

    
    ${cO`Nt`A`InSchArsTO`R`EP`LA`Ce} = ${F`ALsE}
    ForEach(${ChaRTO`Re`PL`A`cE} in ${cH`ARS`TOrE`PlaCe})
    {
        If(${s`CrIPTsT`Ri`NG}.("{1}{2}{0}" -f 'ns','Cont','ai').Invoke(${c`hARtoR`E`placE}))
        {
            ${c`O`N`TAiNS`Cha`RsTorE`PLaCe} = ${T`RuE}
            Break
        }
    }
    If(!${coNta`iNS`c`harSto`Re`p`laCe})
    {
        
        ${s`C`RIP`TsTRIng} = &("{4}{3}{1}{0}{5}{6}{2}"-f 'ncaten','o','g','ut-C','O','ated','Strin') ${sCRIPtS`TR`I`Ng} "'"
        ${SCRi`PtS`T`RINg} = '(' + ${S`CripT`s`TrINg} + ')'

        If(!${PsBoUn`d`pArA`m`Eters}[("{2}{1}{0}" -f'sThru','s','Pa')])
        {
            
            ${SCripTS`T`RING} = &("{4}{1}{2}{3}{8}{6}{0}{7}{5}"-f'nvokeE','u','t-En','cap','O','on','edI','xpressi','sulat') ${s`cRIP`TstRiNG}
        }

        Return ${Sc`R`IpTST`RinG}
    }
    
    
    
    ${CHaR`sTo`R`epLaCE`WitH}  = @(0..9)
    ${C`HAr`sToRE`P`La`c`Ewith} += @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
    ${CHA`R`STO`R`EPL`AcEWi`TH} += @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')
    ${d`eLiMiteR`lE`N`GTh} = 3
    
    
    ${dELI`Mite`R`TABLE} = @()
    
    
    ForEach(${cHar`T`orEpLACe} in ${C`HaRsTOrEPlA`cE})
    {
        If(${S`CRiPts`Tr`Ing}.("{2}{0}{1}"-f 'ntai','ns','Co').Invoke(${CHARtOR`EPLa`ce}))
        {
            
            If(${cHaRS`TOReplA`CEwi`Th}."cOU`NT" -lt ${D`eL`iMi`TErle`NgTH}) {${D`E`li`MITe`RLenGTh} = ${ChArSTOre`P`lacew`I`TH}."c`OUnt"}
            ${D`E`lIM} = (&("{1}{0}{2}{3}" -f 'Ran','Get-','do','m') -Input ${C`haRstO`RePLAc`E`wI`Th} -Count ${DE`LimiT`E`RLe`Ngth}) -Join ''
            
            
            While(${scr`IptsTR`I`Ng}.("{1}{0}" -f 'r','ToLowe').Invoke().("{1}{0}{2}" -f'onta','C','ins').Invoke(${d`Elim}.("{0}{1}"-f'ToLo','wer').Invoke()))
            {
                ${d`eLIM} = (&("{3}{1}{0}{2}"-f '-','t','Random','Ge') -Input ${CH`ARs`T`orE`PL`ACEwI`TH} -Count ${d`elimiT`e`Rle`NgTh}) -Join ''
                If(${D`EL`IMi`Te`RLENGTh} -lt ${Ch`ARs`T`OrEPlaCeWiTh}."C`ouNT")
                {
                    ${DeLimiTeR`L`EngTH}++
                }
            }
            
            
            ${De`Limi`TerTa`B`Le} += , @(${de`Lim},${cH`ARto`Repla`ce})

            
            ${sCRIp`T`STRInG} = ${SCR`IpT`STri`NG}.("{1}{0}" -f'eplace','R').Invoke(${cHA`R`TOrep`LaCe},${d`e`lIM})
        }
    }

    
    ${De`lImI`TEr`T`A`BlEWiTHQuoTeS} = @()
    ForEach(${DeliMite`R`ARr`Ay} in ${D`eLIMi`TeRTAB`LE})
    {
        ${DeL`iMi`TER}    = ${D`eliMi`TE`RarR`Ay}[0]
        ${ORiG`iNALC`haR} = ${dEl`i`mITe`RARRAY}[1]
        
        
        ${raN`doMQ`UotE} = &("{0}{2}{1}" -f'Get','m','-Rando') -InputObject @("'","`"")
        
        
        If(${O`RIgiN`AL`CHAr} -eq "'") {${ra`ND`omqUOTE} = '"'}
        Else {${r`AnD`OMq`UoTE} = "'"}

        
        ${deli`M`itER} = ${r`AndO`M`quoTe} + ${D`E`LIMiTer} + ${ra`N`DoMQU`oTe}
        ${oRi`ginALC`hAr} = ${R`A`NDOMqUo`TE} + ${oRig`iN`AlC`HaR} + ${r`A`NDOm`quote}
        
        
        ${De`LI`MITeRtAbl`eWIt`hqUOtES} += , @(${dEl`iMi`TER},${or`IgIN`AlcHaR})
    }

    
      $BHAVsF::("{1}{0}" -f'verse','Re').Invoke(${dE`LIm`itertA`BLe})
    
    
    
    If((${S`crIP`TS`TrINg}.("{1}{2}{0}" -f 'ns','Con','tai').Invoke('{')) -AND (${ScrI`pTStr`i`NG}.("{2}{1}{0}"-f'ns','tai','Con').Invoke('}')))
    {
        ${RandOM`I`N`Put} = &("{2}{0}{1}" -f'R','andom','Get-') -Input (1..2)
    }
    Else
    {
        ${RANDo`mI`Np`Ut} = &("{2}{0}{3}{1}"-f't','andom','Ge','-R') -Input (1..3)
    }

    
    ${STRiNG`s`TR}   = &("{2}{0}{3}{1}" -f'ut-','andomCase','O','R') ("{0}{1}" -f 's','tring')
    ${CHA`RSTR}     = &("{1}{2}{4}{3}{0}"-f 'e','Out-Ra','n','omCas','d') ("{0}{1}" -f'ch','ar')
    ${rEpL`A`CEStr}  = &("{1}{2}{3}{0}" -f 'ndomCase','Ou','t-R','a') ("{2}{0}{1}"-f'pla','ce','re')
    ${C`REpL`AceSTR} = &("{1}{4}{0}{2}{3}" -f'andom','Out-','Cas','e','R') ("{1}{2}{0}" -f'lace','cre','p')

    Switch(${rANdoM`I`NP`UT}) {
        1 {
            

            ${sCrIp`T`sTR`INg} = "'" + ${scri`p`T`StRinG} + "'"
            ${Re`Versi`NG`coM`M`AnD} = ""

            ForEach(${DELI`MitE`RaRRAY} in ${d`eLIMi`T`eRtAb`LeWiTHqUOTEs})
            {
                ${dElIMI`T`ER}    = ${Del`IM`ITERaR`RAY}[0]
                ${orIgi`N`AlCH`AR} = ${deLim`ITE`R`ArRAy}[1]
                
                
                
                
                If(${ORi`g`Ina`lChAR}[1] -eq "'")
                {
                    ${oRi`GIn`ALcHAR} = "[$StringStr][$CharStr]39"
                    ${D`El`IMiTER} = "'" + ${dEL`iMi`Ter}.("{3}{1}{0}{2}"-f'rin','bSt','g','Su').Invoke(1,${DELimi`T`er}."LEn`GtH"-2) + "'"
                }
                ElseIf(${o`RiGin`A`Lchar}[1] -eq '"')
                {
                    ${OR`i`GI`NaLcH`Ar} = "[$StringStr][$CharStr]34"
                }
                Else
                {
                    If(&("{3}{1}{0}{2}" -f 't-Ra','e','ndom','G') -Input (0..1))
                    {
                        ${OrIG`i`N`AlCHar} = "[$StringStr][$CharStr]" + [Int][Char]${oriGI`NAL`CHAR}[1]
                    }
                }
                
                
                If(&("{1}{2}{0}"-f 'm','Get-Rand','o') -Input (0..1))
                {
                    
                    
                    ${D`el`I`MItERCHaRsYNtAx} = ""
                    For(${I}=1; ${i} -lt ${dEl`ImiT`eR}."le`NG`TH"-1; ${I}++)
                    {
                        ${dELIM`iTERChaR`SynT`AX} += "[$CharStr]" + [Int][Char]${d`eLI`MiT`ER}[${I}] + '+'
                    }
                    ${dElI`m`i`TER} = '(' + ${DeL`imit`ERC`har`Synt`Ax}.("{0}{1}" -f'Tri','m').Invoke('+') + ')'
                }
                
                
                ${revErs`IN`GC`Om`mANd} = ((".$ReplaceStr($Delimiter,$OriginalChar)")) + ${rev`ERs`InGCoMmA`Nd}
            }

            
            ${s`crIp`TSTrinG} = &("{6}{0}{5}{3}{4}{2}{1}" -f 't-Conca','g','in','enatedS','tr','t','Ou') ${s`C`RIpTstr`I`Ng} "'"
            ${s`Cr`IPTst`Ring} = '(' + ${S`c`RIptstRINg} + ')'

            
            ${SC`RI`ptSTR`ING} = ${sCrIP`T`StRiNG} + ${ReVERSIN`g`C`O`mmAND}
        }
        2 {
            

            ${sCRIptsT`R`iNG} = "'" + ${sCR`iptST`Ri`NG} + "'"
            ${REve`Rsi`N`GCoMmaNd} = ""

            ForEach(${d`e`LiMIT`eRA`RRAy} in ${de`LIMI`TErt`ABlEwi`THqUOTES})
            {
                ${D`Eli`mItEr}    = ${dE`Li`MITERar`RaY}[0]
                ${O`RIgInaLch`AR} = ${DE`lIMI`T`eRArrAy}[1]
                
                
                
                
                If(${oRig`inA`LCH`AR}[1] -eq '"')
                {
                    ${oriG`InaLC`Har} = "[$CharStr]34"
                }
                ElseIf(${or`IG`I`NAlCHAr}[1] -eq "'")
                {
                    ${o`R`igin`AL`chAR} = "[$CharStr]39"; ${dELi`m`iTer} = "'" + ${d`eLimiT`er}.("{1}{2}{0}"-f'bString','S','u').Invoke(1,${DeL`ImI`T`er}."L`EngTh"-2) + "'"
                }
                Else
                {
                    ${ORIgi`N`ALchar} = "[$CharStr]" + [Int][Char]${orI`gI`Nal`C`HAr}[1]
                }
                
                
                If(&("{0}{3}{2}{1}" -f'Get-Ran','m','o','d') -Input (0..1))
                {
                    
                    
                    ${dEliMiTerC`HA`RS`y`NTaX} = ""
                    For(${i}=1; ${I} -lt ${De`lI`MITEr}."Le`Ng`Th"-1; ${I}++)
                    {
                        ${De`l`Im`IteRChA`R`synTAX} += "[$CharStr]" + [Int][Char]${D`ElIM`i`TER}[${I}] + '+'
                    }
                    ${dEli`M`iTeR} = '(' + ${d`elImiT`eRCha`RsyNT`Ax}.("{0}{1}"-f 'T','rim').Invoke('+') + ')'
                }
                
                
                ${R`EpLa`cE} = (&("{1}{0}{2}" -f '-Ra','Get','ndom') -Input @((("-$ReplaceStr")),(("-$CReplaceStr"))))

                
                ${Re`Ve`R`singco`mMAnD} = ' '*(&("{1}{2}{0}" -f 'om','Get','-Rand') -Minimum 0 -Maximum 3) + ${R`eplAce} + ' '*(&("{2}{1}{0}" -f'dom','an','Get-R') -Minimum 0 -Maximum 3) + "$Delimiter,$OriginalChar" + ${ReV`erSiNGc`o`MMANd}                
            }

            
            ${Scr`iPT`sTrInG} = &("{5}{1}{3}{2}{4}{0}" -f'dString','Conca','na','te','te','Out-') ${sc`R`iPTs`TR`iNG} "'"
            ${scRi`P`T`STrinG} = '(' + ${ScRIpTs`T`R`iNG} + ')'

            
            ${scR`IpTSt`RI`NG} = '(' + ${S`cRIpTst`R`InG} + ${rEvEr`si`NG`cO`mMAnd} + ')'
        }
        3 {
            

            ${scR`iP`TS`TRIng} = "'" + ${SCr`ipT`StRi`NG} + "'"
            ${R`EVErSING`C`OM`mAND} = ""
            ${cOu`NTeR} = 0

            
            For(${I}=${deL`imi`TERTa`BlEw`i`THQuOTeS}."co`UNT"-1; ${I} -ge 0; ${i}--)
            {
                ${D`E`LImItERA`RRay} = ${DeLim`i`TER`TabLE`w`ITHquot`es}[${I}]
                
                ${de`L`I`mIteR}    = ${D`ELIMiTerAR`RAy}[0]
                ${OriGin`A`lch`AR} = ${deli`MiT`era`RrAy}[1]
                
                ${de`LImIterNO`Qu`o`TeS} = ${d`EL`iMIt`ER}.("{0}{1}"-f'Sub','String').Invoke(1,${DeLim`IT`Er}."L`E`NgTh"-2)
                
                
                
                
                If(${Or`IgI`NAL`C`haR}[1] -eq '"')
                {
                    ${OriGINAlC`h`Ar} = "[$CharStr]34"
                }
                ElseIf(${O`Rigi`NAL`char}[1] -eq "'")
                {
                    ${or`Ig`inalC`h`AR} = "[$CharStr]39"; ${d`Eli`MiteR} = "'" + ${d`Elim`i`Ter}.("{0}{1}{2}" -f'S','ubStri','ng').Invoke(1,${DEl`i`mIt`ER}."Len`gtH"-2) + "'"
                }
                Else
                {
                    ${o`RIgI`NA`lc`HAr} = "[$CharStr]" + [Int][Char]${or`igiN`Alc`hAr}[1]
                }
                
                
                ${RE`VERSi`NgCoM`Mand} = ${rEV`e`R`sIngcoM`mAnD} + ",$OriginalChar"

                
                ${SCR`IPT`stRIng} = ${ScrI`P`T`StRING}.("{2}{0}{1}"-f'epl','ace','R').Invoke(${DeLi`MITE`R`No`QUOtEs},"{$Counter}")

                ${cou`NtER}++
            }
            
            
            ${rE`V`ersINgCo`mM`A`ND} = ${rEVERsIN`G`cOM`MaND}.("{0}{1}" -f'Tri','m').Invoke(',')

            
            ${SCrI`p`TstrI`NG} = &("{1}{3}{0}{4}{2}"-f 't-Con','O','atedString','u','caten') ${S`CRIpTs`Tr`ing} "'"
            ${Sc`RIpTs`TR`ing} = '(' + ${scRIP`T`sTrInG} + ')'
            
            
            ${F`OR`matOp`ERA`TOR} = (&("{1}{2}{0}{3}" -f'Rand','Ge','t-','om') -Input @('-f','-F'))

            ${SCr`IPT`STRinG} = '(' + ${scRi`pTs`Tr`Ing} + ' '*(&("{1}{0}{2}"-f 'et-Ran','G','dom') -Minimum 0 -Maximum 3) + ${fOR`mA`ToP`E`RaTor} + ' '*(&("{2}{3}{0}{1}" -f'n','dom','Get-','Ra') -Minimum 0 -Maximum 3) + ${RE`V`ErSIngCo`MMAND} + ')'
        }
        ("{1}{0}"-f 'lt','defau') {&("{0}{3}{2}{1}" -f 'Write-','r','rro','E') ('An'+' '+'invalid'+' '+"`$RandomInput "+'valu'+'e '+"($RandomInput) "+'was'+' '+'p'+'ass'+'ed '+'t'+'o '+'s'+'witch '+'blo'+'ck'+'.'); Exit;}
    }
    
    
    If(!${p`sBound`pArAMEte`Rs}[("{0}{1}"-f 'P','assThru')])
    {
        ${SCR`ipt`StRIng} = &("{4}{2}{5}{3}{7}{0}{1}{6}" -f 'In','vokeExpressio','nca','ulat','Out-E','ps','n','ed') ${scr`iptST`Ri`Ng}
    }

    Return ${ScR`Ip`T`s`TRing}
}


Function OUT-STrIngd`el`IMI`T`e`D`cOncaT`eNATEda`N`DRE`oRdE`R`eD
{


    [CmdletBinding()] Param (
        [Parameter(PosITIon = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${Sc`RiPT`s`TRinG},

        [Switch]
        ${p`ASs`ThRU}
    )

    If(!${psbo`UN`DpAr`A`metE`Rs}[("{2}{1}{0}" -f 'hru','sT','Pas')])
    {
        
        ${sC`Rip`TS`TR`iNg} = &("{5}{6}{7}{1}{2}{9}{8}{10}{3}{0}{4}" -f 'n','ingDelimit','e','te','ated','O','ut','-Str','d','dAn','Conca') ${sC`RipTS`T`Ri`Ng}
    }
    Else
    {
        
        ${ScRIptS`T`RinG} = &("{5}{2}{0}{7}{3}{1}{4}{8}{6}"-f '-S','C','t','imitedAnd','onc','Ou','nated','tringDel','ate') ${Sc`RIPTS`T`RING} -PassThru
    }

    
    ${t`OK`ens} =   $yl3::"TOKeNi`ze"(${sc`RiPtsTrI`NG},[ref]${NU`ll})
    ${GrOUP`sTAR`T`couNt} = 0
    ${c`onCATENAted`St`R`inGSiND`exSt`ART} = ${n`UlL}
    ${ConC`A`TENa`TeDStRIn`gSiNdeXENd}   = ${Nu`ll}
    ${cON`cA`TeNaTeDs`TRiNgSaRR`Ay} = @()
    For(${I}=0; ${i} -le ${T`o`KEns}."C`oUnt"-1; ${I}++) {
        ${t`OKen} = ${t`oK`EnS}[${i}]

        If((${t`o`keN}."t`yPE" -eq ("{1}{0}{2}"-f 'Sta','Group','rt')) -AND (${toK`EN}."C`ONtent" -eq '('))
        {
            ${gr`O`UpSTAR`TcoU`Nt} = 1
            ${con`CATe`NateDStR`IN`gs`I`Nd`eXstaRT} = ${TOk`En}."ST`Art"+1
        }
        ElseIf((${t`ok`eN}."tY`pe" -eq ("{0}{2}{1}"-f 'Gr','nd','oupE')) -AND (${To`K`en}."coNTE`NT" -eq ')') -OR (${TOk`eN}."TY`PE" -eq ("{1}{0}{2}" -f'er','Op','ator')) -AND (${To`k`eN}."coNTe`Nt" -ne '+'))
        {
            ${gR`OuPSTArTcoU`Nt}--
            ${concATe`NaTed`STrIng`S`iNDexe`Nd} = ${to`kEn}."st`ARt"
            
            If((${grO`UpStaRt`c`Ou`NT} -eq 0) -AND (${C`oNcat`e`NAteDStRINGsa`RrAy}."C`Ount" -gt 0))
            {
                Break
            }
        }
        ElseIf((${GROu`Ps`TA`R`TCOuNT} -gt 0) -AND (${tok`EN}."TY`Pe" -eq ("{0}{1}" -f 'Strin','g')))
        {
            ${c`o`N`CatENa`Te`dsTR`ingSArrAy} += ${ToK`en}."c`o`NtEnT"
        }
        ElseIf(${T`OKen}."T`YpE" -ne ("{1}{2}{0}" -f 'r','Opera','to'))
        {
            
            
            ${G`Roups`TA`RTCOUNT} = 0
            ${c`o`NCa`TEnATEdst`RiNGs`ARray} = @()
        }
    }

    ${C`OnC`A`TENat`eDStriN`gS} = ${s`CR`iptS`TRinG}.("{0}{1}{3}{2}"-f'S','u','ng','bStri').Invoke(${Co`NCaTENa`TE`DSTRi`Ngs`I`Ndexst`ARt},${cOnCAtena`TEdstrInGSi`Nd`eX`eND}-${coNCa`TENate`DSTR`I`NGsiNDEx`S`TA`Rt})

    
    If(${COn`CA`TEn`ATEdst`RiNgsAr`Ray}."C`oUnt" -le 1)
    {
        Return ${ScRip`TSt`R`InG}
    }

    
    ${ra`Nd`oMi`NDEXes} = (&("{0}{2}{1}" -f'G','dom','et-Ran') -Input (0..$(${CONcA`TeNATED`S`Trin`GSARRAy}."COU`NT"-1)) -Count ${CoNc`AT`ENa`TEdSTR`i`N`GSArrAY}."coU`NT")
    
    ${aR`gUm`eNTS1} = ''
    ${ar`gU`mEn`Ts2} = @('')*${CONcate`Na`Ted`s`TrinGSArRAY}."c`OunT"
    For(${I}=0; ${i} -lt ${CO`NCaTE`NatedST`Ri`Ngsa`RRAy}."Cou`Nt"; ${I}++)
    {
        ${RaN`DO`MI`NdEX} = ${RAn`Do`MINd`ExES}[${i}]
        ${A`Rg`UmENTs1} += '{' + ${RAN`dOmIND`EX} + '}'
        ${arGum`E`NTs2}[${r`AnDO`Min`deX}] = "'" + ${concatEnatedST`R`InGsa`R`R`Ay}[${I}] + "'"
    }
    
    
    ${sC`RiPtS`TRInG`REOrDer`Ed} = '(' + '"' + ${A`R`GUmEntS1} + '"' + ' '*(&("{1}{3}{2}{0}" -f 'Random','Ge','-','t') @(0..1)) + '-f' + ' '*(&("{0}{1}{2}" -f 'Ge','t-Ran','dom') @(0..1)) + (${A`R`GumEnTs2} -Join ',') + ')'

    
    ${sCR`ip`T`strinG} = ${SCr`IpTSTR`ing}.("{0}{1}{2}"-f'SubStr','i','ng').Invoke(0,${c`Onca`TENaT`edsTriNG`SI`N`DexSt`ARt}) + ${S`c`RIP`Ts`T`R`IngReoRdeReD} + ${Sc`RiPTst`Ri`Ng}.("{0}{1}" -f 'SubSt','ring').Invoke(${cO`NCAteNatEdSTr`IN`GsI`Nd`EXEND})

    Return ${scRi`PTStR`Ing}
}


Function OuT-st`R`INGRe`VErSeD
{


    [CmdletBinding()] Param (
        [Parameter(POsiTION = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${s`cRIPTS`T`RiNg}
    )

    
    ${ScrI`pt`st`RiNG} = &("{1}{6}{3}{0}{5}{7}{2}{4}"-f 'usc','O','Co','bf','mmand','atedStr','ut-O','ing') ( ( &('Ls') ("va"+"riA"+"BlE:I"+"ME3z")  ).vAlUe::("{0}{1}"-f'Cr','eate').Invoke(${sc`Ripts`T`RIng})) 1

    
    ${SCR`ip`T`STRingr`evE`RsED} = ${S`cr`iPtSTriNG}[-1..-(${s`Cr`IptsTRi`NG}."lEnG`TH")] -Join ''
    
    
    
    ${cHarSToRAn`doMV`ARna`mE}  = @(0..9)
    ${CHarSt`OrAn`dO`M`VaRnamE} += @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')

    
    ${RA`N`DOmva`RLeNGtH} = (&("{0}{1}{2}"-f 'Get','-R','andom') -Input @(3..6))
   
    
    If(${ChA`RS`Tor`AnDOMVa`R`NAMe}."COu`Nt" -lt ${R`An`DOm`VArlENg`TH}) {${r`A`N`domVArLeng`Th} = ${C`hARsTO`Rand`OMVaRN`AME}."Co`UnT"}
    ${Ra`Ndom`VA`RNAmE} = ((&("{1}{0}{2}" -f'do','Get-Ran','m') -Input ${CHaRSTOrAnDom`V`ARN`AmE} -Count ${ra`N`DOM`VarlENG`TH}) -Join '').("{2}{0}{1}" -f 'pla','ce','Re').Invoke(' ','')

    
    While(${SCRi`PT`Str`I`NG}.("{1}{2}{0}" -f 'er','ToLo','w').Invoke().("{2}{1}{0}"-f'ins','nta','Co').Invoke(${RAN`d`omvAr`N`AME}.("{2}{1}{0}" -f 'r','oLowe','T').Invoke()))
    {
        ${ra`NdoMvARN`AmE} = ((&("{0}{2}{1}"-f 'Get-R','om','and') -Input ${Cha`RS`TORa`NdomV`Ar`NAmE} -Count ${R`An`doM`Va`RlENG`Th}) -Join '').("{1}{0}{2}"-f 'epl','R','ace').Invoke(' ','')
        ${rA`NdOmvAR`Le`Ng`TH}++
    }

    
    
    ${Ra`NDo`mvARNAme`mayBECON`C`A`T`ENAtEd} = ${Ra`ND`OMv`A`RnaME}
    ${raN`dOMva`RnAmemaYbEC`ON`CAtEn`AtEdwiT`HvAriaBlEprEP`E`NDED} = ("{1}{0}" -f':','variable') + ${RaNdoMv`Ar`NaME}
    If((&("{2}{1}{0}"-f 'm','ando','Get-R') -Input @(0..1)) -eq 0)
    {
        ${Ra`NDOmVARnA`mEmA`ybEC`oNcAT`eN`ATeD} = '(' + (&("{6}{2}{4}{5}{3}{0}{1}" -f'in','g','u','tr','t-Concatenat','edS','O') ${rANd`oMvArn`A`mE} (&("{2}{1}{0}"-f'andom','R','Get-') -Input @('"',"'"))) + ')'
        ${raNd`oMva`RnAM`emAyb`ECo`N`CA`TEnateDw`iThvARiABleprE`PendED} = '(' + (&("{2}{5}{4}{6}{1}{0}{3}"-f'dStri','e','Out-','ng','atena','Conc','t') "variable:$RandomVarName" (&("{0}{1}{2}"-f 'Get','-Rando','m') -Input @('"',"'"))) + ')'
    }

    
    ${RA`NDo`mV`ARvAlPLA`CeHO`lder} = (("{2}{0}{1}" -f ')(',']>','<['))

    
    ${Randomvar`s`e`TsYn`TAX}  = @()
    ${Ran`d`OmvaRSE`Ts`y`NtAx} += '$' + ${rAnD`O`MVarNa`me} + ' '*(&("{2}{0}{1}" -f'et-R','andom','G') @(0..2)) + '=' + ' '*(&("{2}{0}{3}{1}" -f '-','om','Get','Rand') @(0..2)) + ${Ra`N`DomVARV`Alp`Lace`hol`Der}
    ${RAnd`OmVA`Rse`Tsy`NtAx} += (&("{0}{2}{1}"-f'Get-Ran','m','do') -Input @(("{0}{3}{1}{2}"-f 'Set','ari','able','-V'),'SV','Set')) + ' '*(&("{3}{1}{0}{2}"-f'd','-Ran','om','Get') @(1..2)) + ${rAN`Domv`ArN`A`memaybeC`oN`cat`EnATeD} + ' '*(&("{1}{0}{2}" -f't-','Ge','Random') @(1..2)) + '(' + ' '*(&("{1}{3}{0}{2}" -f 'ndo','Get-','m','Ra') @(0..2)) + ${RaNdO`mvarvAl`PlAcE`HO`ldEr} + ' '*(&("{1}{2}{0}"-f'm','Ge','t-Rando') @(0..2)) + ')'
    
    
    ${Rand`OmVA`Rs`et} = (&("{2}{1}{0}"-f'om','t-Rand','Ge') -Input ${RAnD`Om`V`AR`sE`TsyntAx})

    
    ${R`AND`Omva`RSeT} = &("{1}{0}{2}" -f't-R','Ou','andomCase') ${RAndom`V`A`RSET}
    
    
    ${r`And`OM`VArgetsYnTAX}  = @()
    ${ra`NDOm`VaRGEts`ynt`Ax} += '$' + ${r`AN`DOmvA`Rn`AME}
    ${R`ANdo`Mv`AR`geTsyNtaX} += '(' + ' '*(&("{0}{2}{1}"-f'G','dom','et-Ran') @(0..2)) + (&("{3}{1}{0}{2}"-f 't-Ra','e','ndom','G') -Input @(("{1}{2}{3}{0}" -f'able','G','et','-Vari'),("{0}{1}"-f'Variabl','e'))) + ' '*(&("{2}{1}{0}" -f 'm','t-Rando','Ge') @(1..2)) + ${rAnDOMv`ARnAmE`ma`YbE`coNCAT`EnaT`Ed} + (&("{2}{1}{0}" -f'om','and','Get-R') -Input ((' '*(&("{2}{3}{1}{0}" -f'om','Rand','Get','-') @(0..2)) + ((("{1}{2}{0}"-f'lue',').V','a')))),(' '*(&("{1}{2}{0}" -f 'andom','G','et-R') @(1..2)) + (("{2}{1}{0}"-f 'eOnly','alu','-V').("{1}{0}{2}" -f'rin','SubSt','g').Invoke(0,(&("{1}{0}{2}"-f'n','Get-Ra','dom') -Minimum 3 -Maximum (("{1}{2}{0}"-f 'ly','-','ValueOn')."L`eN`gth"+1)))) + ' '*(&("{0}{1}{2}"-f 'Get','-Rando','m') @(0..2)) + ')')))
    ${Ra`NDOm`V`Ar`Ge`TsYntaX} += '(' + ' '*(&("{1}{0}{2}"-f'et-','G','Random') @(0..2)) + (&("{0}{1}{2}" -f'Get-','Ran','dom') -Input @('DIR',("{2}{1}{0}" -f'tem','-ChildI','Get'),'GCI',("{2}{0}{1}" -f'l','dItem','Chi'),'LS',("{0}{1}" -f'Get-Ite','m'),'GI',("{0}{1}" -f'It','em'))) + ' '*(&("{0}{1}{2}" -f 'G','et-Ra','ndom') @(1..2)) + ${R`ANDOMVa`Rnam`E`Ma`YBe`C`oNCaT`EnatED`w`IthV`AriabLE`pREPendEd} + ' '*(&("{2}{0}{1}" -f 'et-Ran','dom','G') @(0..2)) + ((("{1}{0}" -f '.Value',')')))
    
    
    ${r`Ando`MVArgET} = (&("{3}{2}{1}{0}" -f 'andom','R','-','Get') -Input ${rA`NDomv`ArG`Et`SY`N`TAx})

    
    ${rANDom`Va`R`GET} = &("{0}{3}{2}{1}"-f'Out-','mCase','o','Rand') ${rAnD`omV`ArG`Et}

    
    
    
    
    ${sE`TOf`sva`R`syntAX}      = @()
    ${seT`Of`S`VaRSYNTAX}     += (('tW'+'o'+'OFS')."rep`la`CE"('tWo',[sTrInG][ChAR]36)) + ' '*(&("{2}{1}{0}" -f'm','Rando','Get-') -Input @(0,1)) + '=' + ' '*(&("{1}{2}{3}{0}" -f 'Random','G','et','-') -Input @(0,1))  + "''"
    ${s`e`TofSvar`syNTax}     += ("{0}{2}{1}" -f 'Set','tem','-I') + ' '*(&("{2}{0}{1}" -f 'an','dom','Get-R') -Input @(1,2)) + ((("{3}{0}{2}{1}" -f'8Vari',':OFSuM8','able','uM'))  -repLaCe 'uM8',[cHAr]39) + ' '*(&("{2}{0}{1}{3}" -f 't','-Ra','Ge','ndom') -Input @(1,2)) + "''"
    ${SeTo`F`sv`ArsYnT`Ax}     += (&("{2}{1}{0}{3}" -f 'Ran','-','Get','dom') -Input @(("{2}{1}{0}"-f 'ariable','V','Set-'),'SV','SET')) + ' '*(&("{2}{0}{1}" -f'and','om','Get-R') -Input @(1,2)) + ((("{1}{2}{0}" -f '}','{0}','OFS{0'))-F[cHaR]39) + ' '*(&("{3}{1}{2}{0}" -f'om','et-','Rand','G') -Input @(1,2)) + "''"
    ${S`eToF`s`VaR}            = (&("{1}{3}{2}{0}" -f'om','Ge','nd','t-Ra') -Input ${Se`TOFsvarSY`N`TaX})

    ${se`T`oFSvA`R`BackS`YnTAx}  = @()
    ${se`T`ofSVa`RbAC`ksYnT`AX} += ("{0}{1}"-f'Set-It','em') + ' '*(&("{2}{1}{0}"-f 'andom','et-R','G') -Input @(1,2)) + ((("{1}{4}{3}{0}{2}" -f 'ble:OFS','F','Fxr','ria','xrVa'))."REP`L`AcE"('Fxr',[sTring][ChaR]39)) + ' '*(&("{0}{1}{2}" -f 'Get','-Ran','dom') -Input @(1,2)) + "' '"
    ${sETo`Fsv`Ar`Ba`CKsy`Ntax} += (&("{0}{1}{2}" -f 'Get','-','Random') -Input @(("{1}{3}{0}{2}" -f'ariabl','Se','e','t-V'),'SV','SET')) + ' '*(&("{3}{0}{2}{1}"-f 'et','dom','-Ran','G') -Input @(1,2)) + ((("{1}{3}{2}{0}"-f'NM','e','FSe','NMO')) -replACE'eNM',[CHar]39) + ' '*(&("{0}{2}{1}"-f 'Get-','om','Rand') -Input @(1,2)) + "' '"
    ${sETOFS`VaRb`A`cK}        = (&("{2}{1}{3}{0}" -f'andom','-','Get','R') -Input ${SeTO`FSvA`RbacKsyN`T`AX})

    
    ${SE`T`OfSVAr}            = &("{0}{3}{2}{4}{1}" -f'O','e','andomC','ut-R','as') ${s`e`TOfSvar}
    ${seT`OfS`VarBa`cK}        = &("{1}{0}{2}" -f'ndom','Out-Ra','Case') ${SET`OFSv`AR`B`AcK}
    ${ST`R`IN`gsTR}            = &("{3}{0}{1}{2}"-f 'Ra','ndomCa','se','Out-') ("{2}{0}{1}" -f'trin','g','s')
    ${JoiNS`TR}              = &("{4}{2}{0}{3}{1}"-f 'mCa','e','t-Rando','s','Ou') ("{1}{0}" -f 'oin','j')
    ${lE`NG`TH`STr}            = &("{3}{0}{1}{2}" -f'Ran','do','mCase','Out-') ("{1}{2}{0}" -f'h','leng','t')
    ${Arr`Ay`stR}             = &("{3}{2}{1}{0}" -f'omCase','d','ut-Ran','O') ("{0}{1}" -f'arra','y')
    ${r`E`Ve`RSesTr}           = &("{2}{0}{1}" -f'ndomCa','se','Out-Ra') ("{1}{0}{2}"-f'ever','r','se')
    ${cH`A`RStr}              = &("{2}{3}{4}{1}{0}" -f'ase','mC','Ou','t-Ran','do') ("{0}{1}" -f'c','har')
    ${rIGh`TToL`eFtStr}       = &("{0}{2}{3}{1}" -f'Ou','e','t-Rando','mCas') ("{1}{0}{2}"-f'g','ri','httoleft')
    ${rE`Gex`sTR}             = &("{2}{0}{1}" -f'Cas','e','Out-Random') ("{1}{0}"-f 'egex','r')
    ${m`ATchE`ssTr}           = &("{0}{3}{1}{2}"-f'O','Random','Case','ut-') ("{0}{2}{1}"-f 'm','es','atch')
    ${v`AL`UEsTR}             = &("{1}{2}{0}{3}"-f'RandomC','O','ut-','ase') ("{1}{0}" -f'ue','val')
    ${fore`AcHOBJ`ECT}        = &("{1}{2}{3}{0}" -f'e','Ou','t-RandomC','as') (&("{1}{0}{2}" -f 'd','Get-Ran','om') -Input @(("{1}{2}{0}{3}" -f 'ch-O','F','orEa','bject'),("{0}{2}{1}" -f'Fo','ach','rE'),'%'))

    
    Switch(&("{0}{2}{1}"-f'Get-','andom','R') -Input (1..3)) {
        1 {
            
            
            
            ${ran`DoMv`AR`SeT} = ${r`AN`dOm`VARseT}.("{0}{1}"-f'Replac','e').Invoke(${RanD`omvar`V`AlplacehOL`D`ER},('"' + ' '*(&("{0}{2}{1}" -f'Get','m','-Rando') -Input @(0,1)) + ${ScriPtST`R`IN`grE`VerSED} + ' '*(&("{2}{3}{0}{1}"-f'o','m','Get-','Rand') -Input @(0,1)) + '"'))

            
            ${SC`RIPt`StRING} = ${rANDOm`V`ARs`eT} + ' '*(&("{2}{1}{0}" -f'om','Rand','Get-') -Input @(0,1)) + ';' + ' '*(&("{2}{1}{0}"-f 'dom','t-Ran','Ge') -Input @(0,1))
            
            ${R`AN`DOMVaR`GeT} = ${RaNDO`M`VAr`get} + '[' + ' '*(&("{1}{2}{0}" -f'Random','Ge','t-') -Input @(0,1)) + '-' + ' '*(&("{2}{1}{0}" -f'ndom','t-Ra','Ge') -Input @(0,1)) + '1' + ' '*(&("{0}{1}{2}" -f'Get-R','a','ndom') -Input @(0,1)) + '..' + ' '*(&("{1}{3}{2}{0}"-f'm','Get-R','do','an') -Input @(0,1)) + '-' + ' '*(&("{3}{0}{1}{2}" -f'et-R','ando','m','G') -Input @(0,1)) + '(' + ' '*(&("{1}{2}{0}" -f'andom','Get','-R') -Input @(0,1)) + ${RAn`DOMV`Arg`ET} + ".$LengthStr" + ' '*(&("{1}{3}{0}{2}"-f'Rando','G','m','et-') -Input @(0,1)) + ')' + ' '*(&("{2}{0}{1}"-f'o','m','Get-Rand') -Input @(0,1)) + ']'

            
            
            ${j`OIn`OptiO`Ns}  = @()
            ${JoInOP`TIo`Ns} += "-$JoinStr" + ' '*(&("{2}{1}{0}" -f 'm','Rando','Get-') -Input @(0,1)) + ${r`ANDoMV`ARgeT}
            ${joINOP`T`Io`NS} += ${R`AND`om`VaRgeT} + ' '*(&("{1}{2}{0}"-f 'andom','Ge','t-R') -Input @(0,1)) + "-$JoinStr" + ' '*(&("{1}{0}{2}" -f'd','Get-Ran','om') -Input @(0,1)) + "''"
            ${jOi`NO`pT`IOnS} += "[$StringStr]::$JoinStr" + '(' + ' '*(&("{0}{1}{2}"-f'Get-R','and','om') -Input @(0,1)) + "''" + ' '*(&("{1}{0}{2}" -f'-','Get','Random') -Input @(0,1)) + ',' + ' '*(&("{0}{2}{1}{3}" -f 'G','Ra','et-','ndom') -Input @(0,1)) + (&("{1}{2}{0}" -f'm','Get-','Rando') -Input ${r`A`Nd`omvaRGEt}) + ' '*(&("{1}{2}{0}" -f'ndom','Get-','Ra') -Input @(0,1)) + ')'
            ${Joi`NoptI`O`NS} += '"' + ' '*(&("{1}{0}{2}" -f 't-Rand','Ge','om') -Input @(0,1)) + '$(' + ' '*(&("{0}{2}{1}{3}" -f 'Ge','an','t-R','dom') -Input @(0,1)) + ${s`Et`OfsVAR} + ' '*(&("{1}{3}{0}{2}"-f'-R','Ge','andom','t') -Input @(0,1)) + ')' + ' '*(&("{1}{2}{0}" -f'dom','Get-Ra','n') -Input @(0,1)) + '"' + ' '*(&("{1}{2}{3}{0}" -f'om','Get','-Ran','d') -Input @(0,1)) + '+' + ' '*(&("{1}{2}{0}"-f 'dom','Get-Ra','n') -Input @(0,1)) + "[$StringStr]" + ' '*(&("{2}{0}{1}"-f '-','Random','Get') -Input @(0,1)) + '(' + ' '*(&("{1}{0}{2}"-f'do','Get-Ran','m') -Input @(0,1)) + ${r`AND`OmVaRgeT} + ' '*(&("{0}{1}{2}" -f'Ge','t-R','andom') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get-Ra','n','dom') -Input @(0,1)) + '+' + '"' + ' '*(&("{2}{1}{0}" -f'-Random','et','G') -Input @(0,1)) + '$(' + ' '*(&("{2}{1}{0}"-f'om','Rand','Get-') -Input @(0,1)) + ${se`T`ofsvARBAcK} + ' '*(&("{1}{2}{0}"-f 'om','G','et-Rand') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}{3}" -f 'n','Ra','Get-','dom') -Input @(0,1)) + '"'
            ${JOI`NOpt`IOn} = (&("{2}{0}{1}" -f 'Ra','ndom','Get-') -Input ${Jo`InO`Ptio`Ns})
            
            
            ${j`o`INoPtion} = &("{3}{0}{5}{4}{2}{1}" -f 'ca','ssion','Expre','Out-En','ulatedInvoke','ps') ${j`oinoPti`on}
            
            ${sC`R`I`ptsTrI`Ng} = ${s`cR`IPt`ST`RiNg} + ${JoINOp`T`IOn}
        }
        2 {
            
            
            
            ${R`AN`d`o`MvArSEt} = ${ra`ND`Omv`ARsEt}."r`EplA`CE"(${raND`OMVARv`AlPlace`HO`l`der},("[$CharStr[" + ' '*(&("{2}{1}{0}" -f 'm','o','Get-Rand') -Input @(0,1)) + ']' + ' '*(&("{2}{0}{1}"-f'-Ra','ndom','Get') -Input @(0,1)) + ']' + ' '*(&("{1}{2}{0}" -f'om','Get-','Rand') -Input @(0,1)) + '"' + ${ScriPtstRin`GrEVE`Rs`Ed} + '"'))

            
            ${SCr`iP`TStRinG} = ${rAndO`mVAr`sEt} + ' '*(&("{2}{0}{3}{1}"-f 't','dom','Ge','-Ran') -Input @(0,1)) + ';' + ' '*(&("{1}{2}{0}" -f'm','Get-','Rando') -Input @(0,1))
            ${sc`R`iptsTRI`Ng} = ${SCr`iPTst`RiNG} + ' '*(&("{2}{0}{1}" -f'Ra','ndom','Get-') -Input @(0,1)) + "[$ArrayStr]::$ReverseStr(" + ' '*(&("{2}{0}{3}{1}" -f'et-','dom','G','Ran') -Input @(0,1)) + ${r`An`DoMv`ArgeT} + ' '*(&("{1}{3}{2}{0}"-f '-Random','G','t','e') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}" -f'G','m','et-Rando') -Input @(0,1)) + ';'

            
            
            ${jOiNo`ptI`ONS}  = @()
            ${JOinop`Ti`ONs} += "-$JoinStr" + ' '*(&("{0}{2}{1}" -f 'Get','andom','-R') -Input @(0,1)) + ${RA`NdOMVa`Rg`et}
            ${j`oI`NopTi`oNS} += ${R`ANDO`MvAR`g`ET} + ' '*(&("{0}{1}{2}{3}" -f 'G','e','t-','Random') -Input @(0,1)) + "-$JoinStr" + ' '*(&("{1}{2}{0}"-f 'm','G','et-Rando') -Input @(0,1)) + "''"
            ${jO`InopT`IOnS} += "[$StringStr]::$JoinStr" + '(' + ' '*(&("{1}{2}{0}"-f '-Random','G','et') -Input @(0,1)) + "''" + ' '*(&("{2}{1}{0}" -f'ndom','a','Get-R') -Input @(0,1)) + ',' + ' '*(&("{0}{1}{2}"-f'Get-R','and','om') -Input @(0,1)) + ${Ra`NdOMV`ArgET} + ' '*(&("{0}{1}{2}{3}"-f 'G','et-Ran','d','om') -Input @(0,1)) + ')'
            ${jOiN`opTI`Ons} += '"' + ' '*(&("{1}{3}{2}{0}"-f'm','Get-R','do','an') -Input @(0,1)) + '$(' + ' '*(&("{1}{0}{2}{3}"-f'-Ran','Get','do','m') -Input @(0,1)) + ${SetO`FS`Var} + ' '*(&("{0}{1}{2}"-f 'Ge','t-Rando','m') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}" -f'dom','Ran','Get-') -Input @(0,1)) + '"' + ' '*(&("{1}{3}{0}{2}" -f'R','Ge','andom','t-') -Input @(0,1)) + '+' + ' '*(&("{0}{1}{2}"-f 'Get-Rand','o','m') -Input @(0,1)) + "[$StringStr]" + ' '*(&("{0}{1}{2}" -f'Get-Rand','o','m') -Input @(0,1)) + '(' + ' '*(&("{2}{1}{0}" -f 'andom','t-R','Ge') -Input @(0,1)) + ${raN`domvA`RG`Et} + ' '*(&("{0}{1}{2}{3}"-f 'Get','-R','and','om') -Input @(0,1)) + ')' + ' '*(&("{1}{0}{2}"-f'et-Rand','G','om') -Input @(0,1)) + '+' + '"' + ' '*(&("{0}{1}{2}" -f 'Get-Ran','do','m') -Input @(0,1)) + '$(' + ' '*(&("{0}{1}{2}{3}"-f 'G','et','-Rand','om') -Input @(0,1)) + ${S`eToFs`Va`RBA`ck} + ' '*(&("{1}{2}{0}" -f'dom','Get-','Ran') -Input @(0,1)) + ')' + ' '*(&("{3}{1}{0}{2}"-f 'R','-','andom','Get') -Input @(0,1)) + '"'
            ${j`O`InOpt`iON} = (&("{0}{1}{2}" -f 'G','et-','Random') -Input ${JO`in`OpTiOns})
            
            
            ${jOi`NOPTi`on} = &("{2}{1}{4}{5}{3}{0}" -f 'n','u','Out-Encaps','dInvokeExpressio','l','ate') ${j`OI`NOPTIon}
            
            ${Scrip`TS`Tr`ing} = ${SC`RiPtstr`InG} + ${J`OiNoP`TIon}
        }
        3 {
            

            
            If(&("{2}{3}{1}{0}" -f 'm','do','Get','-Ran') -Input (0..1))
            {
                ${righ`TToL`E`Ft} = &("{3}{0}{6}{1}{2}{5}{4}"-f 't','ated','S','Out-Conca','g','trin','en') ${r`iG`HT`ToLEFTstR} "'"
            }
            Else
            {
                ${r`IGHt`T`oLeft} = "'$RightToLeftStr'"
            }
            
            
            
            ${j`oI`Nop`TioNS}  = @()
            ${jo`Ino`ptIoNs} += ' '*(&("{2}{0}{1}" -f'et','-Random','G') -Input @(0,1)) + '(' + ' '*(&("{1}{2}{0}" -f 'om','Get','-Rand') -Input @(0,1)) + "-$JoinStr" + ' '*(&("{1}{2}{0}"-f'andom','G','et-R') -Input @(0,1)) + "[$RegexStr]::$MatchesStr(" + ' '*(&("{1}{0}{2}" -f 'R','Get-','andom') -Input @(0,1)) + '"' + ${ScRIp`Ts`TR`i`NGR`eVerSEd} + ' '*(&("{0}{1}{2}" -f'Get','-Ran','dom') -Input @(0,1)) + '"' + ' '*(&("{1}{2}{0}" -f'm','Get','-Rando') -Input @(0,1)) + ',' + ' '*(&("{1}{0}{2}" -f'e','G','t-Random') -Input @(0,1)) + "'.'" + ' '*(&("{0}{1}{3}{2}"-f'Get-','Rand','m','o') -Input @(0,1)) + ',' + ' '*(&("{1}{3}{2}{0}" -f'om','Get','nd','-Ra') -Input @(0,1)) + ${R`ighT`T`OLEFt} + ' '*(&("{0}{1}{3}{2}"-f 'Ge','t-','dom','Ran') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get-Ra','n','dom') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}" -f'Ge','ndom','t-Ra') -Input @(0,1))
            ${JOiN`oPt`I`oNS} += ' '*(&("{0}{1}{2}" -f 'G','et-Ra','ndom') -Input @(0,1)) + '(' + ' '*(&("{0}{3}{2}{1}" -f 'G','om','nd','et-Ra') -Input @(0,1)) + "[$RegexStr]::$MatchesStr(" + ' '*(&("{0}{1}{2}" -f 'G','et-','Random') -Input @(0,1)) + '"' + ${ScRIPTs`TrI`N`GRev`eR`seD} + '"' + ' '*(&("{2}{1}{0}"-f'm','t-Rando','Ge') -Input @(0,1)) + ',' + ' '*(&("{0}{1}{2}" -f'Ge','t','-Random') -Input @(0,1)) + "'.'" + ' '*(&("{0}{1}{2}" -f'Get-R','an','dom') -Input @(0,1)) + ',' +  ' '*(&("{2}{3}{1}{0}"-f'andom','R','Get','-') -Input @(0,1)) + ${rIgH`T`TO`lEFT} + ' '*(&("{1}{2}{0}"-f'andom','Ge','t-R') -Input @(0,1)) + ')' + ' '*(&("{3}{0}{2}{1}" -f 't-Ra','om','nd','Ge') -Input @(0,1)) + "-$JoinStr" + ' '*(&("{1}{0}{2}" -f 'Ran','Get-','dom') -Input @(0,1)) + "''" + ' '*(&("{1}{2}{0}"-f'om','Get-Ran','d') -Input @(0,1)) + ')' + ' '*(&("{3}{2}{1}{0}" -f 'dom','n','et-Ra','G') -Input @(0,1))
            ${join`O`PtIO`NS} += ' '*(&("{0}{2}{3}{1}"-f 'G','andom','e','t-R') -Input @(0,1)) + "[$StringStr]::$JoinStr(" + ' '*(&("{2}{1}{0}"-f 'dom','t-Ran','Ge') -Input @(0,1)) + "''" + ' '*(&("{2}{3}{0}{1}" -f 'n','dom','Get-R','a') -Input @(0,1)) + ',' + ' '*(&("{2}{1}{0}"-f 'andom','t-R','Ge') -Input @(0,1)) + '(' + ' '*(&("{0}{3}{1}{2}"-f'G','-R','andom','et') -Input @(0,1)) + "[$RegexStr]::$MatchesStr(" + ' '*(&("{1}{2}{0}" -f 'm','Get-Rand','o') -Input @(0,1)) + '"' + ${SCr`IptsTR`inGReveRS`ED} + '"' + ' '*(&("{0}{2}{1}" -f'G','t-Random','e') -Input @(0,1)) + ',' + ' '*(&("{0}{1}{2}"-f 'Get-Ra','ndo','m') -Input @(0,1)) + "'.'" + ' '*(&("{2}{1}{0}" -f'Random','et-','G') -Input @(0,1)) + ',' + ' '*(&("{1}{0}{2}" -f'et-Ra','G','ndom') -Input @(0,1)) + ${rIg`HTTole`Ft} + ' '*(&("{1}{2}{0}" -f 'm','Get-Ra','ndo') -Input @(0,1)) + ")" + ' '*(&("{2}{0}{1}"-f 'n','dom','Get-Ra') -Input @(0,1)) + '|' + ' '*(&("{0}{2}{1}{3}"-f 'Get-Ran','o','d','m') -Input @(0,1)) + ${FoReAC`hob`j`ECt} + ' '*(&("{2}{0}{1}"-f'and','om','Get-R') -Input @(0,1)) + '{' + ' '*(&("{2}{1}{0}"-f 'dom','n','Get-Ra') -Input @(0,1)) + '$_' + ".$ValueStr" + ' '*(&("{0}{1}{2}" -f 'Ge','t-Ra','ndom') -Input @(0,1)) + '}' + ' '*(&("{2}{1}{0}" -f 'm','do','Get-Ran') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}"-f'Get-R','a','ndom') -Input @(0,1)) + ')' + ' '*(&("{2}{1}{0}"-f'dom','n','Get-Ra') -Input @(0,1))
            ${J`oIN`oPTIOnS} += '"' + ' '*(&("{3}{2}{0}{1}"-f'-Ran','dom','t','Ge') -Input @(0,1)) + '$(' + ' '*(&("{2}{1}{0}"-f'andom','R','Get-') -Input @(0,1)) + ${sET`Of`SVAr} + ' '*(&("{3}{0}{1}{2}"-f 'et-','Rando','m','G') -Input @(0,1)) + ')' + ' '*(&("{0}{2}{1}"-f'G','-Random','et') -Input @(0,1)) + '"' + ' '*(&("{2}{0}{1}" -f'-R','andom','Get') -Input @(0,1)) + '+' +          ' '*(&("{0}{2}{1}"-f'G','m','et-Rando') -Input @(0,1)) + '(' + ' '*(&("{3}{2}{0}{1}"-f'ndo','m','t-Ra','Ge') -Input @(0,1)) + "[$StringStr]" + ' '*(&("{0}{2}{1}" -f'Get-Ra','dom','n') -Input @(0,1)) + "[$RegexStr]::$MatchesStr(" + ' '*(&("{2}{0}{1}"-f 'Ran','dom','Get-') -Input @(0,1)) + '"' + ${SCr`iptSTRiNGr`eveRS`ED} + '"' + ' '*(&("{3}{1}{0}{2}" -f'nd','Ra','om','Get-') -Input @(0,1)) + ',' + ' '*(&("{2}{0}{1}" -f 'n','dom','Get-Ra') -Input @(0,1)) + "'.'" + ' '*(&("{0}{1}{3}{2}"-f'Get','-','dom','Ran') -Input @(0,1)) + ',' + ' '*(&("{0}{2}{3}{1}" -f 'G','dom','et-Ra','n') -Input @(0,1)) + ${riGht`To`L`EFT} + ' '*(&("{3}{0}{1}{2}"-f't','-Rando','m','Ge') -Input @(0,1)) + ")" + ' '*(&("{1}{0}{2}"-f 'et-Ra','G','ndom') -Input @(0,1)) + '|' + ' '*(&("{2}{0}{1}" -f 'Ran','dom','Get-') -Input @(0,1)) + ${Fo`ReA`chobj`E`Ct} + ' '*(&("{3}{2}{0}{1}" -f'-','Random','t','Ge') -Input @(0,1)) + '{' + ' '*(&("{2}{0}{3}{1}" -f't','Random','Ge','-') -Input @(0,1)) + '$_' + ' '*(&("{2}{1}{0}" -f'andom','t-R','Ge') -Input @(0,1)) + '}' + ' '*(&("{2}{1}{0}"-f'ndom','a','Get-R') -Input @(0,1)) + ')'             + ' '*(&("{2}{1}{0}"-f't-Random','e','G') -Input @(0,1)) + '+' + '"' + ' '*(&("{2}{0}{1}" -f 'e','t-Random','G') -Input @(0,1)) + '$(' + ' '*(&("{0}{3}{2}{1}" -f 'G','Random','-','et') -Input @(0,1)) + ${s`E`TOFSvar`BACK} + ' '*(&("{2}{1}{0}" -f'ndom','a','Get-R') -Input @(0,1)) + ')' + ' '*(&("{3}{1}{0}{2}"-f'Ra','-','ndom','Get') -Input @(0,1)) + '"'
            ${S`cRIptST`R`inG} = (&("{2}{0}{1}"-f'et-','Random','G') -Input ${j`oINOpTI`ONS})
            
            
            ${sC`RipTSTRi`NG} = &("{0}{3}{5}{4}{2}{6}{1}" -f 'Out-Encap','n','ssi','sulated','keExpre','Invo','o') ${SCRiptst`RI`Ng}
        }
        ("{2}{1}{0}" -f'ult','efa','d') {&("{2}{0}{1}{3}"-f 'rite','-Erro','W','r') ("{8}{7}{2}{3}{4}{0}{6}{1}{5}"-f'to switch','oc',' ','pa','ssed ','k.',' bl','ue was','An invalid val'); Exit;}
    }
    
    
    
    ${SP`ECi`ALCHA`Ract`eRs} = @('a','b','f','n','r','u','t','v','0')
    ForEach(${sPECI`Alc`har} in ${SPEcIAl`C`h`A`RACTERs})
    {
        If(${S`c`RIPtstR`Ing}.("{1}{2}{0}" -f'ns','C','ontai').Invoke("``"+${S`PE`ciaLChaR}))
        {
            ${sCr`ipT`StRi`Ng} = ${sCrIp`T`S`TRING}.("{1}{0}" -f 'ace','Repl').Invoke("``"+${S`P`ECiALcH`Ar},${SpEcI`A`LcHAR})
        }
    }
    
    Return ${S`CrI`PTString}
}


Function O`U`T-eNca`Psul`AtEDIN`Vo`keexPrESSioN
{


    [CmdletBinding()] Param (
        [Parameter(poSITiON = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${s`cRI`ptsTRing}
    )

    
    
    
    ${iNVOkeExp`R`eSSiOn`sYnTax}  = @()
    ${I`NV`O`kEExpress`iOns`ynTAX} += (&("{0}{2}{1}{3}"-f'Ge','Ra','t-','ndom') -Input @('IEX',("{3}{1}{2}{4}{0}" -f'pression','v','oke','In','-Ex')))
    
    
    
    ${I`NvoC`AT`IonOp`ERA`T`OR} = (&("{1}{3}{0}{2}"-f 'R','G','andom','et-') -Input @('.','&')) + ' '*(&("{0}{2}{1}" -f'G','andom','et-R') -Input @(0,1))
    ${I`NvOke`ExpREs`Sio`NsY`NTax} += ${In`Voc`AtIo`NOP`eRat`oR} + ('( '+"`$ShellId[1]+`$ShellId[13]+'x')")
    ${iNVOKE`EXPr`essION`sy`NtAX} += ${In`VO`CAtiO`Noperat`oR} + ('( '+"`$PSHome[") + (&("{2}{1}{3}{0}" -f 'm','n','Get-Ra','do') -Input @(4,21)) + "]+`$PSHome[" + (&("{0}{2}{1}" -f'Get-R','m','ando') -Input @(30,34)) + (((("{0}{1}{2}{3}"-f ']+{0','}x','{0}',')'))-f  [CHAR]39))
    ${iNVo`k`ee`X`Pr`ess`iOnsYNtAx} += ${I`NVoCA`Ti`on`OPeratOr} + ('( '+"`$env:ComSpec[4,") + (&("{2}{0}{1}" -f'et-R','andom','G') -Input @(15,24,26)) + (((("{2}{3}{1}{0}"-f ')','{0}{0}',',','25]-Join'))-F [cHAR]39))
    ${I`NVokeeXpR`eSSI`OnsyN`T`AX} += ${I`NVoCaT`io`N`O`peRAtOr} + "((" + (&("{0}{1}{2}"-f 'Get-Ra','nd','om') -Input @(("{3}{2}{1}{0}"-f 'iable','Var','et-','G'),'GV',("{1}{0}"-f'ariable','V'))) + (((("{6}{8}{7}{9}{5}{3}{1}{0}{2}{4}" -f 'oineR','-J','5eR5',']',')',',2',' eR5*m',').Na','dr*eR5','me[3,11')) -CReplAcE ([cHaR]101+[cHaR]82+[cHaR]53),[cHaR]39))
    ${iN`VOK`ee`xpREsSIons`YN`T`AX} += ${I`NVo`CaTiO`No`pe`Rat`oR} + "( " + (&("{2}{0}{1}"-f '-Rand','om','Get') -Input @(((('AMHV'+'er'+'bo'+'sePrefer'+'en'+'c'+'e.To'+'Str'+'ing('+')')  -crEPlACe 'AMH',[chAR]36)),(('('+'[Stri'+'ng]5B'+'v'+'Verb'+'oseP'+'r'+'eference)')."r`EplACE"('5Bv',[STrINg][ChAR]36)))) + ((("{4}{1}{3}{5}{0}{2}"-f'4','54y-Join','y)','54y','[1,3]+54yx','5'))."rEpl`A`CE"(([cHar]53+[cHar]52+[cHar]121),[striNg][cHar]39))
    
    

    
    ${inV`OkeE`XpR`eSsION} = (&("{2}{0}{3}{1}"-f'n','m','Get-Ra','do') -Input ${iNvOK`E`EXPreSS`ioNS`YNTaX})

    
    ${i`NVoK`EE`XP`RE`Ssion} = &("{4}{1}{0}{2}{3}"-f '-R','t','an','domCase','Ou') ${InVOK`EE`xp`Ress`iON}
    
    
    ${Inv`oKEo`PtIoNs}  = @()
    ${iNvo`KeO`pt`iOnS} += ' '*(&("{1}{2}{0}"-f'om','Get-','Rand') -Input @(0,1)) + ${InVokEeXp`R`essI`on} + ' '*(&("{0}{1}{2}"-f 'G','et-Rand','om') -Input @(0,1)) + '(' + ' '*(&("{1}{2}{0}"-f 'dom','G','et-Ran') -Input @(0,1)) + ${ScR`ip`TS`TRInG} + ' '*(&("{2}{0}{1}"-f 'et-R','andom','G') -Input @(0,1)) + ')' + ' '*(&("{0}{1}{2}" -f'Get-Ra','nd','om') -Input @(0,1))
    ${iNvO`K`e`OPTIons} += ' '*(&("{1}{2}{0}" -f 'm','Get-Ran','do') -Input @(0,1)) + ${ScR`I`ptSTri`NG} + ' '*(&("{0}{2}{1}"-f'Get-Ra','dom','n') -Input @(0,1)) + '|' + ' '*(&("{2}{1}{0}"-f'ndom','a','Get-R') -Input @(0,1)) + ${inv`oKEExpr`ES`SI`ON}

    ${SCri`PTStri`Ng} = (&("{1}{0}{2}" -f 'n','Get-Ra','dom') -Input ${Inv`okEOptIo`NS})

    Return ${S`CRiptstRI`NG}
}
