class EstudianteController < ApplicationController
  
  def index

  end

  def new
    @Persona=Persona.new
    @Padre=Padre.new
    @Estudiante=Estudiante.new
    @Estudio=EstudianteEstudio.new    
    @Padre.build_Persona
    @Estudiante.build_Estudianteestudio

  end

  def create
    @Persona=Persona.new
    @Padre=Padre.new
    @Estudiante=Estudiante.new
    @Estudio=EstudianteEstudio.new
    render plain: params[:persona].inspect

/
    @Persona.Segundonombre=paramEstu[:Segundonombre];
    @Persona.Primerapellido=paramEstu[:Primerapellido];
    @Persona.Segundoapellido=paramEstu[:Segundoapellido];
    @Persona.Edad=paramEstu[:Edad];
    @Persona.Tiposanguineo=paramEstu[:Tiposanguineo];
    @Persona.Direccion=paramEstu[:Direccion];
    @Persona.Estadocivil=paramEstu[:Estadocivil];
    @Persona.Celular=paramEstu[:Celular];
    @Persona.Telefono=paramEstu[:Telefono];
    @Persona.Genero=paramEstu[:Genero];
    @Persona.Municipio_id=params[:Municipio][:id]; 
    @Persona.Cedula=paramEstu[:Cedula];
    @Persona.Estado=1; /
    @Field=paramEstu[:estudiante_attributes]["0"][:estudio_attributes]["0"][:Estudio]
    puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    p @Persona
    p @Field
    puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
   
  end

  def createf
    @Persona=Persona.new
    /
   render plain: params[:persona].inspect


    if @Persona.save

         render action: 'new'
    end
/
    @Persona=Persona.new(param);
    
    @Persona.Segundonombre=param[:Segundonombre];
    @Persona.Primerapellido=param[:Primerapellido];
    @Persona.Segundoapellido=param[:Segundoapellido];
    @Persona.Edad=param[:Edad];
    @Persona.Tiposanguineo=param[:Tiposanguineo];
    @Persona.Direccion=param[:Direccion];
    @Persona.Estadocivil=param[:Estadocivil];
    @Persona.Celular=param[:Celular];
    @Persona.Telefono=param[:Telefono];
    @Persona.Genero=params[:Genero];
    @Persona.Municipio_id=params[:Municipio][:id]; 
    @Persona.Cedula=param[:Cedula];
    @Persona.Estado=1;
    if @Persona.save
       render action: 'new'
    end
/
    puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    p @Persona

    puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/
  end

  def list
  end

  def paramEstu
    params.require(:persona).permit(:NumCarnet,:Primernombre,:Segundonombre,:Primerapellido,:Segundoapellido,
      :Edad,:Direccion,:Cedula,:Celular,:Telefono,:Tiposanguineo,:Municipio,:Genero,:Estadocivil,:estudiante_attributes => [:estudio_attributes=>[:Estudio,:Anno,:Presedencia,:tipoestudio]],
      :trabajo_attributes=>[:Lugartrabajo,:Cargo,:Tiempo,:Telefono,:Direcciontrabajo]);
  end
  def param
    params.require(:persona).permit(:Primernombre,:Segundonombre,:Primerapellido,:Segundoapellido,:Edad,:Direccion,:Cedula,:Tiposanguineo,:Estadocivil,:Celular,:Telefono,:Genero,:Municipio);
  end
end


