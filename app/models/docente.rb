class Docente < ActiveRecord::Base
  belongs_to :Persona
  has_many :DocenteEstudios
end
