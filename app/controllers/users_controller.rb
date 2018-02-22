class UsersController < ApplicationController

  def users_create_action
    user = User.new(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    if user.save
      render json: {message:"You're now signed up!"}, status :created
    else 
      render json: {errors: "user.errors.full_messages"}, status: :bad_request
    end
  end

end