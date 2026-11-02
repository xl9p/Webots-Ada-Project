FROM cyberbotics/webots:R2025a-ubuntu22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    ca-certificates \
    ssh \
    git \
    xz-utils \
    unzip \
    gdb \
    make \
    pkg-config \
    valgrind \
    graphviz \
    doxygen \
    curl \
    build-essential \
    python3 \
    python3-pip
RUN rm -rf /var/lib/apt/lists/*

RUN groupadd --gid 983 hostgroup

ADD alr-2.1.1-bin-x86_64-linux.tar.xz /opt/
ENV PATH="/opt/alr-2.1.1-bin-x86_64-linux/bin:${PATH}"
ENV PATH="/root/.alire/bin:/opt/alire/bin:${PATH}"

RUN alr install gnat_native
RUN alr install gprbuild
RUN alr install gnatcov
RUN alr install gnatprove

ENV DEBIAN_FRONTEND=

WORKDIR /workspace