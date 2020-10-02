#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    19.03
# Website           https://www.leadstec.com
# Copyright         (C) 2020 LEADSTEC Systems. All rights reserved.
#
ARG arch=
FROM leadstec.tencentcloudcr.com/leadstec/alpine${arch}:3.12.0
ARG version=12
ARG build=dev

LABEL version="${version}-${build}" \
    description="NodeJS image for VCubi platform" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables
ENV NODEJS_VERSION="${version}"

# install packages
RUN apk --update add make git nodejs nodejs-npm && \
#    npm config set registry https://registry.npm.taobao.org && \
#    npm install -g npm && \
#    npm --force cache clean && \
    rm -fr /tmp/* && rm /var/cache/apk/*

# addinstall/startup scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

# EXPOSE 3000
