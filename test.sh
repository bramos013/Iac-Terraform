#!/bin/sh
dominio=

sleep 3
status_http=$(curl -sw %{http_code} -o /dev/null ${dominio})
echo "Domínio $dominio retornando status $status_http"

if [ $status_http -eq 200 ]; then
	echo "Passa na pipeline"	
fi