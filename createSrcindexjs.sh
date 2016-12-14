>./$@/client/src/index.js
cat >./$@/client/src/index.js <<EOL
import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App/index.js';


ReactDOM.render(
  <App />,
  document.getElementById('root')
);

EOL

cat ./$@/client/src/index.js
