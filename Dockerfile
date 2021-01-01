FROM ubuntu:20.04
RUN apt-get update && apt-get -y install --no-install-recommends \
        curl git python build-essential lsb-release ca-certificates gnupg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs


# RUN VERSION=node_8.x \
#     && DISTRO="$(lsb_release -s -c)" \
#     && echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" | tee /etc/apt/sources.list.d/nodesource.list \
#     && echo "deb-src https://deb.nodesource.com/$VERSION $DISTRO main" | tee -a /etc/apt/sources.list.d/nodesource.list \
#     && apt-get update \
#     && apt-get  -y install --no-install-recommends nodejs \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

RUN export STORJ_NETWORK=INXT && \
    git clone https://github.com/internxt/core-daemon && \
    cd core-daemon && \
    npm i && npm link


EXPOSE 53396
ENTRYPOINT ["/usr/bin/xcore"]
