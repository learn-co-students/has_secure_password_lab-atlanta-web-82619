class User < ApplicationRecord
    has_secure_password
    validate :password_match


    def password_match
        password == password_confirmation || password.present? and password_confirmation == nil
    end
end
