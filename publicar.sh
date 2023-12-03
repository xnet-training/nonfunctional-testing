#!/usr/bin/bash

if [[ -z $1 ]];
then
  echo "Especificar mensaje de cambio"
  exit 1
else
  MSG="$1"	
fi

echo "Publicando cambios a Github '$MSG'"
git add . --all
git commit -am "$MSG"
git push
