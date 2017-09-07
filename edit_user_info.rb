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


## edit info
# ('a'..'z').to_a.sample(5).join
word = ('a'..'z').to_a.sample(5).join
desc = "#{word} description"
age = (1..8).to_a.sample(2).join
uid = (1..9).to_a.sample(1)		# user id. This is temporaly.
new_user_info = { user: { age: age, description: desc } }

puts ---
puts uid
pp new_user_info.to_json
puts ---

### PUT ###
# update user
res = conn.put "/users/#{uid}", new_user_info

body = JSON.parse res.body
request_headers = JSON.parse res.env[:request_headers].to_json
puts res.env[:method]
pp request_headers

pp body
res.env.each do |k, v|
  puts "kye   = #{k}"
  pp   "value = #{v}"
end





