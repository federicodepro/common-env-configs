## Adding a command line utility for SublimeText

Use this to enable the `subl` utility to work with files and projects on the command line or as an EDITOR for unix tools such as git.

## Symlink for Ubuntu

    sudo ln -s ~/Sublime\ Text\ 3/sublime_text /usr/bin/subl

See [.desktop](./sublime.desktop) entry for a shortcut for Unity Launcher.

## OS X Command Line

**NOTE** This assumes Sublime Text is placed in 'Applications', and that ~/bin is in your path

    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

## Using as EDITOR

    export EDITOR='subl -w'

The `-w` flag will make `subl` wait for the file to be closed before exiting.

## Package Sync (OS X)

To properly sync your installed packages across different machines, you actually do not want to sync the whole Packages/ and Installed Packages/ folders. The reason for this is that some packages have different versions for different operating systems. By syncing the actual package contents across operating systems, you will possibly run into broken packages.

The proper solution is to sync only the Packages/User/ folder. This folder contains the Package Control.sublime-settings file, which includes a list of all installed packages. If this file is copied to another machine, the next time Sublime Text is started, Package Control will install the correct version of any missing packages.

### .GitIgonre
Certain files and folders in the Packages/User/ folder change regularly, so you may want to add them to a .gitignore file. There is really no harm in syncing these, however some of them change on an hourly basis, which may result in having to run more Git commands. Examples include:

  *Package Control.last-run
  *Package Control.ca-list
  *Package Control.ca-bundle
  *Package Control.system-ca-bundle
  *Package Control.cache/
  *Package Control.ca-certs/

### On the first Machine
Using git you have to move the `User` folder to you config repo, and then symlink the versioned `User` folder to yout '/Pachages`folder.
  cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
  mkdir ~/repo/path/common-env-configs/sublime
  mv User ~/repo/path/common-env-configs/sublime
  ln -s ~/repo/path/common-env-configs/sublime/User

### On other Machine(s)
***Note:*** These instructions will remove your User/ folder and all contents!
  cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
  rm -r User
  ln -s ~/repo/path/common-env-configs/sublime/User

## Options

**NOTE** these are all accessible via `subl --help`

    Usage: subl [arguments] [files]         edit the given files
       or: subl [arguments] [directories]   open the given directories
       or: subl [arguments] -               edit stdin

    Arguments:
      --project <project>: Load the given project
      --command <command>: Run the given command
      -n or --new-window:  Open a new window
      -a or --add:         Add folders to the current window
      -w or --wait:        Wait for the files to be closed before returning
      -b or --background:  Don't activate the application
      -s or --stay:        Keep the application activated after closing the file
      -h or --help:        Show help (this message) and exit
      -v or --version:     Show version and exit

    --wait is implied if reading from stdin. Use --stay to not switch back
    to the terminal when a file is closed (only relevant if waiting for a file).

    Filenames may be given a :line or :line:column suffix to open at a specific
    location.


Please refer to [the official documentation](http://www.sublimetext.com/docs/3/osx_command_line.html) in case of snafu.


## Handy shortcuts

### Join lines

    Cmd + J
    Ctrl + J

### Swap lines

Because copypasta needs a break from time to time.

    Ctrl + Cmd + Up/Down
    Ctrl + Shift + Up/Down

### Cloning lines

    Ctrl + Shift + D

### Capitalize!

    Cmd + K, Cmd + U (upcase)
    Cmd + K, Cmd + L (lowcase)

    Ctrl + K, Cmd + U (upcase)
    Ctrl + K, Cmd + L (lowcase)

### Sort / Alphabetical sort

Troz!

    F5
    Cmd + F5 (Capital first)

    F9
    Ctrl + F9 (Capital first)

### Comment / Block comment

    Cmd + /
    Cmd + Opt +/

    Ctrl + /
    Ctrl + Shift + /

### Block wrapping

    Cmd + Opt + Q
    Alt + Q