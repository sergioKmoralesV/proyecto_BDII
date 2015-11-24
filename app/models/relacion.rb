class Relacion < ActiveRecord::Base
  belongs_to :palabra
  belongs_to :texto
end
