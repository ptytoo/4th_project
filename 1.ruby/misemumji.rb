require 'httparty'

url = 'http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty?stationName=%EC%98%81%EB%93%B1%ED%8F%AC%EA%B5%AC&dataTerm=MONTH&numOfRows=100&ServiceKey=sfE57qPQ5x1eAXU41ftcyXYJZK5eKEONTGzz%2FdCe069VtqGX4UwcpLZbJhXSayA%2FtauuMhXPXttKeoxuafYWPQ%3D%3D'
response = HTTParty.get(url)
dust = response.first[1]["body"]["items"]["item"][1]["pm10Value"]

puts ("미세먼지 농도는 " + dust)
dust = dust.to_i
if dust>150
    puts "매우 나쁨"
elsif dust > 80
    puts "나쁨"
elsif dust > 30
    puts "보통"
else
    puts "좋음"
end