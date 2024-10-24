#!/bin/sh

for i in $(gh issue list -s all | awk '{print $1}'); do gh issue transfer $i RH; echo "$i transferred"; done
