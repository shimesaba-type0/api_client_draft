# coding: utf-8
require "faraday"
require "faraday_middleware"
require "json"
require "pp"
require "optparse"

# Command line option
opt = OptionParser.new
opt.banner = "Usage: update_user_info.rb -i ID [-n NAME -a AGE -d DESCRIPTION]"
OPT = {}

opt.on("-i ID", "--id ID", Integer, "ID. (MUST)"){ |v|
  OPT[:id] = v
}
opt.on("-n [NAME]", "--name [NAME]", String, "Name. (default: #{OPT[:name]})"){ |v|
  OPT[:name] = v
}
opt.on("-a [AGE]", "--age [AGE]", Integer, "Age. (default: #{OPT[:age]})") { |v|
  OPT[:age] = v
}
opt.on("-d [DESCRIPTION]", "--desc [DESCRIPTION]", String, "Description. (default: #{OPT[:desc]})") { |v|
  OPT[:description] = v
}
opt.on("-h", "--help", "Show this message") {
  puts opt
  exit
}

if ARGV.length <= 2
  puts opt
  exit
end

begin
  opt.parse!(ARGV)
rescue OptionParser::InvalidOption => e
  puts "ERROR: #{e}"
  exit
rescue OptionParser::ParseError => e
  puts "EEROR: #{e}"
  exit
end

if OPT[:id].to_i <= 0 then
  puts "ERROR: InvalidArgument. You need user ID option."
  exit
end

## user_id
user_id = OPT[:id].to_s

## delete id
OPT.delete(:id)

## user info
user_info = {
  user: OPT
}

puts user_info

# connection
base_url = "http://localhost"
port = "3000"
url = "#{base_url}:#{port}"

conn = Faraday.new(:url => url) do |faraday|
  faraday.request :json
  #faraday.response :logger
  faraday.adapter Faraday.default_adapter
end


### POST ###
# add user
resource = "/users/#{user_id}"
res = conn.put resource, user_info

if res.success?
  body = JSON.parse res.body
  # request_headers = JSON.parse res.env[:request_headers].to_json
  puts "Request URL: #{res.env[:url]}"
  puts "Method: #{res.env[:method]}"
  puts "Status: #{res.env[:status]}"
  puts "Reason_phrase: #{res.env[:reason_phrase]}"
  pp "Response_headers: #{res.env[:response_headers].to_json}"
  pp body
  # pp request_headers
else
  message = {}
  res.env.eacch do |k, v|
    if ["url", "method", "status", "request", "request_headers",
        "reason_phrase", "response_headers"].include?(k.to_s)
      message[k.to_s] = v.to_s
    end
  end
  puts message
end






