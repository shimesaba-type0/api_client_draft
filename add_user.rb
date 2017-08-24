# coding: utf-8
require "faraday"
require "json"
require "pp"

# connection
base_url = "http://localhost"
port = "3000"
url = "#{base_url}:#{port}"
conn = Faraday.new(:url => url) do |faraday|
 faraday.request  :url_encoded             # form-encode POST params
 #faraday.response :logger                  # log requests to STDOUT
 faraday.headers['Content-Type'] = 'application/json'		# Set Content-Type
 faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end

### POST ###
# add user
puts "-----------------------------"
puts " Add user"
puts "-----------------------------"

res = conn.post "/users", {:name => "David", :age => 33, :description => "new type"}
body = JSON.parse res.body
pp body





