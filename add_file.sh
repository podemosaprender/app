#!/bin/sh

#INFO: crear un archivo en un repo desde CUALQUIER consola (sin clone, ni nada)

MSG=$1 
NAME=$2
REPO=$3
USR=$4

CONTENIDO='{"message": "mi nuevo commit message", "content": "'`echo -e "Esto si se puede leer\ny parece código" | base64 `'" }'

echo $CONTENIDO

curl "https://api.github.com/repos/$USR/$REPO/contents/$NAME" -u $USR -X PUT -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36' -H 'Content-type: application/json' --data-binary "$CONTENIDO"
