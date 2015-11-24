class Palabra < ActiveRecord::Base
  belongs_to :texto
  belongs_to :textogoer
  has_many :relacions
  validates :text, uniqueness:true
end
