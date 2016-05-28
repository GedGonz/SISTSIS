class Persona < ActiveRecord::Base
  belongs_to :Municipio
  has_many :Nacionalidads
  has_one :Estudiante
  has_one :Docente
  has_many :Padres
  has_one :Usuario
end
