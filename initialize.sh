#!/bin/bash
for i in $@
do
  if [[ "$i" != *"-"* ]]; then
    mkdir $i
    create-react-app ./$i/client
    mkdir ./$i/models ./$i/routes
    touch ./$i/.gitignore ./$i/app.js ./$i/package.json ./$i/startclient.js
    touch ./$i/routes/default.js ./$i/routes/index.js
    touch ./$i/models/default.js
    touch ./$i/client/src/Client.js
    . ./creategitignore.sh $i
    . ./createappjs.sh $i
    . ./createpackagejson.sh $i
    . ./createstartclientjs.sh $i
    . ./createRoutesDefaultjs.sh $i
    . ./createRoutesindexjs.sh $i
    . ./createModelsdefaultjs.sh $i
    . ./cSPAclientsrcClientjs.sh $i
    . ./cSPAclientpackagejson.sh $i
    mkdir ./$i/client/src/components
    mkdir ./$i/client/src/components/App
    mkdir ./$i/client/src/components/NotFound
    mkdir ./$i/client/src/components/Admin
    cp ./$i/client/src/App.js ./$i/client/src/components/App/index.js
    cp ./$i/client/src/App.css ./$i/client/src/components/App/style.js
    touch ./$i/client/src/components/NotFound/index.js ./$i/client/src/components/NotFound/style.css
    touch ./$i/client/src/components/Admin/index.js ./$i/client/src/components/Admin/style.css
    rm -r ./$i/client/src/App.css
    rm -r ./$i/client/src/App.js
    rm -r ./$i/client/src/App.test.js
    touch ./$i/client/src/routes.js
    rm -r ./$i/client/src/logo.svg
    mkdir ./$i/client/server
    touch ./$i/client/server/app.js ./$i/client/server/index.js
    . ./createSrcCompAppindexjs.sh $i
    . ./createSrcindexjs.sh $i
  fi
done
