#!/bin/bash
cat >./$@/.gitignore <<EOL
node_modules
npm-debug.log
client/build
cra-server-ex.graffle
EOL

cat ./$@/.gitignore
