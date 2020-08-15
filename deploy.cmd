@echo off

hugo --gc --minify --buildFuture

set Path=D:\Programs\cwRsync_5.5.0_x86_Free\bin;%Path%
rsync -az -O --delete --chown root:root --chmod=755 public/ "root@47.100.18.162:/usr/share/nginx/html/davycloud"
