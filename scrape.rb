require 'nokogiri'
require 'open-uri'

url= 'https://www.scrapethissite.com/pages/simple/'

begin
    content = open(url)
rescue StandardError => e
    puts "Error #{e.message}"
    exit
end

doc= Nokogiri::HTML(html_content)