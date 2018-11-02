#!/bin/sh

hugo && rsync -avz --delete public/ root@amor:/www/amorist