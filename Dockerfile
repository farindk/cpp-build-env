FROM ubuntu:hirsute
# RUN apt-get update # temporarily disabled because (probably): https://stackoverflow.com/questions/66319610/gpg-error-in-ubuntu-21-04-after-second-apt-get-update-during-docker-build

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git cmake gcc g++ zlib1g-dev libjpeg-dev libpng-dev libhpdf-dev libfreetype6-dev libzip-dev libosmesa6-dev libglu1-mesa-dev openssh-client bash curl autoconf automake libtool pkg-config m4 \
  qtbase5-dev qtmultimedia5-dev libqt5opengl5-dev libqt5svg5-dev qtconnectivity5-dev qtpdf5-dev libcurl4-openssl-dev libpugixml-dev
RUN git clone https://github.com/farindk/xlnt.git && \
    cd xlnt && \
    git submodule init && \
    git submodule update && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_INSTALL_PREFIX=/usr .. && \
    make install
CMD [ "/bin/bash" ]
ENTRYPOINT [""]
