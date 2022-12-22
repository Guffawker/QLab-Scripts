## LIVEFADECREATION
-Allows the user to create fades on the fly for an audio cue.

-Automatically creates a timeline group that all of the fades are placed into, with prewaits set at the time the user adjusted the fade.

-Only setup for the master input of the cue and not all inputs individual.

## Play Over Cue/Play Over Cleanup
-These two cues are used in conjunction with each other to allow the same auido file to be played multiple times over each other each time the cue is fired.

-The cue works by creating a new audio cue with the same target as the referenced cue, then plays that cue. It also sets the master level and duration of the cue to match that of the referenced cue in order to make the created cue match the common parameters of the referenced cue.

-For the initial setup, copy both scripts into two seperate script cues (due to the way it sets up, you'll wan the "Play Over Cue" script cue to be directly above the "Play Over Cleanup" script cue in your cue list!

-Once you fire it the first time, the cues will automatically fill out their Cue Numbers, Names, and Notes. From there all you need to do is change the XX in the Play Over Cue's name to the NUMBER of your target cue.
