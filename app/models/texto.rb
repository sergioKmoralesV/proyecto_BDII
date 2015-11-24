class Texto < ActiveRecord::Base
  has_many :palabras
  has_many :textogoers, :through => :palabra
  has_many :relacions
  validates :nombre, :ruta, presence: true
  def self.search(query)
  # where(:title, query) -> This would return an exact match of the query
    words=query.split(' ')
    files_to_show=[]
    words.each do |word|
      word.upcase!
      palabra = Palabra.where(text:word).first
      if palabra
        if files_to_show.empty?
            palabra.relacions.each {|relac| files_to_show.push(relac.texto_id)}
        else
            files=[]
            palabra.relacions.each {|relac| files.push(relac.texto.id)}
            files_to_show = files_to_show & files
        end
      else
        files_to_show=[]
      end
    end
    result=[]
    files_to_show.each {|id| result.push(Texto.find(id))}
    result
  end
end
