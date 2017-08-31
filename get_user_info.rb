# coding: utf-8
require "faraday"
require "json"
require "pp"

### connection
# make url
base_url = "http://localhost"
port = "3000"
url = "#{base_url}:#{port}"

# connection
conn = Faraday.new(:url => url) do |faraday|
 faraday.request  :url_encoded             # form-encode POST params
 #faraday.response :logger                  # log requests to STDOUT
 faraday.headers['Content-Type'] = 'application/json'		# Set Content-Type
 faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end

### GET
# get user info about id 2
user_id = "2"
resource = "/users/#{user_id}"
res = conn.get resource
body = JSON.parse res.body
pp body




