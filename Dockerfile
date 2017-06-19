FROM jenkins
USER root
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 python-software-properties software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

RUN apt-get update
RUN apt-get install -y docker-ce

EXPOSE 50000 8080
ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
