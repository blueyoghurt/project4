class NgosController < ApplicationController
  before_action :set_ngo, only: [:show, :edit, :update, :destroy]

  # GET /ngos
  # GET /ngos.json
  def index
    @ngos = Ngo.all
  end

  # GET /ngos/1
  # GET /ngos/1.json
  def show
  end

  def profile
    ngo_user = NgoUser.find_by!(:user_id => @current_user.id)
    ngo = ngo_user.id
    @ngo = Ngo.find(ngo)
    respond_to do |format|
      format.json { render json: @ngo, :include => [:ngo_category]  }
    end
  end

  def search
    @ngos = Ngo.all
    respond_to do |format|
      format.json { render json: @ngos }
    end
  end


  # GET /ngos/new
  def new
    @ngo = Ngo.new
  end

  # GET /ngos/1/edit
  def edit
  end

  # POST /ngos
  # POST /ngos.json
  def create
    @ngo = Ngo.new(ngo_params)

    if params[:ngo][:logo]
      uploaded_file = params[:ngo][:logo].path
      @ngo.update(logo: Cloudinary::Uploader.upload(uploaded_file, :folder => "ngo/logo")["public_id"])
    end

    respond_to do |format|
      if @ngo.save
        format.html { redirect_to @ngo, notice: 'Ngo was successfully created.' }
        format.json { render :show, status: :created, location: @ngo }
      else
        format.html { render :new }
        format.json { render json: @ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ngos/1
  # PATCH/PUT /ngos/1.json
  def update


    respond_to do |format|
      if @ngo.update(ngo_params)
        if params[:ngo][:logo]
          uploaded_file = params[:ngo][:logo].path
          @ngo.update(logo: Cloudinary::Uploader.upload(uploaded_file, :folder => "ngo/logo")["public_id"])
        end
        format.html { redirect_to @ngo, notice: 'Ngo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ngo }
      else
        format.html { render :edit }
        format.json { render json: @ngo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ngos/1
  # DELETE /ngos/1.json
  def destroy
    @ngo.destroy
    respond_to do |format|
      format.html { redirect_to ngos_url, notice: 'Ngo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngo
      @ngo = Ngo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ngo_params
      params.require(:ngo).permit(:name, :address, :telephone, :website, :description, :logo, :ngo_category_id)
    end
end
