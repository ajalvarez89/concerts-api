module ExceptionsManager extend ActiveSupport::Concern
  class NotValidToken < StandardError; end
  class TokenExpired < StandardError; end
  included do
    rescue_from ExceptionsManager::NotValidToken do |_error|
        render json: {mensaje: "¡Acceso denegado!. Token inválido."}, status: :unauthorized
    end
    rescue_from ExceptionsManager::TokenExpired do |_error|
        render json: {mensaje: "¡Acceso denegado!. Token expirado"}, status: :unauthorized
    end
  end
end