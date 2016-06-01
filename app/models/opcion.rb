class Opcion < ActiveRecord::Base
  belongs_to :Modulo
  has_many :UsuarioOpcions
  has_many :Usuario through: :UsuarioOpcions
end
