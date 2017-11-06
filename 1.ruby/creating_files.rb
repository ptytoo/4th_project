# 1. 특정 폴더로 들어간다.
# 2. 파일을 생성한다.
# 3. 내용을 작성한다.


#30개의 파일을 만든다.
#1.txt ~ 30.txt 까지 만들고 
#파일 안의 내용은 "n번째 내용"

Dir.chdir("src")
# i=1
# while i<31
#     out_file = File.new(i.to_s+".txt", "w")
#     out_file.puts(i.to_s+"번째 내용")
#     out_file.close
#     i += 1
# end

# 30.times do |i|
#     i += 1
#     File.open(i.to_s+".txt","w") do |f|
#         f.write(i.to_s+"번째 내용")
#     end    
# end


