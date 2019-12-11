# What's tmux?

Acknowledgement: https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/

Within one terminal window you can open multiple windows and split-views (called “panes” in tmux lingo). Each pane will contain its own, independently running terminal instance. This allows you to have multiple terminal commands and applications running visually next to each other without the need to open multiple terminal emulator windows.

On top of that tmux keeps these windows and panes in a session. You can exit a session at any point. This is called “detaching”. tmux will keep this session alive until you kill the tmux server.

This is incredibly useful because at any later point in time you can pick that session up exactly from where you left it by simply “attaching” to that session.

But tmux is not only helpful when working on a remote machine. Not only for its window management features but also for the session handling. Personally I find myself detaching from sessions when I’m switching context. I’ll just start a new session for my new task and attach to the old session whenever I want to continue with my old task.

You see that tmux basically offers two big features: Window management in your terminal and session management. If you are familiar with GNU Screen this is nothing new. Think of tmux as an easier-to-use and a little more powerful alternative to Screen (obviously I’m being opinionated here).

tmux is based on a client-server architecture. While this is rarely relevant, it’s helpful to understand how stuff works. The tmux server keeps track of all the running sessions. You will only ever work with the tmux client and create new sessions or connect to existing ones.


Acknowledgement: https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/

