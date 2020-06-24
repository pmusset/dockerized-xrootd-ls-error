FROM centos:7

COPY xrootd-stable-slc7.repo /etc/yum.repos.d/xrootd-stable-slc7.repo

RUN  yum install --nogpg -y epel-release\
  && yum install --nogpg -y xrootd-server\
  && mkdir /tmp/data\
  && chown -R xrootd:xrootd /tmp/data\
  && echo "hello" >> /tmp/data/file

COPY --chown xrootd:xrootd xrootd-config.cfg /etc/xrootd

USER xrootd:xrootd
CMD ["xrootd","-d","-c","/etc/xrootd/xrootd-config.cfg","-n","test-ls"]
