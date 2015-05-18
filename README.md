docker-novnc
============

This is a minimal image which will help you run X server with openbox on the docker container and access it from ANY recent browser without requiring you to do any configuration on the client side.


## Use Cases

1. Provide system application accessible over the web easily. Lets say you want to demo a software which runs on your pc over internet without requiring the clients to install any softwares like Teamviwer,etc.

2. You can use this to create a simple use & throw linux envinronment with GUI over cloud or any VPS /Server or even at your laptop. 

Especially useful if you have to give access to your friends who come over for facebook/twittering at your PC. :)

## How to use
```
docker run -td -p 6080:6080 zerodivide1/docker-novnc

#Or if you like to build yourself
git clone https://github.com/zerodivide1/docker-novnc.git 
cd docker-novnc
docker build -t novnc .
docker run -td -p 6080:6080 novnc
```

Now visit 

http://kanaka.github.io/noVNC/noVNC/vnc.html 
and enter

Host as your Public IP of your docker host/server.
Post = 6080
Leave password as blank and click connect you should see a nice display within your browser, just right click and open terminal or firefox.

For access within lan / localhost : visit http://localhost:6080 or http://privateip:6080
if you are running it in a local docker host or lan ip . click connect. You are good to go.


## This is a minimal Image

This comes only with Firefox & Geany text editor installed if you'd like to have more softwares you can freely install them using
apt-get commands

ex: apt-get install libreoffice-base libreoffice-gtk libreoffice-calc

## Support

* http://docker.com for all the docker based support.


## Credits

* [NoVNC](http://kanaka.github.io/noVNC/)
* [Original docker-novnc project](https://github.com/paimpozhil/docker-novnc)
