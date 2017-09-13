# coding: utf-8
require 'optparse'

opt = OptionParser.new
opt.banner = "Usage: optparse_test2.rb [options]"

OPT = {}
opt.separator ""
opt.separator "Specific Options"

opt.on("-n", "-name=NAME") {|v| OPT[:name] =  v }
opt.on("-a", "-age=AGE") {|v| OPT[:age] = v }
opt.on("-d", "-desc=DESCRIPTION") {|v| OPT[:desc] = v }

opt.separator ""
opt.separator "Common Options"

opt.on("-h", "-help", "Show this message") {|v| OPT[:help] = v }
if OPT[:help]
  puts usage
end

opt.parse!(ARGV)
p ARGV
p OPT

# ruby optparse_test2.rb --help
# Usage: optparse_test2 [options]
#     -name=NAME
#     -age=AGE
#     -desc=DESCRIPTION

# ruby optparse_test2.rb -n Adam -a 222 -d test
# []
# {:name=>"Adam", :age=>"222", :desc=>"test"}

# ruby optparse_test2.rb -n Adam -a 33
# []
# {:name=>"Adam", :age=>"33"}
