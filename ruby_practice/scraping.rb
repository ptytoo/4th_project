require 'httparty'
require 'nokogiri'

uri = "http://music.naver.com/listen/top100.nhn?domain=TOTAL"
response = HTTParty.get(uri)
text = Nokogiri::HTML(response.body)
rankone = text.css('#content > div.NE\3d a\3a t1a > div._tracklist_mytrack.tracklist_table.tracklist_type1 > table > tbody > tr:nth-child(2) > td.name > a._title.title.NPI\3d a\3a track\2c r\3a 1\2c i\3a 19418979 > span')

puts ("1위 곡은: " + rankone.text)