class Docente < ActiveRecord::Base
  belongs_to :Persona
  has_many :DocenteEstudios

  accepts_nested_attributes_for :DocenteEstudio
end
