#!/usr/bin/env sh
# -*- coding: utf-8 -*-

HTTP_PROXY=$1

if [[ ! -d "reveal.js" ]]; then
    git clone https://github.com/hakimel/reveal.js.git --config "http.proxy=${HTTP_PROXY}"
    cd reveal.js
    PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true npm install
fi
if [[ -d "reveal.js" ]];then
    cd reveal.js
    rm -R app
    ln -s ../app/ app
    rm index.html
    ln -s app/index.html index.html
fi
