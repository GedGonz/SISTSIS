class Regime < ActiveRecord::Base
	has_many :Regimenasignaturas
	has_many :Asignaturas through: :Regimenasignaturas
end
