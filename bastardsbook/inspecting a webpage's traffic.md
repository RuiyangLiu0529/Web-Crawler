##Inspecting a Webpage's Traffic
**Collecting What Wikipedia Considers The Most Relevant Suggested Search Terms for Each Letter of The Alphabet**

```
require 'rubygems'
require 'restclient'
require 'crack'
WURL = 'http://en.wikipedia.org/w/api.php?action=opensearch&namespace=0&suggest=&search='

('A'..'Z').to_a.each do |letter|
  resp = RestClient.get("#{WURL}#{letter}", 'User-Agent' => 'Ruby')
  arr = Crack::JSON.parse(resp)
  puts arr.join(', ')
  sleep 0.5
end
```

The get method can take in a number of arguments for headers that we want to include with our request. The headers contain information that your browser typically sends during a request. So in essence, adding headers programmatically to our get method call makes the Ruby script to seem more like a browser.

I've included the 'User-Agent' => 'Ruby' header because it seems that Wikipedia will refuse requests to scrapers that don't identify themselves. I could've claimed to be the Firefox browser, but it appears that just putting anything in that header will suffice.

** How to find the target data file **

It's easy to narrow down the candidates for the target data file. As I've mentioned before, XML and JSON are the most common data formats, and they are considered text files. When you're trying to find datafiles, it's best to start there first. Another clue will be the file size. Text files are usually pretty small. But if the Flash app contains a lot of data, then adjust your prediction accordingly. In this case, 50 entries of state summary data is not much text at all.

