## ETC CUE SYNC
-Queries an ETC lighting console using OSC to get a count of the number of cues in a list, then requests the cue number of each one from the console. Uses the data queried to create a network cue in QLab for each cue returned, with the correct osc string /eos/cue/X/fire to trigger the cue from QLab.

-Requires OSC over UDP setup on your ETC lighting console.

## ETCTCPCON FLAGGED
-Creates a TCP connection with an ETC lighting console using it's default TCP port (3032) using the socat shell command.

-Has the ability to run the connection internally in QLab or in an external Terminal window if QLab performance is a concern!

-Will automatically attempt to reestablish the TCP connection if it is ever interupted.

## ETCTCPCON (Non-Flagged)
-Provides the same functionality of the Flagged version, but does not have the option to attenmpt to reestablish the connection if the cue is flagged.

-There is no performance difference between the two, but I wanted to provide the option in case there are security concerns or anything with it attempting to reconnect automatically!
