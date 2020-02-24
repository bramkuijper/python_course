# first write something to a file
with open(file="myfile.txt", mode="w") as file_obj:
    file_obj.write("I wrote this to a file!")
    
# open file again, now to append and read
with open(file="myfile.txt",mode="a+") as file_obj:
    file_obj.write("\nAnd now I also wrote this!")
    
    # move file pointer to 0th byte of file
    file_obj.seek(0)
    
    # get file contents
    file_contents = file_obj.read()
    
# print file contents
print(file_contents) # output: I wrote this...    
    