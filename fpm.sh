#/bin/bash

set -x

YUM_CMD=$(which yum)
  APT_GET_CMD=$(which apt-get)
  #OTHER_CMD=$(which <other installer>)

 if [[ ! -z $YUM_CMD ]]; then
    yum -y install ruby-devel gcc
    yum -y install rubygems
    gem install fpm
 elif [[ ! -z $APT_GET_CMD ]]; then

apt-get -y update
apt-get -y install ruby-dev build-essential
gem install fpm --no-ri --no-rdoc

#elif [[ ! -z $OTHER_CMD ]]; then
#    $OTHER_CMD <proper arguments>
# else
#    echo "error can't install package $PACKAGE"
#    exit 1;
 fi
