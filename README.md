# docker-mouffette

This builds a Docker container for the mouffette RSS-to-XMPP bot, which allows you to subscribe to, and monitor, RSS and Atom feeds.  The build pulls from the github account: http://github.com/memmothx/mouffette

Before building, edit the conf.xml file.  You should only need to edit the jid, host, and password lines.

I have this running on a Hypriot-based Docker instance, installed on a Raspberry Pi 2.

To build the container, run the following inside the same folder as all three files::

    docker build -t pg/mouffette .

Note that the above ends with "space period".

To run the container, run the following:

    docker run --name mouffette -t -i -d pg/mouffette

- Tim, 9 Apr 2016

