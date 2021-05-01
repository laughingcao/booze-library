class UsersController < ApplicationController

    get '/register' do
        erb :'users/new'
    end

    post '/register' do
       @user = User.create
       @user.email = params[:email]
       @user.password = params[:password]

       if @user.save
            redirect "/login"
       else
            erb :'users/new'
       end
    end

    get '/login' do
        erb :'users/login'
    end 

    post '/login' do
        @user = User.find_by(:email => params[:email])
        if @user && @user.authenticate(params[:password])
            session["user_id"] = @user.id
            redirect "/bottles"
        else
            redirect "/login"
        end
    end

    get '/logout' do
        session.clear
        redirect '/'
    end
end