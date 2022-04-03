#!/bin/bash

n_screens=$(xrandr | grep '*' | wc -l)
if [ $n_screens -eq 1 ]
then
    ~/.config/scripts/multimonitor.sh
else
   ~/.config/scripts/singlemonitor.sh
fi
