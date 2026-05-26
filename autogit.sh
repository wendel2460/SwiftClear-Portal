#!/bin/bash

while inotifywait -r -e modify,create,delete .; do
    git add .
    git commit -m "Auto save $(date)"
    git push origin master
done
