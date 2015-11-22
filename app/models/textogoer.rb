class Textogoer < ActiveRecord::Base
  has_many :palabra
  has_many :texto ,:through =>:Palabra
end
