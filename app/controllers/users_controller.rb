class UsersController < ApplicationController
    
    def new
    end

    def create
        @user = User.create(user_params)
        # redirect_to controller: "users", action: "new" unless @user.save
        return redirect_to controller: "users", action: "new" unless @user.save
        session[:user_id] = @user.id
        redirect_to controller: "welcome", action: "home"
    end
  
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
  end