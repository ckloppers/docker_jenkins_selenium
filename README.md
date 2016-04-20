Docker compose
==============
$ docker-compose up

To rebuild
$ docker-compose up --build


See doceker-compose.yml file 

Manual way
==========
In order to create the hub on our localhost, we need to pull and run container from Docker repository with selenium hub:

$ docker run -d ‐‐name selenium-hub -p 4444:4444 selenium/hub
This command will download and run hub container on our localhost. When container’s downlaod is complete, visit http://localhost:4444/grid/console, and you should see an empty grid console (if you create your docker machine with different address than standard, change localhost to choosen IP).

Now we will create two nodes, one with Firefox and second with Chrome. To download and run chrome container:

$ docker run -d -P ‐‐link selenium-hub:hub selenium/node-firefox
…and for Chrome:

$ docker run -d -P ‐‐link selenium-hub:hub selenium/node-chrome
We should have three docker containers running on our local docker machine. We can check that with:

$ docker ps


Scaling
=======

When our test base grows, two nodes can be far not enough. Luckily, docker-compose comes with great feature which allows to scale number of similar containers on the fly. If your two-nodes grid is running, and you want to increase the number of chrome nodes to three, enter command:

$ docker-compose scale chromenode=3


CLEAN UP Docker containers
==========================
$ docker stop $(docker ps -a -q)
