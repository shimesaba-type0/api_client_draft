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

### GET ###
# all users
puts "-----------------------------"
puts " Get all users"
puts "-----------------------------"

res = conn.get "/users"
body = JSON.parse res.body
pp body

puts "-----------------------------"
puts " Get user id=2"
puts "-----------------------------"

# get user info about id 2
res = conn.get "/users/2"
body = JSON.parse res.body
pp body




