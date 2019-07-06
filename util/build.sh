#!/bin/bash

root=`pwd`
version=$1
home=~
force=$2

export NGX_BUILD_DISABLE_NO_POOL=1

ngx-build $force $version \
        --without-mail_pop3_module \
        --without-mail_imap_module \
        --without-mail_smtp_module \
        --without-http_upstream_ip_hash_module \
        --without-http_empty_gif_module \
        --without-http_memcached_module \
        --without-http_referer_module \
        --without-http_autoindex_module \
        --without-http_auth_basic_module \
        --without-http_userid_module \
        --add-module=$root/../lua-nginx-module \
        --add-module=$root $opts \
        --with-debug
