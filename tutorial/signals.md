## Signals
A signal is a message that one process sends to another when some abnormal event takes place or when it wants the othe other process to do something.

You're probably already confortable with the idea that one process can communicate with another through an I/O pipeline; think of a signal as another way for processes to communicate with each other.

Pipelines and signals were the only IPC mechanisms in early versions of Unix. More modern versions have additional mechanisms, such as sockets, named pipes, and shared memory.

### kill: The Full Story
The `kill` command is really mmisnamed. It should have been called sendsignal or something similar, since it sends signals to processes.
