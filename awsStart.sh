#!/bin/bash
##usage
## curl -sSL https://raw.githubusercontent.com/JoeY34kaze/mochimo_furgl/master/awsStart.sh | bash 
## A.B. 2018
git clone https://github.com/JoeY34kaze/mochimo_furgl
chmod -R a+rwx mochimo_furgl

cat << EOF > ~/runminer.sh
#/bin/bash
cd mochimo_furgl/mochimo/mochi/bin/
~/mochimo_furgl/mochimo/mochi/bin/gomochi d -t3 >> ~/mochi.log
EOF
chmod 777 ~/runminer.sh
screen -dmS Miner -c `~/runminer.sh`
