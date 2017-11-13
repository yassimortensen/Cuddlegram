require 'nokogiri'
require 'open-uri'

html = open('https://websta.me/n/dogs.lovers')
doc = Nokogiri::HTML(html)
images = doc.css(".list-img")
