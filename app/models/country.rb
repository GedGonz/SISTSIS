class Country < ActiveRecord::Base
	has_many :Departamentos
	has_many :Nacionalidads
end
