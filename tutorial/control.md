## Process Handling
The Unix operating system built its reputation on a small number of concepts, all of which are simple yet powerful.

We've seen most of them by now: standard input/output, pipes, text-filtering utilities, the tree-structured file system, and so on. Unix also gained notoriety as the first small-computer operating system to give each user control over more than one process. We call this capability user-controlled multitasking.

### Jobs; Background, Foreground, Suspended
When one or more commands are typed together as a pipeline or as a sequence separated by semicolons, a single job is created by the shell consisting of these commands together as a unit.

Single commands without pipes or semicolons create the simplest jobs.

Usually, every line typed to the shell creates a job. If the metacharacter `&` is typed at the end of the commands, then the job is started as a background job. This means that the shell does not wait for it to complete but immediately prompts and is ready for another command. The job runs in the background at the same time that normal jobs, called foreground jobs, continue to be read and executed by the shell one at a time.

When a background job terminates, a message is typed by the shell telling you that the job has completed.

Jobs are recorded in a table inside the shell until they terminate. In this table, the shell remembers the command names, arguments and the process numbers of all commands in the job as well as the working directory where the job was started. Each job in the table is either running in the foreground with the shell waiting for it to terminate, running in the background, or suspended. Only one job can be running in the foreground at one time, but several jobs can be suspended or running in the background at once.

### Process IDs and Job Numbers
Job numbers refer to background processes that are currently running under your shell, while process IDs refer to all processes currently running on the entire system, for all users. 

The term job basically refers to a command line that was invoked from the shell.

### Job Control
You can use Job numbers with the shell commands for job control.

You already know the way to control a job: you can create one in the background with `&`. Once a job is running in the background, you can let it run to completion, bring it into the foreground, or send it a message called a signal.

#### Foreground and background
The built-in command `fg` brings a background job into the foreground. Normally this means that the job has control of your terminal or window and therefore is able to accept your input. In other words, the job begins to act as if you typed its command without the &.

If you have only one background job running, you can use `fg` without arguments, and the shell brings that job into the foreground. But if you have several jobs running in the background, the shell picjs the one that you put into the background most recently.

If you want a different job put into the foreround, you need to use the job's command name, preceded y  percent sing (`%`), or you can use its job number, also preceded by % or its process ID without a percent sign. If you don't remember which jobs are running, you can use the jobs command to list them.

How does all this work? Every time you run a job, the process(es) in the job are put into a new process group. Each process in a process group, besides its unique process ID number, also has a process group ID. The process group ID is the same as the process ID of the process group leader, which is one of the processes invoked as part of the job. (The last one in the pipeline, in fact.)
