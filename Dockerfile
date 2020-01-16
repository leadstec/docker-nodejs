#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    19.03
# Copyright         (C) 2020 LEADSTEC Solutions. All rights reserved.
#
FROM leadstec/alpine:3.11.2
ARG version=12
ARG build=dev

LABEL version="${version}-${build}" \
    description="NodeJS image for VCubi" \
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
