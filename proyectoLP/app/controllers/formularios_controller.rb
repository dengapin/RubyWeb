class FormulariosController < ApplicationController
  def por_get
    @codigo = params[:codigo];
    if @codigo
      case @codigo
         when "FIEC04341"
            @materia = {:nombre => "Fundamentos de Programacion", :carrera => "Ing.Computacion"};
         when "FIEC05411"
            @materia = {:nombre => "Computacion y Sociedad", :carrera => "Ing.Computacion"};
         when "FIEC03012"
            @materia = {:nombre => "Estructuras de Datos", :carrera  => " Ing.Computacion"};
		 when "FIEC01552"
            @materia = {:nombre => "Lenguajes de Programacion", :carrera => "Ing.Computacion"};			
         when "FIEC06553"
            @materia = {:nombre => "Sistemas de Base de Datos", :carrera => " Ing.Computacion"};
         when "FIEC03046"
            @materia = {:nombre => "Ingenieria de Software I", :carrera  => "Ing.Computacion"};
		 when "FIEC03053"
            @materia = {:nombre => "Ingenieria de Software II ", :carrera => " Ing.Computacion"};
         when "FIEC04366"
            @materia = {:nombre => "Analisis de Algoritmos", :carrera  => "Ing.Computacion"};
         when "FIEC05421"
            @materia = {:nombre => "Graficos por computador II", :carrera  => "Ing.Computacion"};			
         else
            @materia = false;
         end
   end
  end

  def por_post
      @respuesta = false;
      if request.post?
		 @comentario = {
			 :nombre => params[:nombre],
			 :consulta => params[:comentario]
		 };
   end
  end
end
