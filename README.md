## Sensu-Plugins-memcached

[![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-memcached.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-memcached)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-memcached.svg)](http://badge.fury.io/rb/sensu-plugins-memcached)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-memcached/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-memcached)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-memcached/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-memcached)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-memcached.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-memcached)

## Functionality

## Files
 * bin/check-memcached-stats
 * bin/metrics-memcached-graphite
 * bin/metrics-memcached-key-stats-graphite
 * bin/metrics-memcached-socket-graphite

## Usage

## Installation

Add the public key (if you haven’t already) as a trusted certificate

```
gem cert --add <(curl -Ls https://raw.githubusercontent.com/sensu-plugins/sensu-plugins.github.io/master/certs/sensu-plugins.pem)
gem install sensu-plugins-memcached -P MediumSecurity
```

You can also download the key from /certs/ within each repository.

#### Rubygems

`gem install sensu-plugins-memcached`

#### Bundler

Add *sensu-plugins-disk-checks* to your Gemfile and run `bundle install` or `bundle update`

#### Chef

Using the Sensu **sensu_gem** LWRP
```
sensu_gem 'sensu-plugins-memcached' do
  options('--prerelease')
  version '0.0.1.alpha.4'
end
```

Using the Chef **gem_package** resource
```
gem_package 'sensu-plugins-memcached' do
  options('--prerelease')
  version '0.0.1.alpha.4'
end
```

## Notes

[1]:[https://travis-ci.org/sensu-plugins/sensu-plugins-memcached]
[2]:[http://badge.fury.io/rb/sensu-plugins-memcached]
[3]:[https://codeclimate.com/github/sensu-plugins/sensu-plugins-memcached]
[4]:[https://codeclimate.com/github/sensu-plugins/sensu-plugins-memcached]
[5]:[https://gemnasium.com/sensu-plugins/sensu-plugins-memcached]
