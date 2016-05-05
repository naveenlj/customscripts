#!/bin/bash

set -x

apt-get update
apt-get install build-essential
apt-add-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install ruby2.2 ruby2.2-dev
gem install bundler
gem install sfn


