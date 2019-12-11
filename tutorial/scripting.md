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

When filling into a variable then one uses its name: `state="CR"` and no blanks. There is no difference between strings and numbers: `price=500`.

When using a variable you need to put a `$` sign in front of it: `print $state $price`,

There are happily no declarations of variables needed in ksh. We don't have decimals only integers.

The script starts at the first line and ends euther when it encouters and `exit` or the last line. All `#` lines are ignored.

A command starts with the first word on a line or if its the second command on a line with the first word after a `;`. A command ends either at the end of the line or whith a `;`. So one can put several commands onto one line.

```
print -n "Name "; read name; print "$name"
```

What happens if the /etc/passwd file didn't exist? The script would fail.

```
# Check to see if the file exists and if so then continue
if [[ -e $PASSWORD_FILE ]]; then
    for username in $(cat $PASSWORD_FILE | cut -f1 -d:)
    do
        print $username
    done
else
    print "$PASSWORD_FILE was not found"
    exit
fi
```

Conditional `if` statements start with if and end with the letters reversed (`fi`).


### if then elif then else fi
```
if [[ $name = "John" ]]; then
    print "Your welcome, ${name}."
elif [[ $name = "Hanna" ]]; then
    print "Hello, ${name}, are you ok?"
else
    print "Good bye, ${name}!"
fi
```

### case esac
```
case $var in
    john|jean)  print $invitation;;
    sloth)      print $declination;;
    *)          print "Wrong name...";;
esac
```

### while do done
```
```

### until do done
```
```

### for var in list do done
```
```

### continue break
```
```

### Positional parameters
