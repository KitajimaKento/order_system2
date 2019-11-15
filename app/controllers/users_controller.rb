class UsersController < ApplicationController
  protect_from_forgery
  skip_before_action :verify_authenticity_token #トークンキーをスキップしているので、他の何かでセキュアにしなければならない。
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: @users }
  end


  # GET /users/1
  # GET /users/1.json
  def show
    # @user = User.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded the post', data: @user }
  end


  #/users/condition/:login_ID
  # 条件で表示(パスワード以外で)
  def condition
    @user = User.where('login_ID = ?', params[:login_ID]) #.or
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: @user }
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    # byebug
      if @user.save
         render json: { status: 'SUCCESS', data: @user }
      else
        render json: { status: 'ERROR', data: @user.errors }
      end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
      if @user.update(user_params)
       render json: { status: 'SUCCESS', message: 'Updated the post' }
      else
        render json: { status: 'SUCCESS', message: 'Not updated' }
      end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if @user.destroy
    render :json => { status: 'SUCCESS', message: 'Deleted the post' }
    else
      render :json => { status: 'Error', message: 'Error post' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:login_ID, :password, :name, :email)
    end
end
