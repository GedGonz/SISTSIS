class Estudiante < ActiveRecord::Base
  belongs_to :Persona
  has_many :Padres
  has_many :EstudianteEstudios
  has_many :EstudianteTrabajos
  has_one :Matricula
  accepts_nested_attributes_for :EstudianteEstudio
end
