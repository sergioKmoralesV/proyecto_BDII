f = File.open("Mockingjay.txt", "r")
f.each_line do |line|
  @words=Array.new
  @words=line.encode('UTF-8', :invalid => :replace).split(' ')
  File.open('resp.txt', 'a') do |x|
      @words.each {|word| x.puts (word.gsub(/\W/, '').upcase)}
  end
end
f.close
