FROM fedora:latest
EXPOSE 4242
RUN yum update -y && yum upgrade -y && yum install -y git make gcc
RUN git clone https://github.com/nijakow/raven /home/admin/raven
RUN make -C /home/admin/raven/src
ENTRYPOINT ["/home/admin/raven/src/raven.exe", "/home/admin/melian/src"]
