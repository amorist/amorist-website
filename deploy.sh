#!/bin/sh

rm -rf public && hugo && rsync -avz --delete public/ root@amor:/www/amorist