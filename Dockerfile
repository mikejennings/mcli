FROM alpine

RUN \
  apk update && \
  apk add curl bash bash-completion jq util-linux

ADD diagnostic-curl diagnostic-curl-marathon dicker mesos-cli marathon-cli /usr/local/bin/
ADD marathon-cli-completion dicker-completion mesos-cli-completion /usr/local/share/bash-completion/
ADD diagnostic-support /usr/local/share/
ADD docker-assets/bashrc /root/.bashrc

CMD ["/bin/bash"]

