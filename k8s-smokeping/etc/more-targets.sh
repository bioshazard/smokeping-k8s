#!/usr/bin/with-contenv bash

# Add to targets list
cat <<EOF >> /config/Targets

+ Custom
menu = Custom Sites
title = Custom Sites

++ Twitter
menu = Twitter
title = Twitter
host = twitter.com

EOF
