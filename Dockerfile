#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    20.10
# Website           https://www.leadstec.com
# Copyright         (C) 2021 LEADSTEC Systems. All rights reserved.
#
FROM leadstec/alpine:3.12.3

LABEL description="NodeJS image for VCubi platform" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables

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
