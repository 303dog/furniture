class SessionsController < ApplicationController

    def new;end
  
    def create 
        user = User.find_by(email: params[:user][:email])
        if  user && user.authenticate(params[:user][:password][:email][:last_name][:first_name][:username])
            session[:user_id] = user.id 
            redirect_to users_path
        else
            @error = 'Something you entered did not match, try again.'
            render :new
        end
    end



    def destroy
        session.destroy
        redirect_to users_path
    end 

end