#! /bin/sh
#地址


domain="o2o@115.28.208.154"

scp -r dist/static/*  ${domain}:/home/o2o/webroot/static/
scp -r dist/template/*  ${domain}:/home/o2o/ci/phpbase/newviews/templates/

domain2="o2o@112.126.72.144"

scp -r dist/static/*  ${domain2}:/home/o2o/webroot/static/
scp -r dist/template/*  ${domain2}:/home/o2o/ci/phpbase/newviews/templates/

domain="root@115.28.146.162"

scp -r dist/static/*  ${domain}:/home/o2o/static/
scp -r dist/template/*  ${domain}:/home/o2o/phpbase/newviews/templates/
