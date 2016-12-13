#!/bin/bash
>./$@/client/package.json
cat >./$@/client/package.json<<EOL
{
  "proxy":"http://localhost:4000/",
  "name": "client",
  "version": "0.1.0",
  "private": true,
  "devDependencies": {
    "react-scripts": "0.7.0"
  },
  "dependencies": {
    "axios": "^0.15.3",
    "express": "^4.14.0",
    "express-session": "^1.14.2",
    "react": "^15.4.1",
    "react-dom": "^15.4.1",
    "classnames": "^2.2.5",
    "react-router": "^2.6.1"
  },
  "scripts": {
  "start": "react-scripts start",
  "build": "react-scripts build",
  "test": "react-scripts test --env=jsdom",
  "eject": "react-scripts eject"
},
"eslintConfig": {
  "extends": "./node_modules/react-scripts/config/eslint.js",
  "env": {
    "mocha": true
  },
  "rules": {
    "strict": 0
  }
}
}

EOL

cat ./$@/client/package.json
