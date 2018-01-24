FROM clearlinux:latest

ENV GOPATH /home/gopath
ENV PATH="/home/gopath/bin:${PATH}"
RUN mkdir -p /home/gopath/src/github.com/clearlinux/mixer-tools
COPY . / /home/gopath/src/github.com/clearlinux/mixer-tools/
RUN swupd bundle-add mixer go-basic c-basic dev-utils os-core-update-dev
RUN git config --global user.email "travis@example.com"
RUN git config --global user.name "Travis CI"
RUN clrtrust generate
RUN go get -u gopkg.in/alecthomas/gometalinter.v2
RUN gometalinter.v2 --install

ENTRYPOINT ["/bin/sh", "-c", "cd /home/gopath/src/github.com/clearlinux/mixer-tools && make && make install && make lint && make check && make batcheck"]
