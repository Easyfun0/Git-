require 'open-uri'

require "json"

url = "https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json"

result = URI.open(url).read
parsed_result = JSON.parse(result)
parsed_result.each do |site|
    puts site["sna"].gsub("YouBike2.0_", "")
end

# puts parsed_result