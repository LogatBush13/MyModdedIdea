#!/bin/sh

set -e

java -version || echo "No version of java installed"

wget 'https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2859/forge-1.12.2-14.23.5.2859-installer.jar'

java -jar 'forge-1.12.2-14.23.5.2859-installer.jar' --installServer

rm 'forge-1.12.2-14.23.5.2859-installer.jar'
rm 'forge-1.12.2-14.23.5.2859-installer.jar.log'

java -jar 'forge-1.12.2-14.23.5.2859.jar' && sed -i -e 's/false/true/1' eula.txt

java -jar 'forge-1.12.2-14.23.5.2859.jar'
