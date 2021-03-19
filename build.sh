#!/bin/bash

docker build -t image .

case ${1} in 
	"-off")	docker run -it -d --rm --name container -e AUTOINDEX=off -p 8080:80 -p 443:443 image
	;;
	*)	docker run -it -d --rm --name container -p 8080:80 -p 443:443 image
esac
