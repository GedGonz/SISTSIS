class EstudianteController < ApplicationController
  
  def index

  end

  def new
    @Persona=Padre.all;
  end

  def createp
    respond_to do |format|
             format.html { render action: 'new' }
            format.js { }
    end
  end

  def createf

  end

  def list
  end
/
  def param
    params.require(:persona).permit(:NumCarnet,:Primernombre,:Segundornombre,:Primerapellido,:Segundoapellido,
      :Edad,:Direccionestu,:Cedula,:Celular,:Telefono,:tiposanguineo,:Estadocivil,:estudiante_attributes => [:estudiante_attributes=>[:estudio,:Anno,:Presedencia,:tipoestudio]],
      :estudiante_attributes=>[:Lugartrabajo,:Cargo,:Tiempo,:Telefono,:Direcciontrabajo],:cedulatutor1,:Nombretutor1,:Apellidotutor1,:cedulatutor2,:Nombretutor2,:Apellidotutor2);
  end
/
end
