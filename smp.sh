#!/usr/bin/sh

playlist=$1
if [ -z "$playlist" ]; then
    playlist=$SMP_PLAYLIST
fi
if [ -z "$playlist" ]; then
    playlist="$HOME/smp_playlist"
fi

player=$2
if [ -z "$player" ]; then
    player=$SMP_PLAYER
fi
if [ -z "$player" ]; then
    player="smp_player"
fi

while true; do
    # If there are music to play, play the first one.
    # Else wait for 5 seconds before checking again
    if [ -s "$playlist" ]; then
        # Get the music to play
        music=$(head -n 1 "$playlist")
        # Remove it from the playlist
        echo "$(tail -n +2 "$playlist")" > "$playlist"
        if [ "$music" = "quit" ]; then
            exit 0
        fi
        # Play it
        $player "$music"
    else
        sleep 5
    fi
done

