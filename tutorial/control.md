## Process Handling
The Unix operating system built its reputation on a small number of concepts, all of which are simple yet powerful.

We've seen most of them by now: standard input/output, pipes, text-filtering utilities, the tree-structured filesystem, and so on. Unix also gained notoriety as the first small-computer operating system to give each user control over more than one process. We call this capability user-controlled multitasking.

### Jobs; Background, Foreground, Suspended
When one or more commands are typed together as a pipeline or as a sequence separated by semicolons, a single job is created by the shell consisting of these commands together as a unit.

Single commands without pipes or semicolons create the simplest jobs.

Usually, every line typed to the shell creates a job. If the metacharacter `&` is typed at the end of the commands, then the job is started as a background job. This means that the shell does not wait for it to complete but immediately prompts and is ready for another command. The job runs in the background at the same time that normal jobs, called foreground jobs, continue to be read and executed by the shell one at a time.

When a background job terminates, a message is typed by the shell telling you that the job has completed.

### Process IDs and Job Numbers
Job numbers refer to background processes that are currently running under your shell, while process IDs refer to all processes currently running on the entire system, for all users. 

The term job basically refers to a command line that was invoked from the shell.

### Job Control
Why should you care about process IDs or job numbers? Actually, you could probably get along fine in your life without ever referring to process IDs. Job numbers are more important, however: you can use them with the shell commands for job control.

You already know the most obvious way to control a job: you can create one in the background with `&`. 

Once a job is running in the background, you can let it run to completion, bring it into the foreground, or send it a message called a signal.

#### Foreground and background

