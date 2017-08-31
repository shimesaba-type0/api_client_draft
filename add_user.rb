# coding: utf-8
require "faraday"
require "faraday_middleware"
require "json"
require "pp"

# connection
base_url = "http://localhost"
port = "3000"
url = "#{base_url}:#{port}"

conn = Faraday.new(:url => url) do |faraday|
	faraday.request :json
	faraday.adapter Faraday.default_adapter
end


## sample user
# ('a'..'z').to_a.sample(5).join
sample_user = ('a'..'z').to_a.sample(5).join
age = (1..8).to_a.sample(2).join
s_user_info = { user: { name: "#{sample_user}", age: age, description: "#{sample_user} description" } }

### POST ###
# add user
res = conn.post "/users", s_user_info

body = JSON.parse res.body
request_headers = JSON.parse res.env[:request_headers].to_json
puts res.env[:method]
pp request_headers

pp body
res.env.each do |k, v|
  puts "kye   = #{k}"
  pp   "value = #{v}"
end





