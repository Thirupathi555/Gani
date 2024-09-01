#!/bin/bash
echo "All varaiable passed to the script: $@"
echo "Number of variables passed: $#"
echo "script name: $0"
echo "current working directory: $PWD"
echo "curent user: $Home"
echo "PID of the script executing now: $$"
sleep 10 &
echo "PID of the script executing now: $!"

