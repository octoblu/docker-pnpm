FROM node:5
MAINTAINER Octoblu, Inc. <docker@octoblu.com>

RUN npm --silent install --global --depth 0 pnpm
