class Asignatura < ActiveRecord::Base
	has_many :Regimenasignaturas
	has_many :Regimes through: :Regimenasignaturas
end
