class PuchasesController < ApplicationController
  before_action :set_puchase, only: [:show, :edit, :update, :destroy]

  # GET /puchases
  # GET /puchases.json
  def index
    @puchases = Puchase.all
  end

  # GET /puchases/1
  # GET /puchases/1.json
  def show
  end

  # GET /puchases/new
  def new
    @puchase = Puchase.new
  end

  # GET /puchases/1/edit
  def edit
  end

  # POST /puchases
  # POST /puchases.json
  def create
    @puchase = Puchase.new(puchase_params)

    respond_to do |format|
      if @puchase.save
        format.html { redirect_to @puchase, notice: 'Puchase was successfully created.' }
        format.json { render :show, status: :created, location: @puchase }
      else
        format.html { render :new }
        format.json { render json: @puchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puchases/1
  # PATCH/PUT /puchases/1.json
  def update
    respond_to do |format|
      if @puchase.update(puchase_params)
        format.html { redirect_to @puchase, notice: 'Puchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @puchase }
      else
        format.html { render :edit }
        format.json { render json: @puchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puchases/1
  # DELETE /puchases/1.json
  def destroy
    @puchase.destroy
    respond_to do |format|
      format.html { redirect_to puchases_url, notice: 'Puchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puchase
      @puchase = Puchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puchase_params
      params.require(:puchase).permit(:name, :cost)
    end
end
