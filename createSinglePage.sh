#!/bin/bash
for i in $@
do
  if [[ "$i" != *"-"* ]]; then
    mkdir $i
    # create-react-app ./$i/client
    mkdir ./$i/models ./$i/routes
    touch ./$i/.gitignore ./$i/app.js ./$i/package.json ./$i/startclient.js
    touch ./$i/routes/default.js ./$i/routes/index.js
    touch ./$i/models/default.js
    . ./createSinglePageAltergitignore.sh $i
    . ./createSinglePageAlteringappjs.sh $i
    . ./createSinglePageAlteringpackagejson.sh $i
    . ./createSinglePageAlteringstartclientjs.sh $i
    . ./createSinglePageAlteringRoutesdefaultjs.sh $i
  fi
done
