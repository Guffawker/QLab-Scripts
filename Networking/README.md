## TCPCON FLAGGED
-Creates a TCP connection with a TCP server at the provided IP Address and port using the socat shell command.

-Has the ability to run the connection internally in QLab or in an external Terminal window if QLab performance is a concern!

-Will automatically attempt to reestablish the TCP connection if it is ever interupted.

## TCPCON (Non-Flagged)
-Provides the same functionality of the Flagged version, but does not have the option to attenmpt to reestablish the connection if the cue is flagged.

-There is no performance difference between the two, but I wanted to provide the option in case there are security concerns or anything with it attempting to reconnect automatically!
