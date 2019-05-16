class PaylasimsController < ApplicationController
  before_action :set_paylasim, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  # GET /paylasims
  # GET /paylasims.json
  def index
    @paylasims = Paylasim.all
  end

  # GET /paylasims/1
  # GET /paylasims/1.json
  def show
  end

  # GET /paylasims/new
  def new
    @paylasim = Paylasim.new
  end

  # GET /paylasims/1/edit
  def edit
  end

  # POST /paylasims
  # POST /paylasims.json
  def create
    @paylasim = Paylasim.new(paylasim_params)

    respond_to do |format|
      if @paylasim.save
        format.html { redirect_to @paylasim, notice: 'Paylasim was successfully created.' }
        format.json { render :show, status: :created, location: @paylasim }
      else
        format.html { render :new }
        format.json { render json: @paylasim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paylasims/1
  # PATCH/PUT /paylasims/1.json
  def update
    respond_to do |format|
      if @paylasim.update(paylasim_params)
        format.html { redirect_to @paylasim, notice: 'Paylasim was successfully updated.' }
        format.json { render :show, status: :ok, location: @paylasim }
      else
        format.html { render :edit }
        format.json { render json: @paylasim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paylasims/1
  # DELETE /paylasims/1.json
  def destroy
    @paylasim.destroy
    respond_to do |format|
      format.html { redirect_to paylasims_url, notice: 'Paylasim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paylasim
      @paylasim = Paylasim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paylasim_params
      params.require(:paylasim).permit(:baslik, :icerik, :resim)
    end
end
