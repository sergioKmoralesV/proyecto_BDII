require 'mechanize'
require 'logger'
require 'cgi'
require 'time'

agent = Mechanize.new
agent.log = Logger.new 'mechanize.log'
textos = JSON.parse agent.get('http://localhost:3000/textos.json').body

textos.each do |texto|
    f = File.open('public/downloads/'+texto["ruta"], "r")
    f.each_line do |line|
      @words=Array.new
      @words=line.encode('UTF-8', :invalid => :replace).split(' ')
      File.open('public/downloads/result/'+texto["nombre"]+'_resp.txt', 'a') do |x|
          @words.each {|word| x.puts ((word.gsub(/\W/, '').upcase)+'|'+texto["id"].to_s)}
      end
    end
    f.close
end
