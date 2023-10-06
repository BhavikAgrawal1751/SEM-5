#! D:\xampp\python.exe
print ("Content-type: text/html\n\n");
import subprocess

cmd = "D:\\xampp\\php\\php.exe index.php"; 

proc = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

script_response, script_err = proc.communicate();

arrOutput = script_response.splitlines();

strHtmlOutput = "".join(arrOutput);
print(strHtmlOutput);