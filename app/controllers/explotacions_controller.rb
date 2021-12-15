class ExplotacionsController < ApplicationController
  before_action :set_explotacion, only: %i[ show edit update destroy ]

  # GET /explotacions or /explotacions.json
  def index
    @explotacions = Explotacion.all
  end

  # GET /explotacions/1 or /explotacions/1.json
  def show
  end

  # GET /explotacions/new
  def new
    @explotacion = Explotacion.new
  end

  # GET /explotacions/1/edit
  def edit
  end

  # POST /explotacions or /explotacions.json
  def create
    @explotacion = Explotacion.new(explotacion_params)

    respond_to do |format|
      if @explotacion.save
        format.html { redirect_to @explotacion, notice: "Explotacion was successfully created." }
        format.json { render :show, status: :created, location: @explotacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @explotacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explotacions/1 or /explotacions/1.json
  def update
    respond_to do |format|
      if @explotacion.update(explotacion_params)
        format.html { redirect_to @explotacion, notice: "Explotacion was successfully updated." }
        format.json { render :show, status: :ok, location: @explotacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @explotacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explotacions/1 or /explotacions/1.json
  def destroy
    @explotacion.destroy
    respond_to do |format|
      format.html { redirect_to explotacions_url, notice: "Explotacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explotacion
      @explotacion = Explotacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def explotacion_params
      params.require(:explotacion).permit(:nombre_explotacion, :rut, :email, :direccion, :telefono, :localidad, :comuna, :region, :pais, :thumbnail, :image, :nacional)
    end
end
