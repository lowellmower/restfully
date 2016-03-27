require 'net/http'
require 'uri'

require 'restfully/version'
require 'restfully/request'

module Restfully

	def self.version
		Restfully::VERSION
	end

	def self.get url, args = {}
		Request.get url, args
	end
	
end
