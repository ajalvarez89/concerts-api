class Api::V1::SessionsController < ApplicationController
  def login
    auth = Authentication.new(login_params)
    if(auth.authenticated)
      render json: {mensaje: "¡Inicio de sesión correcto!", token: auth.generate_token}, status: :ok
    else
      render json: {mensaje: "Correo o Contraseña incorrectos"}, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end