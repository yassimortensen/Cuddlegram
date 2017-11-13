require 'nokogiri'
require 'open-uri'
require 'restclient'

html = open('https://websta.me/n/dogs.lovers')
doc = Nokogiri::HTML(html)
puts doc.css(".list-img").attribute('src')
