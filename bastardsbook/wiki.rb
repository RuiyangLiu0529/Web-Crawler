require "rubygems"
require "rest-client"
res = RestClient.get("http://en.wikipedia.org/wiki")
puts res.code
puts res.body