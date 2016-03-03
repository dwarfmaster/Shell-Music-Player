# Shell Music Player
`smp` is a basic music player. It will read the first line of a file, delete it
from the file and use a player to play it.

The file is called the playlist. By default, it is the file
`$HOME/smp_playlist`. The program will also look at the `$SMP_PLAYLIST`
variable. Finally, when invoked, the first argument will be understood as the
path to the playlist.

The player is a program which will receive the path to the music to play as its
first argument. It must exits only when the music has finished. By default,
the program will look for a `smp_player` on path. The program will also look
at the `$SMP_PLAYER` variable. Finally, when invoked, the second argument will
be understood as the player command.

