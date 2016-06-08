class Persona < ActiveRecord::Base
  belongs_to :Municipio
  has_many :Nacionalidads
  has_one :Estudiante
  has_one :Docente
  has_many :Padres
  has_one :Usuario

  accepts_nested_attributes_for :Municipio
  accepts_nested_attributes_for :Nacionalidads
  accepts_nested_attributes_for :Estudiante
  accepts_nested_attributes_for :Docente
  accepts_nested_attributes_for :Padres
  accepts_nested_attributes_for :Usuario
end
