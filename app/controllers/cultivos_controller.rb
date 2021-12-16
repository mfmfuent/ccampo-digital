class CultivosController < ApplicationController
  before_action :set_cultivo, only: %i[ show edit update destroy ]

  # GET /cultivos or /cultivos.json
  def index
    @cultivos = Cultivo.all
  end

  # GET /cultivos/1 or /cultivos/1.json
  def show
  end

  # GET /cultivos/new
  def new
    @cultivo = Cultivo.new
  end

  # GET /cultivos/1/edit
  def edit
  end

  # POST /cultivos or /cultivos.json
  def create
    @cultivo = Cultivo.new(cultivo_params)

    respond_to do |format|
      if @cultivo.save
        format.html { redirect_to @cultivo, notice: "Cultivo was successfully created." }
        format.json { render :show, status: :created, location: @cultivo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cultivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cultivos/1 or /cultivos/1.json
  def update
    respond_to do |format|
      if @cultivo.update(cultivo_params)
        format.html { redirect_to @cultivo, notice: "Cultivo was successfully updated." }
        format.json { render :show, status: :ok, location: @cultivo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cultivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cultivos/1 or /cultivos/1.json
  def destroy
    @cultivo.destroy
    respond_to do |format|
      format.html { redirect_to cultivos_url, notice: "Cultivo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cultivo
      @cultivo = Cultivo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cultivo_params
      params.require(:cultivo).permit(:nombre, :fitosanitarios_id, :actividads_id)
    end
end
