#! D:\xampp\python.exe

# importing os module
import os
 
# Leaf directory
directory = "test"
 
# Parent Directories
parent_dir = "D:\\xampp\\htdocs\\tybca\\python\\new\\moredir\\"
 
# Path
path = os.path.join(parent_dir, directory)
 
# Create the directory
# 'ihritik'

#isFile = os.path.isfile(path)


if(os.path.exists(path)):
    print("Directory '%s' Already Exists" %directory)
else:
    os.makedirs(path)
    print("Directory '%s' created" %directory)