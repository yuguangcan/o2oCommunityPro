#! /bin/sh
#地址


cp -r dist/static/*  /Users/yuguangcan/webserver/php/static/
cp -r dist/template/*  /Users/yuguangcan/webserver/php/community/templates/



domain="root@115.28.146.162"

scp -r dist/static/*  ${domain}:/home/o2o/static/
scp -r dist/template/*  ${domain}:/home/o2o/phpbase/newviews/templates/
