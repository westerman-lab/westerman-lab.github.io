#!/bin/bash
# Local preview for the Westerman Lab site.
#
# Ruby 3.1 specifically: the github-pages gem pins Jekyll 3.x / Liquid 4.0.3,
# which calls String#tainted? — removed in Ruby 3.2. Homebrew's default `ruby`
# formula is too new. Install with: brew install ruby@3.1
#
# LC_ALL is set because the theme's SCSS contains non-ASCII characters and the
# old sass converter reads them using the shell locale.
set -e
export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
cd "$(dirname "$0")"
[ -d vendor/bundle ] || bundle install
exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 \
  --config _config.yml,_config.dev.yml "$@"
