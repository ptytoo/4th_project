require 'httparty'
require 'nokogiri'

uri = "http://finance.naver.com/sise/"

response = HTTParty.get(uri) #Httparty를 통해 URL의 데이터를 받아옴
text = Nokogiri::HTML(response.body) #노코기리를 통해 예쁘게 만들어줌 
#Nokogiri::XML => xml parsing할 때 쓴다.
kospi = text.css('#KOSPI_now') #.css를 통해 셀렉터를 기준으로 요소를 검색한다.
puts kospi.text #.text를 쓰는 이유는 태그 안의 요소를 가져오기 위해서