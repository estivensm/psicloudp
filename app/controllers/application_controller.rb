class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


layout :layout_for_selection
protected
  def layout_for_selection
    if controller_name == 'sessions'  || controller_name == 'passwords' 
      'application'
    elsif controller_name == 'registrations'

        if action_name == "new" || action_name == "create"
            'application'
            else
            	'admin'
        end
    elsif (controller_name == 'home' and (action_name == "inicio")) 
      
   
    'home' 
     elsif (controller_name == 'home' and (action_name == "servicios" || action_name == "servicio" || action_name == "nosotros"|| action_name == "contactenos" || action_name == "pqrf" || action_name == "trabajemos" || action_name == "equipo" || action_name == "experiencias" || action_name == "experiencia" || action_name == "noticia" || action_name == "noticias")) 
      
   
    'page' 


      
    else
      'application'
  
    end
  end

end
