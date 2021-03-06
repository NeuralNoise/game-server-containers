#!/bin/bash
WORK_DIR="/home/gsc/server_files"
cd $WORK_DIR
if [ ! -f "$WORK_DIR/eula.txt" ]; then
  echo "Game doesn't appear to be installed. Beginning install, please wait..."
  /usr/bin/update
  echo "eula=true" >> $WORK_DIR/eula.txt
  echo "Install complete. Launching server now..."
fi
java -Xms1G -Xmx2G -jar $WORK_DIR/spigot*.jar --noconsole
