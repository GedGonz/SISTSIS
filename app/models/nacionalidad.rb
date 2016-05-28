class Nacionalidad < ActiveRecord::Base
  belongs_to :Persona
  belongs_to :Country
end
