docker build -t hw-client .
docker run -it -v $PWD:/root -v ~/.ssh/:/root/.ssh/ hw-client /bin/bash
docker rm $(docker ps -a | grep hw-client | cut -d " " -f 1)
