# The Shebang
echo '#!/bin/bash' > simple_script
echo 'echo I am a script' >> simple_script

# Make executable
chmod +x simple_script

# Cannot directly run simple_script
./simple_script

# See all paths
echo $PATH

# Set path
PATH=${PATH}:.
simple_script

# run raw bash
env -i bash --noprofile --norc

# Command substitution
hostname
echo 'My hostname is: $(hostname)'
echo "My hostname is: $(hostname)"
echo "My hostname is: `hostname`"

# The dollar bracket method
mkdir tmp
cd tmp
echo $(touch $(ls ..))
cd -
rm -rf tmp