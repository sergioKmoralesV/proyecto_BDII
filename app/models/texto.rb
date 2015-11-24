class Texto < ActiveRecord::Base
  has_many :palabras
  has_many :textogoers, :through => :palabra
  has_many :relacions
end
