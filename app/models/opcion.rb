class Opcion < ActiveRecord::Base
  belongs_to :Modulo
  has_many :UsuarioOpcions
end
