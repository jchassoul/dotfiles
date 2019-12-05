## Shell Basics
You've used your computer for simple tasks, such as involing your application programs, reading your email, and perhaps watch a stream or play some games. You know that your machine runs a bastard child of the Unix operating system, or maybe you know it under some other name, like GNU/Linux or one of the BSD-derived systems that is not based on the original Unix source code. But apart from that, you may not have given too much thought to what goes on inside the machine when you type in a command and hit ENTER.

It is true that several layers of events take place whenever you enter a command, but we're going to consider only the top layer, known as the shell. Generally speaking, a shell is any user interface to the operating system, i.e., any program that takes input from the user, translates it into instructions that the operating system can understand, and conveys the operating system's output back to the user.

### What is a Shell?

The shell's job, then, is to translate the user's command lines into operating systems instructions. For example, consider this command line:

`sort -n phonelist > phonelist.sorted`

This means, "Sort lines in the file **phonelist** in numerical order, and put the result in the file phonelist.sorted." Here's what the shell does with this command:

1. Breaks up the line into pieces sort, -n, phonelist, >, and phonelist.sorted. These pieces are called words.

2. Determines the purpose of the words: *sort* is a command; -n and phonelist are arguments; > and phonelist.sorted, taken together, are I/O instructions.

3. Sets up the I/O according to > phonelist.sorted (output to the file phonelist.sorte) and some standard, implicit instructions.

4. Finds the command sort in a file and runs it with the option -n (numerical order) and the argument phonelist (input filename).

Of course, each step really involves several substeps, and each substep includes a particular instruction to the underlying operating system.

Remember that the shell itself is not Unix -- just the user insterface to it. Unix is one of the first operating systems to make the user interface independent of the operating system.

### Scope of this file 

In this guide, you will learn about the shell. There are two ways of use the shell: as user interface and as programming environment.

### Features of the Korn Shell

Although the Bourne shell is still known as the "standard" shell, the Korn shell is also popular. In addition to its Bourne shell compatibility, it cinludes the best features of the C shell as well as several advantages of its own. It also runs more efficiently than any previous shell.

The Korn shell's command-line editing modes are the features that tend to attract people to it at first. With command-line editing, it's much eaier to go back and fix mistakes that it is with the C shell's history mechanism.

The other major Korn shell feature that is inteded mostly for interactive users is job control. Job control gives you the ability to stop, start, and pause any number of commands at the same time. This feature was borrowed almost verbatim from the C shell.

The rest of the shell's important advantages are mainly meant for shell customizers and programmers. It has many new options and variables for customization, and its programming features have been significantly expanded to include function definition, more control strucutures, built-in regular expressions and arithmetic, associative arrays, structured variables, advanced I/O control, and more.

### Command, Arguments, and Options

Shell command lines consist of one or more words, which are separated on a command line by spaces or TABs. The first word on the line is the command. The rest (if any) are arguments (also called parameters) to the command, which are names of things on which the command will act.

An Option is a special type of argument that gives the command specific information on what it is supposed to do. Options usually consist of a dash followed by a letter; we say "usually" because this is a convention rather than a hard-and-fast rule. Sometimes options take their own arguments.

### Files

Files are the most important types of "things" on any Unix system. A file can contain any kind of information, and there are different types of files. Four types are by far the most important:

#### Regular files
Also called text files; these contain readable characters. For example this guide was created from several sources plus human-readable markdown.

#### Executable files
Also called programs; these are invoked as commands. Some can't be read be humans; other -- the sell scripts that we love -- are just special text files. The shell itself is a (non human-readable) executable file.

#### Directories
Like folders that contain other files -- possible other directories (called subdirectories).

Let's review the most important concepts about directories. The fact that directories can contain other directories leads to a hierarchical structure, more popular known as a tree, for all files on a Unix system.

The top of the tree is a directory called "root" that has no name on the system. All files can be named by expressing their location on the system relative to root; such names are built by listing all the directory names (in order from root), separated by slashes (/), followed by the file's name. This way of naming files is called a full (or absolute) pathname.

##### The working directory
Of course, it's annoying to have to use full pathnames whenever you need to specify a file, so there is also the concept of the working directory (cometimes called the current directory), which is the directory you are "in" at any given time. If you give a pathname with no leading slash, the location of the file is worked out relative to the working directory. Such pathnames are called **relative** pathnames; you'll use them much more often than full pathnames.

When you log in to the system, your working directory is initually set to a special directoty caled your home directory. System administrators often set up the system so that everyone's hope directory name is the same as their login name, and all home directories are contained in a common directory under root.

#### Symbolic links
A kind of "shortcut" from one place in the system's directory hierarchy to another.

### Input and Output
The standard input and output scheme of Unix has to be on the short list of ideas, along with such classic innovations as the LISP language.

The Unix I/O scheme is based on two dazzlingly simple ideas. First, Unix file I/O takes the form of arbitrarily long sequences of characters (bytes). In contrast, file systems of older vintage have more complicated schemes (e.g "block", "record", "card image", etc) Second, everything on the system that produces or accepts data is treated as a file; this includes hardware devices like disk drivers and terminals. Order systems treated every device differetly. Both of these ideas have made systems programmers' lives much more pleasant.

#### Standard I/O

