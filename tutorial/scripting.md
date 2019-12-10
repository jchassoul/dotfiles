# Korn shell scripting
The Spacebeam **Char** distro a custom Debian (x86_64) stretch system and other UNIX-Like operating systems need a way to communicate with the kernel. This is done through the use of a shell. There are a few different shells that you can use, but we focus on the Korn shell. The Korn shell is the default shell used with **Char**.

The great thing about shell commands is that you can combine them in a file called a script that allows you to run multiple commands one after another. This is great when you have to repeat the same tasks over and over again. Instead of repeatedly typing these commands, you can put them in a script, a Korn shell script.

## Writing your first .ksh script
The first line in a Korn shell script is the shell itself. It is denoted as follow:

```
#!/bin/ksh
```

It can be a little intimidating at first, but the more you use vim, the more confortable you will become. People have written whole books just on how exit the text editor.

You can name you script anything you want, but you usually use the extension .ksh to refer to a Korn shell script. You do not have to do this, but it's a good practice. The pound (`#`) is used to comment with scripts.

## Nuts and bolts 
Setting variables within a script is fairly simple. Usually we capitalize all variables within our scripts, but you don't have to.

```
# Define variables

DATE=$(date)

PASSWORD_FILE="/etc/passwd"

# Begin Code

for username in $(cat $PASSWORD_FILE | cut -f1 -d:)
do
    print $username
done
```

