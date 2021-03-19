#!/bin/bash

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Stopping container~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker stop container
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Removing Images~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker rmi image
