class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
      # will display message above take based on number of users 
      if @users.count > 5
        @some_text = "Great we have #{@users.count} users!"
      else
        @some_text = "We need more users!"  
      end  
  end

  # GET /users/1
  # GET /users/1.json
  def show
  # all the instances of board related to a certain user
  @boards = @user.boards  
 
  # if you call <%= @some_text%> in user_show file it will print a greeting to the page
    if @user.first_name = "Simone"
      @some_text = "Hello Simone!"
    
    else
      @some_text = "You're not Simone, but you're just as cute" 
    
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
     # have to add to permit last_name so it will allow us to save to database
      params.require(:user).permit(:first_name, :email, :last_name)
    end
end
