require 'httparty'

response = HTTParty.get('https://www.scrapethissite.com/pages/simple/')

if response.code==200
    puts response.body
else
    puts " Error #{response.code}"
end