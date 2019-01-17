
#
# Ubuntu Dockerfile with WR Linux Environment
# Thu Jan 10 16:40:53 CST 2019
#
FROM ubuntu:10.04
ENV LANG en_US.UTF-8
RUN sed -i -e "s/archive.ubuntu.com/old-releases.ubuntu.com/g" /etc/apt/sources.list && apt-get -y update
RUN apt-get -y install ia32-libs libc6-i386 libc6-dev-i386 lib32ncurses5 texi2html chrpath diffstat subversion libgl1-mesa-dev libglu1-mesa-dev libsdl1.2-dev texinfo gawk gcc gcc-multilib help2man g++ git-core python-gtk2 bash diffutils xz-utils make file screen ccache mc vim sudo byobu 
RUN apt-get -y install wget curl
RUN wget http://ftp.gnu.org/gnu/bash/bash-5.0.tar.gz
RUN tar -xvf bash-5.0.tar.gz
RUN cd bash-5.0 && ./configure && make
RUN cd bash-5.0  && rm /bin/bash && cp ./bash /bin/bash
RUN rm -rf bash-5*
RUN update-alternatives --install /bin/sh sh /bin/bash 1 && update-alternatives --config sh
RUN apt-get -y install comerr-dev ss-dev tcl texlive-binaries unzip xsltproc
# Define default command.
CMD ["/bin/bash"]


