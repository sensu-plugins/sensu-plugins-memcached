# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed at [Our CHANGELOG Guidelines ](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md).
Which is based on [Keep A Changelog](http://keepachangelog.com/)

## [Unreleased]

## [0.1.3] - 2018-05-02
### Fixed
- fixed issues with install time due to unmaintained `memchached` gem and replaced with `dali` which has active development, is written in pure ruby (no c extensions), and is designed to be a drop in replacement (@bleything)

## [0.1.2] - 2017-10-31
### Changed
- updated location to our CHANGELOG guidelines (@majormoses)

### Fixed
- metrics-memcached-socket-graphite.rb: fixed issue around case sensitivity (@majormoses)

## [0.1.1] - 2017-05-14
### Fixed
- Fix rubygems deployment

## [0.1.0] - 2017-05-12
### Changed
- bringing gemspec standard gemspec based on skel
- there appears to be a missing changelog entry for 0.0.3 but its a bunch of misc stuff both before and after its release

## [0.0.2] - 2015-07-14
### Changed
- updated sensu-plugin gem to 1.2.0

## 0.0.1 - 2015-05-21
### Added
- initial release

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-memcached/compare/0.1.3...HEAD
[0.1.3]: https://github.com/sensu-plugins/sensu-plugins-memcached/compare/0.1.2...0.1.3
[0.1.2]: https://github.com/sensu-plugins/sensu-plugins-memcached/compare/0.1.1...0.1.2
[0.1.1]: https://github.com/sensu-plugins/sensu-plugins-memcached/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/sensu-plugins/sensu-plugins-memcached/compare/0.0.3...0.1.0
[0.0.3]: https://github.com/sensu-plugins/sensu-plugins-memcached/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/sensu-plugins/sensu-plugins-memcached/compare/0.0.1...0.0.2
