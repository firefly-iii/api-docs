#!/bin/bash

# First
#cd /ff3/documentation/api-docs
sudo npm install -g diff2html-cli

#Then run the following command. v6.7.8 is the new version here, compared with old version 6.7.7

OLD=v6.7.7
NEW=v6.7.8 

diff -u dist/firefly-iii-$NEW-v1.yaml dist/firefly-iii-$OLD-v1.yaml | diff2html -i stdin -o stdout > dist/differences/$OLD-$NEW.html