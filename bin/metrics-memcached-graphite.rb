#!/usr/bin/env ruby
#
#   memcached-graphite
#
# DESCRIPTION:
#   Push Memcached stats into graphite
#
# OUTPUT:
#   metric data
#
# PLATFORMS:
#   Linux
#
# DEPENDENCIES:
#   gem: sensu-plugin
#   gem: memcached
#   gem: socket
#
# USAGE:
#   #YELLOW
#
# NOTES:
#   #YELLOW
#   HitRatio percent and per second calculations
#
# LICENSE:
#   Copyright 2012 Pete Shima <me@peteshima.com>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/metric/cli'
require 'socket'
require 'timeout'

class MemcachedGraphite < Sensu::Plugin::Metric::CLI::Graphite
  option :host,
         short: '-h HOST',
         long: '--host HOST',
         description: 'Memcached Host to connect to',
         default: 'localhost'

  option :port,
         short: '-p PORT',
         long: '--port PORT',
         description: 'Memcached Port to connect to',
         proc: proc(&:to_i),
         default: 11_211

  option :scheme,
         description: 'Metric naming scheme, text to prepend to metric',
         short: '-s SCHEME',
         long: '--scheme SCHEME',
         default: "#{::Socket.gethostname}.memcached"

  def run
    Timeout.timeout(30) do
      TCPSocket.open(config[:host], config[:port]) do |socket|
        socket.print "stats\r\n"
        socket.close_write
        socket.read.each_line do |line|
          _, k, v = line.strip.split(' ', 3)
          next unless k

          output "#{config[:scheme]}.#{k}", v
        end
      end
    end

    ok
  end
end
