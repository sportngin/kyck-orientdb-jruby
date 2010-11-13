raise "Rubyhaze only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

$: << File.dirname(__FILE__)
$: << File.expand_path('../../jars/', __FILE__)

require 'java'
require 'orientdb-client-0.9.23'

module OrientDB

  def self.const_missing(missing)
    puts "[#{name}:const_missing] #{missing}"
    super
  end

end

require 'orientdb/ext'
require 'orientdb/version'
require 'orientdb/user'
require 'orientdb/schema'
require 'orientdb/database'
require 'orientdb/document'
require 'orientdb/oclass'
