#!/bin/bash
#!/bin/bash
cat >./$@/package.json <<EOL
{
  "name": "giveitatitle",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "babel": {
    "presets": [
      "es2015",
      "stage-0"
    ]
  },
  "scripts": {
    "start": "concurrently \"npm run server\" \"npm run client\"",
    "server": "babel-node app.js",
    "client": "babel-node startclient.js",
    "post-install": "cd client && npm install && cd ..",
    "makeit": "npm install && npm run post-install"
  },
  "repository": {
    "type": "git",
    "url": "add your own"
  },
  "author": "",
  "license": "ISC",
  "homepage": "add your own",
  "dependencies": {
    "babel-cli": "^6.18.0",
    "babel-core": "^6.18.2",
    "babel-preset-es2015": "^6.18.0",
    "babel-preset-stage-0": "^6.16.0",
    "bcrypt": "^1.0.1",
    "body-parser": "^1.15.2",
    "cookie-parser": "^1.4.3",
    "express": "^4.14.0",
    "express-session": "^1.14.2",
    "fs": "0.0.1-security",
    "mongo": "^0.1.0",
    "mongoose": "^4.7.2",
    "nodemailer": "^2.7.0",
    "passport": "^0.3.2",
    "passport-local": "^1.0.0"
  },
  "devDependencies": {
    "concurrently": "^3.1.0"
  }
}

EOL

cat ./$@/package.json
