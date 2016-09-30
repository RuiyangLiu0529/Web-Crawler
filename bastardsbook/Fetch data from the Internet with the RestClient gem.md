##Fetch data from the Internet with the Rest-Client gem
The first gem we'll try out is rest-client. This is how you install it:
```
gem install "rest-client"   
```  
**rest-client** provides a variety of methods to simplify the sending and retrieval of data such as webpages. The simplest method is get, which for our basic purposes, does about the same thing that the open method provided by open-uri (as we saw at the end of the previous chapter).

Here's how to fetch the Wikipedia homepage:

```
require "rest-client"
res = RestClient.get("http://en.wikipedia.org/wiki")
puts res.code
#=> 200

puts res.body
#=> <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
#=> "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
#=> <html lang="en" dir="ltr" class="client-nojs" xmlns="http://www.w3.org/1999/xhtml">
#=> <head> ...
```
*Here's a breakdown of the code:*

`require "rubygems"
`
The keyword require is how we bring in code libraries for our program to use. To access installed gems, we first require "rubygems"

`require "rest-client"
`
Here we require the gem we want to use, "rest-client". And just like that, we can start using the RestClient class.

`RestClient.get
`
The get method of the RestClient class simply retrieves a webpage from the address you pass it using the HTTP GET protocol. This is basically what your web browser does every time you give it a standard website address.

`code
`
The RestClient.get method returns an Object that contains a HTTP status code. You've probably heard of a 404 error, the status code indicating that a webpage is not at the specified URL. A 200 indicates a successful GET request.

`body
`
The RestClient response object also has a body method that contains the raw HTML or other content from the request.