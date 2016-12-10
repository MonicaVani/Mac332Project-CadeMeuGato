class CastrationsController < ApplicationController
  before_action :set_castration, only: [:show, :edit, :update, :destroy]

  # GET /castrations
  # GET /castrations.json
  def index
    @castrations = Castration.all
  end

  # GET /castrations/1
  # GET /castrations/1.json
  def show
  end

  # GET /castrations/new
  def new
    @castration = Castration.new
  end

  # GET /castrations/1/edit
  def edit
  end

  # POST /castrations
  # POST /castrations.json
  def create
    @castration = Castration.new(castration_params)

    respond_to do |format|
      if @castration.save
        format.html { redirect_to @castration, notice: 'Castration was successfully created.' }
        format.json { render :show, status: :created, location: @castration }
      else
        format.html { render :new }
        format.json { render json: @castration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /castrations/1
  # PATCH/PUT /castrations/1.json
  def update
    respond_to do |format|
      if @castration.update(castration_params)
        format.html { redirect_to @castration, notice: 'Castration was successfully updated.' }
        format.json { render :show, status: :ok, location: @castration }
      else
        format.html { render :edit }
        format.json { render json: @castration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castrations/1
  # DELETE /castrations/1.json
  def destroy
    @castration.destroy
    respond_to do |format|
      format.html { redirect_to castrations_url, notice: 'Castration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castration
      @castration = Castration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def castration_params
      params.require(:castration).permit(:place, :price, :when)
    end
end
