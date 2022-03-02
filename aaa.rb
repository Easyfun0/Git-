# require "nokogiri"
require "open-uri？ㄥ？ㄥ"

# doc = Nokogiri::HTML(URI.open('https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json'))

# doc.css("li > string").each do |doc|
#     puts doc.content
# end


require "json"

ubike = "https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json"

result = open(ubike).read
parsed_result = JSON.parse(result)
parsed_result.each do |site|
    puts site["sna"].gaub("YouBike2.0_", "")
end
# result = JSON.parse(File.read('https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json'))

puts parsed_result