class Usuario < ActiveRecord::Base
  belongs_to :Persona
  belongs_to :Rol
  has_many :UsuarioOpcion 
  has_many :Opcions through: :UsuarioOpcion
end
