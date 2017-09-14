#!/usr/bin/env ruby; coding: utf-8
require "faraday"
require "faraday_middleware"
require "json"
require "pp"
require "optparse"

# class BadRequest < StandardError; end # 400 用
# class NotFound < StandardError; end # 404 用
# class ServerError < StandardError; end # 500 系と接続エラー用
# class TimeoutError < StandardError; end # タイムアウト用

# コマンドラインオプション
opt = OptionParser.new
opt.banner = "Usage: get_user_info.rb [options]"
OPT = {}

opt.on("-i", "--id=ID", String, "ID value.") {|v|
  OPT[:id] = v
}
opt.on("-h", "--help", "Show this message") {
  puts opt
  exit
}

begin
  opt.parse!(ARGV)
rescue OptionParser::InvalidOption => e
  puts "ERROR: #{e}"
  exit
rescue OptionParser::ParseError => e
  puts "ERROR: #{e}"
  exit
end


### connection
# make url
base_url = "http://localhost"
port = "3000"
url = "#{base_url}:#{port}"

# connection
conn = Faraday.new(:url => url) do |faraday|
  faraday.request :json
  # faraday.request  :url_encoded             # form-encode POST params
  # faraday.response :logger                  # log requests to STDOUT
  # faraday.headers['Content-Type'] = 'application/json'    # Set Content-Type
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end


### GET
user_id = OPT[:id]
resource = "/users/#{user_id}"
res = conn.get resource

if res.success?
  body = JSON.parse res.body
  pp body
else
  message = {}
  res.env.each do |k, v|
    if ["url", "method", "status", "request", "request_headers",
        "reason_phrase", "response_headers"].include?(k.to_s) then
      message[k.to_s] = v.to_s
    end
  end
  puts message
end


### Actually, I want to write like below.
# begin
# 	res = conn.get resource
# 	body = JSON.parse res.body
# 	pp body
# 
# 	case res.status
# 	when 400
# 		raise BadRequest, res.body # body に十分な情報が入っている物とする
# 	when 404
# 		raise NotFound, res.body
# 	when 500..599
# 		raise ServerError, res.body
# 	end
# rescue Faraday::Error::TimeoutError => e
# 	raise Timeout, e.message
# rescue Faraday::Error::ClientError => e	# ConnectionFailed でもいいが、親クラスである ClientError で全部拾ってしまう
# 	raise ServerError, e.message	# 500系と混ざってしまうので、もうちょい情報増やすか例外分けてもいいかも
# end




