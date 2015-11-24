require 'mechanize'
require 'logger'
require 'cgi'
require 'time'

agent = Mechanize.new
agent.log = Logger.new 'mechanize.log'

f = File.open('public/downloads/words_script_result.txt', "r")
f.each_line do |line|
  elements = line.gsub(/[^0-9A-Za-z,]/i, '').split(',')
  word = elements[0]
  reps = elements[1]
  elements.delete_at(0)
  elements.delete_at(1)
  data = {'palabra[text]'=>word,'palabra[reps]'=>reps}
  agent.post('http://localhost:3000/palabras.json', data)
  elements.each do |file|
    all_words = JSON.parse agent.get('http://localhost:3000/palabras.json').body
    relacion = {'relacion[palabra_id]'=>all_words.last["id"],'relacion[texto_id]'=>file.to_i}

  end
  break
end
f.close
