#파일 명 바꾸기
#1. 폴더 안에 들어간다.
#2. 폴더 안을 돌면서 파일들의 이름을 가져온다.
#3. files라는 배열안에 바꾸고자 하는 모든 파일의 이름을 넣는다.
#4. 각각의 이름을 "samsung1.txt"로 변경한다.

Dir.chdir("src")
files =  Dir.entries(Dir.pwd).reject {|name|name[0] == "."}
files.each do |f|
    File.rename(f,"samsung"+f)
end


# Dir.foreach(Dir.pwd) do |name|
#     puts name
#     #File.rename(name,"amu_"+name)
# end
