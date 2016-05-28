class Asignatura < ActiveRecord::Base
	has_many :Regimens
	has_many :Regimenasignaturas through: :Regimens
end
