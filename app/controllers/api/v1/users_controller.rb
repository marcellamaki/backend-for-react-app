class Api::V1::UsersController < ApplcationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  private

  def user_params
    params.require(:data).permit(:email, :password_digest, :name)
  end

end
