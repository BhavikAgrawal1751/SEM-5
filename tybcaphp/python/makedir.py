#! D:\xampp\python.exe

# importing os module 
import os
  
# Directory
directory = "newtest"
  
# Parent Directory path
parent_dir = "D:\\xampp\\htdocs\\tybca\\python\\"
  
# Path
path = os.path.join(parent_dir, directory)
  
# Create the directory
os.mkdir(path)

print("Directory '%s' created" %directory)

