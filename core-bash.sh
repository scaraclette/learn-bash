# Globbing example
touch file1 file2 file3
ls *
echo *

#Quoting
ls '*'
ls "*"
echo '*'
echo "*"

# Regex example
ls *1
ls file[a-z]
ls file[0-9]

# Dotfiles: dotfiles are hidden despite ls * or ls
touch .adotfile
mkdir .adotfolder
touch .adotfolder/file1 .adotfolder/.adotfile

# Rename files
rename -n 's/(.*)/new$1/' * 
# Rename does not exist in zsh

# basic variable
MYSTRING=astring
echo $MYSTRING
MYSENTANCE="A sentence"
MYSENTENCE_WITH_STRING="A sentence with a $MYSTRING in it."
MYSENTENCE_WITH_STRING_B='A sentence with a $MYSTRING in it.'

# Variables
MYGLOB=*
echo $MYGLOB
MYGLOB="*"
echo $MYGLOB
MYGLOB='*'
echo "$MYGLOB"
echo '$MYGLOB'
echo $MYGLOB

# Associative array
declare -A MYAA=([one]=1 [two]=2 [three]=3)

# Basic Function
function myfunc {
    echo Hello World '\n'
} 
# Call myFunc
myfunc

#Arguments tests
function myFunc1 {
    echo $1
    echo $2
}
myFunc1 "Hello World"
myFunc1 Hello World

# Variable scope
function myfunc2 {
    echo $myvar
}
myfunc2
myvar="Hi from oustide function"
myfunc2

# Local variable scope
function myfunc3 {
    local myvar="Hi from inside the function"
    echo $myvar
}
myfunc
echo $myvar
local myvar="Will this work?"

# Overwriting function
function cd() {
    echo 'No!'
}
cd ..
builtin cd ..
cd -
unset -f cd
cd /tmp
cd -
