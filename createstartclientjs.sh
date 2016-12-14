
#!/bin/bash

cat >./$@/startclient.js <<EOL
const args = [ 'start' ];
const opts = { stdio: 'inherit', cwd: 'client', shell: true };
require('child_process').spawn('npm', args, opts);
EOL

cat ./$@/startclient.js
