class Usuario < ActiveRecord::Base
  belongs_to :Persona
  belongs_to :Rol
  has_many :UsuarioOpcions
end
