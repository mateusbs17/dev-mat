#!/bin/bash

cd ~/planner && \
git reset &&  git checkout master && \
git add -A && \
git commit -m "Auto commit for planner - $(date +%F)" && \
git push origin master