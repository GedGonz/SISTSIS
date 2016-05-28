class Padre < ActiveRecord::Base
  belongs_to :Persona
  belongs_to :Estudiante
end
