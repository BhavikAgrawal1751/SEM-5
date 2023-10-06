#! D:\xampp\python.exe
import subprocess

#When there is string command. Shell=True. When using environment variable, Shell=True, When Using windows command Shell=True
#cmd = "D:\\xampp\\php\\php.exe call_by_python.php 1234567890 amit@gmail.com"; 

#Convert string to list.
cmd = "D:\\xampp\\php\\php.exe call_by_python.php 1234567890 amit@gmail.com".split(); 

#When there is list command, Shell=False.
#cmd = ["D:\\xampp\\php\\php.exe", "call_by_python.php","1234567890","amit@gmail.com"]
proc = subprocess.Popen(cmd, shell=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
#script_response = proc.stdout.read()
script_response, script_err = proc.communicate();
#Out put is returned in the bytecode. 
#if you are using splitlines() - it will return Array.
print(script_response.splitlines())