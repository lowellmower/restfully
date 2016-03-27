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

	def self.post url, args = {}
		Request.post url, args
	end

	def self.get_stream url, file_path, args = {}
		Request.get_stream url, file_path, args
	end

	def self.post_stream url, file_path, args = {}
		Request.post_stream url, file_path, args
	end	

end
