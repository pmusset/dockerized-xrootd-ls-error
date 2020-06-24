# Dockerized XRootD issue

When XRootD is dockerized and with the hostname set as the same name as host machine, `xrdfs ls` from another machine doesn't work as the server sends back the ip adress and not the hostname

## Procedures
- To execute on the docker host:
```
docker build -t xrootd-test-ls-image .
docker run --hostname cc-escape-xcache-docker-test.in2p3.fr -p"1094:1094" xrootd-test-ls-image
```
- To execute from a remote client:
```
XRD_LOGLEVEL=Dump xrdfs cc-escape-xcache-docker-test.in2p3.fr ls /
```
