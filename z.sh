

# ../ymheat-opt -i ex01.i



# # 0th step:
# you need to register in github, and create a new web repository.
# Create one folder in local computer. 

# # 1st step: Initialize your local repository
git init 
# # # Initialized empty Git repository in /home/ma/mygithub/.git/

# # 2nd step: choose the file you would like to push into local repository
git add z.sh

# # 3nd step: push the selected file to the local repository
git commit -m z.sh

# # 4th step: add the web repository address
git remote add origin https://github.com/tearsofwein/heat-transfer.git

## 5th step: push the content of local repository into the web repository
git push -u origin master
