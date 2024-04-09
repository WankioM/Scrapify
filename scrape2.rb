require 'httparty'
require 'nokogiri'

response = HTTParty.get('https://www.scrapethissite.com/pages/simple/')

if response.code==200
    puts "Success"
else
    puts " Error #{response.code}"
end

doc= Nokogiri::HTML4(response.body)
puts doc
country_containers = doc.css('div.col-md-4.country')
puts "next"

country_containers.each do |container|
    countryname= container.css('h3.country-name').text.strip
    puts countryname
    countryinfo= container.css('div.country-info')
    capital = countryinfo.css('span.country-capital').text.strip
    puts "Capital: #{capital}"
    population = countryinfo.css('span.country-population').text.strip
    puts "Population: #{population}"
    area = countryinfo.css('span.country-area').text.strip
    puts "Area: #{area}"

end