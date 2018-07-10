#!/bin/bash

source config.ini

#configure Python
sed -E -i "s#(XYMONCLI += ')(.+?)(')#\1$XYMONCLI\3#" cgi/xymon-ack
sed -E -i "s#(XYMONCLI += ')(.+?)(')#\1$XYMONCLI\3#" cgi/xymon2json
sed -E -i "s#(CRITICAL += ')(.+?)(')#\1$CRITICAL\3#" cgi/xymon2json

#configure JS
sed -E -i "s#(XYMONURL += ')(.+?)(')#\1$XYMONURL\3#" js/main.js
sed -E -i "s#(XYMONACKURL += ')(.+?)(')#\1$XYMONACKURL\3#" js/main.js
sed -E -i "s#(XYMONJSONURL += ')(.+?)(')#\1$XYMONJSONURL\3#" js/main.js

#configure HTML
sed -E -i "s#(<title>)(.+?)(</title>)#\1$TITLE\3#" index.html
sed -E -i "s#(<h1 class=\"text-white\" id=\"t\">)(.+?)(</h1>)#\1$TITLE\3#" index.html
