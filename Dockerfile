FROM kalilinux/kali-linux-docker

LABEL version="1.0" \
      author="Mike Flynn" \
      description="Custom Kali Linux docker"

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list && \
    echo "kali-docker" > /etc/hostname && \
    set -x && \
    apt-get -yqq update && \
    apt-get -yqq dist-upgrade && \
    apt-get clean && \
    apt-get install -yqq vim telnet nmap metasploit-framework sqlmap wpscan grabber

WORKDIR /root

ENTRYPOINT service postgresql start && /bin/bash
