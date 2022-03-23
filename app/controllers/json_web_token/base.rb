module JsonWebToken
    class Base
        SECRET = 'asodofighsadufhhngasasdgasdfgasdgasdfgafdgafgafdgadfgadfgadfgidjfasduougfasdofasdfas'
        def self.encode(payload)
            JWT.encode(payload, SECRET)
        end

        def self.decode(token)
            begin
                JWT.decode(token, SECRET)    
            rescue => exception
                return nil
            end          
        end
    end
end