#! D:\xampp\python.exe
import subprocess
cmd = "D:\\xampp\\php\\php.exe call_by_python.php 1234567890 amit@gmail.com";
#cmd = ["D:\\xampp\\php\\php.exe", "call_by_python.php","1234567890","amit@gmail.com"]
proc =  subprocess.check_output(cmd, shell=True)
#script_response = proc.stdout.read()
#script_response = proc.communicate();
#print(script_response.splitlines())
print(proc)