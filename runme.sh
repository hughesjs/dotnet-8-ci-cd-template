#! /bin/bash

echo "Please enter your desired project name..."
read projectName

echo "There might be some errors listed here these are generally safe to ignore, renaming files and directories..."

find . -iname "*Placeholder*" -exec rename Placeholder $projectName '{}' \;
find . -iname "*Placeholder*" -exec rename Placeholder $projectName '{}' \;
grep -rl Placeholder . | xargs sex -i 's/Placeholder/$projectName/g'
