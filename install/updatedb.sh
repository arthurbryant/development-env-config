#!/bin/sh

if [ -e '/usr/libexec/locate.updatedb' ]; then
    # todo: check file exist before ln
    ln -sf /usr/libexec/locate.updatedb /usr/local/bin/updatedb
fi
