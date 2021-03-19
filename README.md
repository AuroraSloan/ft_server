# ft_server
This is a sample nginx server that runs wordpress, phpMyAdmin, and an SQL database in a single docker container.

This sample server is SSL capable and is automatically run with an autoindex that can be disabled upon running the container. 

----
### Installation
```bash
https://github.com/AuroraSloan/ft_server.git
```

### Usage
Run the build.sh file to build the image and run the container.
```bash
bash build.sh
```
Now you can open an internet browser and proceed to localhost:8080. Since the SSL certificate it self-signed, you will need click 'advanced' and 'Accept the Risk and Continue' to access the above services.
Run the stop.sh file to stop the container and delete all related files.
```bash
bash stop.sh
```
