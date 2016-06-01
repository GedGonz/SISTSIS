class Opcion < ActiveRecord::Base
  belongs_to :Modulo
  has_many :UsuarioOpcion 
  has_many :Usuario through: :UsuarioOpcion
end
