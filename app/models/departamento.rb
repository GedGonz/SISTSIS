class Departamento < ActiveRecord::Base
  belongs_to :Country
  has_many :Municipios
end
