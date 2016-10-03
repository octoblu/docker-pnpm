FROM mhart/alpine-node:latest
MAINTAINER Octoblu, Inc. <docker@octoblu.com>

ENV NPM_CONFIG_LOGLEVEL error

RUN npm --silent install --global --depth 0 pnpm
