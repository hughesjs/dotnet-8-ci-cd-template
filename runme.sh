#! /bin/bash

echo "Please enter your desired project name..."
read projectName

echo "There might be some errors listed here these are generally safe to ignore, renaming files and directories..."

echo $projectName
find . -iname "*test*" -exec rename test $projectName '{}' \;
find . -iname "*test*" -exec rename test $projectName '{}' \;
grep -rl test . | xargs sed -i "s/test/$projectName/g"
