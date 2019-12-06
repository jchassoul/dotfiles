## Command-Line Editing
It's always possible to make mistakes when you type at a computer keyboard, but perhaps even more so when you are using a shell. Unix shell syntax is powerful, yet terse, full of odd characters, and not particularly mnemonic, making it possible to construct command lines that are as cryptic as they are complex.

But there are more than a few people who have wondered, "Why can't I edit my Unix command lines in the same way I can edit text with an editor?"

This is exactly what the Korn shell allows you to do.

Like vi, vi-mode has two modes of its own: input and control mode. The former is for typing commands; the latter is for moving around the command line and the history file. When you are in input mode, you can type commands and hit ENTER to run them. In addition, you have minimal editing capabilities via control characters.

### Finger Habits
To paraphrase the old adage, old finger habits die hard. In fact, that is the primary reason for the choices of vi and Emacs for the Korn shell's editing modes. If you are an experienced user of one of these editors, by all means use the corresponding Korn shell editing mode. If you are a vi wizard, you probably know how to navigate between any two points on a line a three keystrokes or less.
