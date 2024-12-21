#!/bin/bash

git add .

commit_message="Auto-commit on $(date '+%Y-%m-%d %H:%M:%S')"

git commit -m "$commit_message"

git push 
