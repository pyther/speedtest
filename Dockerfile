FROM alpine:latest
#RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
#    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk && \
#    apk add glibc-2.31-r0.apk && \
#    rm glibc-2.31-r0.apk
RUN wget -O speedtest.tgz 'https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz' && \
    tar xf speedtest.tgz speedtest && \
    rm speedtest.tgz && \
    mv speedtest /usr/local/bin
COPY speedtest-cli.json /root/.config/ookla/speedtest-cli.json

CMD ["speedtest"]
