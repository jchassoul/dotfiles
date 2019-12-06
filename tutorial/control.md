## Process Handling
The Unix operating system built its reputation on a small number of concepts, all of which are simple yet powerful.

We've seen most of them by now: standard input/output, pipes, text-filtering utilities, the tree-structured filesystem, and so on. Unix also gained notoriety as the first small-computer operating system to give each user control over more than one process. We call this capability user-controlled multitasking.

### Process IDS and Job Numbers
Job numbers refer to background processes that are currently running under your shell, while process IDs refer to all processes currently running on the entire system, for all users. The term job basically refers to a command line that was invoked from your login shell.

### Job Control
Why should you care about process IDs or job numbers? Actually, you could probably get along fine in your life without ever referring to process IDs. Job numbers are more important, however: you can use them with the shell commands for job control.

You already know the most obvious way to contrl a job: you can create one in the background with &. Once a jo b is running in the background, you can let it run to completion, bring it into the foreground, or send it a message called a signal.

#### Foreground and background

