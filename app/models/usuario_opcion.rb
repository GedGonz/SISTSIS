class UsuarioOpcion < ActiveRecord::Base
  belongs_to :Usuario
  belongs_to :Opcion
end
