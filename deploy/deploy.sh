#!/bin/bash

export PATH="${TRAVIS_BUILD_DIR}/bin:$PATH"
export BUCKET_NAME="$ENV.becker.am"

rvm "$TRAVIS_RUBY_VERSION" do bundle exec s3_website push
