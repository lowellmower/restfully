module Restfully
	class Request

		def self.create_uri url
			URI url
		end

		def self.get url, args = {}
			uri = create_uri url
			send_request uri: uri, method: __method__, params: args
		end

		def self.post url, args = {}
			uri = create_uri url
			send_request uri: uri, method: __method__, params: args
		end

		def self.get_stream url, file, args = {}
			uri = create_uri url
			File.open(file, 'w') {|f|
				f.write(self.get uri, args)
			}
		end

		def self.post_stream url, file, args = {}
			uri = create_uri url
			File.open(file, 'w') {|f|
				res = self.post uri, args
				f.write(res.body)
			}
		end		

		private

			def self.send_request args = {}
				case args[:method]
				when :get
					Net::HTTP.get args[:uri]
				when :post
					Net::HTTP.post_form args[:uri], args[:params]
				end			
			end
	# end-private
	end
end