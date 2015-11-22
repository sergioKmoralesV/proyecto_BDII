class Palabra < ActiveRecord::Base
  belongs_to :texto
  belongs_to :textogoer
end
