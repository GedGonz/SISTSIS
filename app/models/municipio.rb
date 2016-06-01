class Municipio < ActiveRecord::Base
  belongs_to :Departamento
  has_one :Persona
end
