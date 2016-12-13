#!/bin/bash

cat >./$@/client/src/Client.js <<EOL

const axios = require('axios')

var num = axios.get('/defaults').then(result => {
              console.log(result.data)
              return result.data;
          })
console.log(num, "num")
EOL

cat ./$@/client/src/Client.js
