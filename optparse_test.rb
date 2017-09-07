# coding: utf-8
require 'optparse'

opt = OptionParser.new

# opt.on("-a") {|v| p v}
# opt.on("-b") {|v| p v}
# 
# opt.parse!(ARGV)
# p ARGV

# ruby sample.rb -a foo bar -b baz
# => true
#    true
#    ["foo", "bar", "baz"]

# parse() の場合、ARGVは変更されない。
# オプションを取り除いた結果は argv に設定される。
# argv = opt.parse(ARGV)
# p argv


# -----------
# OPT = {}
# opt.on("-a") {|v| OPT[:a] = v}
# opt.on("-b") {|v| OPT[:b] = v}
# 
# opt.parse!(ARGV)
# p ARGV
# p OPT
# 
# # ruby optparse_test.rb -a foo bar -b baz
# # ["foo", "bar", "baz"]
# # {:a=>true, :b=>true}

# -----------
opt.on("-a VAL") {|v| p v }
opt.on("-b") {|v| p v }

opt.parse!(ARGV)
p ARGV

# ruby optparse_test.rb
# "foo"
# true
# ["bar", "baz"]



