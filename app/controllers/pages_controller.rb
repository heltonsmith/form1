class PagesController < ApplicationController
  def index
  end


  def create 
    correo = params[:email]
    ed = params[:edad]
    com = params[:comentario]
    nom = params[:nombre]
    ape = params[:apellido]
    @registro = User.create(email: correo, edad: ed, comment: com, nombre: nom, apellido: ape)
  end

  def dashboard
    if params[:email].present?
      @usuarios = User.where("email LIKE ?", "%#{params[:email]}%")
    else
      @usuarios = User.all
    end     
  end
end
