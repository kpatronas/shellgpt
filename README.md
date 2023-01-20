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

Example: simple output
```
$ chatgpt -p "print the 3 most used linux commands, new-line separated"
ls
cd
mv
```

Example: pipe output
```
$ chatgpt -p "print the 3 most used linux commands, new-line separated"
ls
cd
mv
```
