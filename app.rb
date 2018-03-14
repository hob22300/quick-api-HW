require 'httparty'
require 'json'
require 'rubygems'
require 'pp'

#url = 'https://www.googleapis.com/books/v1/volumes?q=programing+ruby'
url = 'http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22'
response = HTTParty.get(url)
items = JSON.parse(response.body, {:symbolize_names => true})
#puts items[:items][0][:volumeInfo][:description]
puts items[:weather][2][3]
#this gives the main weather and a breif description