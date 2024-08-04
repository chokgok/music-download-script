# chokgok's Music Download Script

Download music from YouTube playlists, videos with chapters, or just single videos. Spotify support coming soon.

---

## Prerequisites

Download and install [`yt-dlp`](https://github.com/yt-dlp/yt-dlp).

Make sure you have `grep` installed.

## Linux/MacOS

Just run the script `cmd.sh`!
Use `-h` or `--help` for... y'know, help.

## Windows

Run the script `cmd_win.sh` in one of the following:

- Git Bash (comes with installing [Git](https://git-scm.com/downloads) on Windows)
- [Cygwin](https://www.cygwin.com/)
- [MSYS2](https://www.msys2.org/)
- [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install) (WSL)

A native batch script is on the backburner while I figure out Spotify.

## Android

If you are using an Android phone, I recommend using Termux as a terminal emulator.
You can get Termux [here on F-Droid](https://f-droid.org/en/packages/com.termux/) or [here on GitHub](https://github.com/termux/termux-app/releases/tag/v0.118.1).
After that, follow [this guide](https://gist.github.com/cyrillkuettel/d63785cf5f4c00106ae215188c377515) for getting Termux all set up and `yt-dlp` installed.
