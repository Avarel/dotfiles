#!/usr/bin/env sh

rsync \
    --exclude ".git/" \
    --exclude "*.x.*" \
    --exclude "README.md" \
    -rPz . ~