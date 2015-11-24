class Relacion < ActiveRecord::Base
  belongs_to :palabras
  belongs_to :textos
end
