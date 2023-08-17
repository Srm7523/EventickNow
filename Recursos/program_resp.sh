#!/bin/sh
cd /home/admeventick/app/app
tar -zcf /home/admeventick/resp/respaldo_$(date +%d%m%y_%H%M).tar.gz  --exclude="node_modules" *
cd /home/admeventick/resp
openssl aes-256-cbc -a -salt -in respaldo_$(date +%d%m%y_%H%M).tar.gz -out resp.tar.gz.enc -k V$!1D2K
rm respaldo_$(date +%d%m%y_%H%M).tar.gz
