class NgoUsersController < ApplicationController
  before_action :set_ngo_user, only: [:show, :edit, :update, :destroy]

  # GET /ngo_users
  # GET /ngo_users.json
  def index
    @ngo_users = NgoUser.all
  end

  # GET /ngo_users/1
  # GET /ngo_users/1.json
  def show
  end

  # GET /ngo_users/new
  def new
    @ngo_user = NgoUser.new
  end

  # GET /ngo_users/1/edit
  def edit
  end

  # POST /ngo_users
  # POST /ngo_users.json
  def create
    @ngo_user = NgoUser.new(ngo_user_params)

    respond_to do |format|
      if @ngo_user.save
        format.html { redirect_to @ngo_user, notice: 'Ngo user was successfully created.' }
        format.json { render :show, status: :created, location: @ngo_user }
      else
        format.html { render :new }
        format.json { render json: @ngo_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ngo_users/1
  # PATCH/PUT /ngo_users/1.json
  def update
    respond_to do |format|
      if @ngo_user.update(ngo_user_params)
        format.html { redirect_to @ngo_user, notice: 'Ngo user was successfully updated.' }
        format.json { render :show, status: :ok, location: @ngo_user }
      else
        format.html { render :edit }
        format.json { render json: @ngo_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ngo_users/1
  # DELETE /ngo_users/1.json
  def destroy
    @ngo_user.destroy
    respond_to do |format|
      format.html { redirect_to ngo_users_url, notice: 'Ngo user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngo_user
      @ngo_user = NgoUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ngo_user_params
      params.require(:ngo_user).permit(:ngo_id, :user_id)
    end
end
