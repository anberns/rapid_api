class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login register]

  def login
    authenticate params[:email], params[:password]
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create 
    user = User.create(user_params)
    render json: user
  end

  def edit
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user 
  end

  def index
    #if params[:team_id]
      #users = Team.find(params[:team_id]).users
    #else
    users = User.all 
    #end
    render json: users
  end

  private

    def user_params
      params.permit(:name, :email, :password)
    end

    def authenticate(email, password)
      command = AuthenticateUser.call(email, password)
  
      if command.success?
        render json: {
          access_token: command.result,
          message: 'Login Successful'
        }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end
end
