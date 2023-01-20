# shellgpt
Query chatgpt from your shell

# Installation

Copy script to a path dir and make it executable

```
sudo cp ./chatgpt.sh /usr/bin/
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
Example
```
$ chatgpt -p "What is the 3 most used linux commands, print them in a list comma separated, with no other description"
ls, cd, mv
```
