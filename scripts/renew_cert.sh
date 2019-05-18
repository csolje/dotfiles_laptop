#!/bin/bash
 /sbin/service nginx stop && \
 ./certbot renew --standalone
 /sbin/service nginx start
