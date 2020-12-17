FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git cmake gcc g++ zlib1g-dev libjpeg-dev libpng-dev libhpdf-dev libfreetype6-dev libzip-dev libosmesa6-dev libglu1-mesa-dev openssh-client bash curl autoconf automake libtool pkg-config m4 \
  qtbase5-dev qtmultimedia5-dev libqt5opengl5-dev libqt5svg5-dev
CMD [ "/bin/bash" ]
ENTRYPOINT [""]
