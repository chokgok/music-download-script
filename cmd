#!/bin/bash

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
	echo "First parameter is the directory to download in."
	echo "Second parameter is the link to download from."
	echo "Third parameter is a y/n for if there are chapters in the video/music."
	echo "Run the command with no parameters and it will walk you through"
	echo "The command automatically detects if it is a playlist btw"
	exit 0
fi

DIR="$1"
LINK="$2"
CHAPTERS="$3"

# If there is no directory supplied (which is the first argument)
# ask the user for the directory path.
if [ -z "$1" ]; then
	echo "Enter directory to download in: "
	read DIR
fi

[ ! -d "$DIR" ] && sudo mkdir -pv "$DIR" # If directory doesn't exist, make it.

# CD into that (new) directory.
cd "$DIR"

# If there is no link supplied (which is the second argument)
# ask the user for the link.
if [ -z "$2" ]; then
	echo "Enter link to download from (preferably a playlist): "
	read LINK
fi

PLAYLISTOUTPUT=""
# Check if the link provided is a playlist or not.
if echo "$LINK" | grep "playlist"; then
	PLAYLIST="--yes-playlist"
	PLAYLISTOUTPUT="%(playlist_index)02d - "
else
	PLAYLIST=""
fi

if [ -z "$3" ]; then
	read -p "Are there chapters (y/N)? " -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		CHAPTERS="--split-chapters"
		OUTPUT="%(artist)s - %(title)s -- %(chapter)s.%(ext)s"
	else
		CHAPTERS=""
		OUTPUT="%(artist)s - %(title)s.%(ext)s"
	fi
elif [[ $3 =~ ^[Yy]$ ]]; then
	CHAPTERS="--split-chapters"
	OUTPUT="%(artist)s - %(title)s -- %(chapter)s.%(ext)s"
else
	CHAPTERS=""
	OUTPUT="%(artist)s - %(title)s.%(ext)s"
fi

# The actual command!!
sudo yt-dlp \
	--verbose \
	--output "${PLAYLISTOUTPUT}${OUTPUT}" \
	--abort-on-unavailable-fragment \
	${PLAYLIST} \
	--buffer-size 1M \
	${CHAPTERS} \
	--extract-audio \
	--audio-format mp3 \
	--audio-quality 320K \
	--embed-metadata --download-archive _songs.txt \
	"${LINK}"
