# shellgpt
Query chatgpt from your shell

# Installation

Copy script to a path dir and make it executable

```
sudo cp ./chatgpt.sh /usr/bin/chatgpt
sudo chmod +x /usr/bin/chatgpt
```

Create path for the chatgpt config file and copy it in

```
mkdir ~/.chatgtp/
cp ./chatgpt ~/.chatgtp/
```

Then edit file to match your config

```
MODEL="text-davinci-003"
TEMPERATURE="0"
MAX_TOKEN=4000
BEARER=""
```

# How to use shellgpt

Example: simple output
```
$ chatgpt -p "print the 3 most used linux commands, new-line separated"
ls
cd
mv
```

Example: pipe output
```
$ chatgpt -p "print the 3 most used linux commands, new-line separated" | xargs -I {} bash -c 'echo "" && chatgpt -p "Create an example about the {} command
" && sleep 10'

The ls command is a command line utility used to list the contents of a directory. To use the ls command, open a terminal window and type \"ls\" followed by the directory you want to list. For example, to list the contents of the current directory, type \"ls\" and press enter. The output will be a list of all the files and folders in the directory.

The cd command is used to change the current working directory in a command line interface. For example, if you are in the directory /home/user/Documents and you want to change to the directory /home/user/Pictures, you can use the command cd /home/user/Pictures. This will change the current working directory to /home/user/Pictures.

The mv command is used to move or rename files and directories. For example, if you wanted to move a file named \"example.txt\" from the current directory to a directory named \"Documents\", you would use the following command:
mv example.txt Documents/
```
