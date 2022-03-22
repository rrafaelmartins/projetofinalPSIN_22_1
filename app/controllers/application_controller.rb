class ApplicationController < ActionController::API
    def current_user
        return nil if !auth_token || !decoded_payload
        User.find_by(id: decoded_payload[0]["user_id"])
    end

    def verify_authenticated
        render json: {message: "Você não está autenticado"}, status: 401 and return unless current_user
    end

    def verify_director_authenticated
        render json: {message: "Acesso Negado"}, status: 403 and return unless current_user.director?
    end

    def verify_course_coordinator_authenticated
        render json: {message: "Acesso Negado"}, status: 403 and return unless current_user.course_coordinator?
    end

    def headers
        request.headers
    end

    def auth_token
        headers["Auth-Token"]
    end

    def decoded_payload
        JsonWebToken::Base.decode(auth_token)
    end
    
end
