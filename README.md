# chokgok's Music Download Script

Download music from YouTube playlists, videos with chapters, or just single videos. Spotify support coming soon.

---

## Prerequisites

Download and install [`yt-dlp`](https://github.com/yt-dlp/yt-dlp).

Make sure you have `grep` installed.

## Usage

1. Download this script and place it in your music directory.
2. Run it according to your operating system below.
3. Enter the name of the directory you want the downloaded music to go in.
4. Enter the link to the playlist or video.
5. Answer Y/N if the video has chapter marks or not.
6. Sit back and relax while it downloads.

> [!NOTE]
> Instead of running the script and answering the questions one-by-one,
> you can instead run the script with three parameters enclosed in quotes.

### Three Parameters

```
/e/MUSIC
$ ./cmd.sh -h
First parameter is the directory to download in.
Second parameter is the link to download from.
Third parameter is a y/n for if there are chapters in the video/music.
Run the command with no parameters and it will walk you through
The command automatically detects if it is a playlist btw

/e/MUSIC
$ ./cmd.sh "Decalius - A Miserable Life" "https://www.youtube.com/watch?v=DEuhdR9Cf_E" n
mkdir: created directory 'Decalius - A Miserable Life'

...

/e/MUSIC
$ 
```

## Example Usage

### Single Video - Single MP3

```
/e/MUSIC
$ ./cmd.sh
Enter directory to download in:
Rick Astley - Never Gonna Give You Up
Enter link to download from (preferably a playlist)
https://www.youtube.com/watch?v=dQw4w9WgXcQ
Are there chapters (y/N)?

...

/e/MUSIC
$ 
```

### Playlist

```
/e/MUSIC
$ ./cmd.sh
Enter directory to download in:
good songs
mkdir: created directory 'good songs'
Enter link to download from (preferably a playlist):
https://www.youtube.com/watch?v=afpzKq0CqoI&list=PLjSER-WmwVtlfXh3rqwRP0lw5yaJUMt-d
Are there chapters (y/N)?

...

/e/MUSIC
$
```

### Single Video with Chapters - Multiple MP3

```
/e/MUSIC
$ ./cmd.sh
Enter directory to download in:
How to Disappear Completely - The Quietus (2024) - Full Album
mkdir: created directory 'How to Disappear Completely - The Quietus (2024) - Full Album'
Enter link to download from (preferably a playlist):
https://www.youtube.com/watch?v=-H1AbSWuesU
Are there chapters (y/N)? y

...

/e/MUSIC
$ 
```

### Example File Tree

```
E:\MUSIC\.
|   cmd.sh
|   cmd_win.sh
|
+---ambient and chill
+---Ambient Post Rock
+---basedworldbillionare
+---Earth 2 - Special Low Frequency Version (Full Album)
+---Extreme DSBM
+---How to Disappear Completely - Seraphim (2019)
+---itsover
+---madlove
+---monolith III - xenolith - full album (dark ambient)
+---Rock Mix
+---Sparklehorse Mix
+---The Drone Zone - Series One
+---The Drone Zone - Series Two
+---The Interloper Original Soundtrack - Volume 1
\---Tycho - The Science of Patterns
```

---

# Installation and Execution

## Linux/MacOS

Download the script `cmd.sh` into your music directory and run it using your favourite terminal emulator.

Use `-h` or `--help` for help using the script.

## Windows

Download the script `cmd_win.sh` into your music directory and run it with one of the following:

- Git Bash (comes with installing [Git](https://git-scm.com/downloads) on Windows)
- [Cygwin](https://www.cygwin.com/)
- [MSYS2](https://www.msys2.org/)
- [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install) (WSL)

Use `-h` or `--help` for help using the script.

A native batch script is on the backburner while I figure out Spotify.

## Android

If you are using an Android phone, I recommend using Termux as a terminal emulator.

You can get Termux [here on F-Droid](https://f-droid.org/en/packages/com.termux/) or [here on GitHub](https://github.com/termux/termux-app/releases/tag/v0.118.1).

After that, follow [this guide](https://gist.github.com/cyrillkuettel/d63785cf5f4c00106ae215188c377515) for getting Termux all set up and `yt-dlp` installed.

Using the script is the same process on [Linux/MacOS](#linuxmacos).
