becker.am
=========

My personal website, built with the static site generator `cactus`.

[![Build Status](https://travis-ci.org/Cbeck527/becker.am.svg?branch=master)](https://travis-ci.org/Cbeck527/becker.am)

## Setup

```shell
cd becker.am
make

# serve the site locally
cactus serve

# generated HTML
ls .build/

# Copy to hosting service
aws s3 sync .build/ s3://www.becker.am
```
