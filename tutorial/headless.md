# Running without a Display 
Headless software capable of working on a device without a graphical user interface. Such software receives inputs and provide output through over interfaces like the network common on servers and embedded devices.

A headless computer (a server) may be missing many of the system libraries that support the display of graphical interfaces. Software that expects these libraries may fail to start or even compile if such libraries are not present.

Software built on a headless machine must be built within command line tools only, without the aid of an IDE.

## Headless websites
Traditional websites have their own back-end and front-end (graphical user interface). All the pieces work with the same code base and communicate directly with each other, making the website as a whole. In a headless installation the fron-end is a stand-alone piece of software, which through message passing commmunicates with a back-end.

Both parts operate separately from each other, and is normal to place them on separete machines, creating a minimum version of a distributed system. The bridge between both parts is the communication protocol.

## X virtual framebuffer
A display server implementing the X11 display server protocol. In contrast to other display servers, Xvfb performs all graphical operations in virtual memory without showing any screen output. This virtual srver does not require the computer it is running on to have any kind of graphical adapter, a screen or any input device. Only a network layer is necessary.