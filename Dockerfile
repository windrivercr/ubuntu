### File autogenerated do no modify it 
FROM ubuntu:12.04
ENV LANG en_US.UTF-8

RUN  apt-get -y update &&  apt-get -y install libc6:i386 libc6-dev-i386 libncurses5:i386 texi2html chrpath diffstat subversion libgl1-mesa-dev libglu1-mesa-dev libsdl1.2-dev texinfo gawk gcc gcc-multilib help2man g++ git-core python-gtk2 bash diffutils xz-utils make file screen bzip2 wget ccache mc vim sudo byobu 

RUN rm /bin/sh -f && sudo ln -s /bin/bash /bin/sh
