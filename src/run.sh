#!/bin/bash


# Install sass on system globally http://sass-lang.com/install
# Add execute permission: chmod +x sass-run.sh
# For windows system simply install sass compiler and run command given below.


if [ "-h" == "$1" ]; then
    echo "Install sass on system globally http://sass-lang.com/install"
    echo "-watch: Run compiler in watch mode"
    echo "-build: Compile all files to CSS"
elif [ "-watch" == "$1" ]; then
    echo 'Running in watch mode for new styles...'
    echo '=========================================\n\n'
    sass --watch -t expanded sass/style.sass:css/style.css
elif [ "-build" == "$1" ]; then
    echo 'Generating production build...'
    echo '=========================================\n\n'
    sass -t compressed sass/style.sass:css/style.min.css
    echo 'Compiled'
else
    echo 'Compiling new styles...'
    sass -t expanded sass/style.sass:css/style.css
    echo 'Compiled'
fi
