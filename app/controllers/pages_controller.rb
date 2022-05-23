class PagesController < ApplicationController
  def index
  end


  def create 
    correo = params[:email]
    ed = params[:edad]
    com = params[:comentario]
    User.create(email: correo, edad: ed, comment: com)
    @notice = "Registrado correctamente"
  end
end
