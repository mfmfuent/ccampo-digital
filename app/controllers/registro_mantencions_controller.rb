class RegistroMantencionsController < ApplicationController
  before_action :set_registro_mantencion, only: %i[ show edit update destroy ]

  # GET /registro_mantencions or /registro_mantencions.json
  def index
    @registro_mantencions = RegistroMantencion.all
  end

  # GET /registro_mantencions/1 or /registro_mantencions/1.json
  def show
  end

  # GET /registro_mantencions/new
  def new
    @registro_mantencion = RegistroMantencion.new
  end

  # GET /registro_mantencions/1/edit
  def edit
  end

  # POST /registro_mantencions or /registro_mantencions.json
  def create
    @registro_mantencion = RegistroMantencion.new(registro_mantencion_params)

    respond_to do |format|
      if @registro_mantencion.save
        format.html { redirect_to @registro_mantencion, notice: "Registro mantencion was successfully created." }
        format.json { render :show, status: :created, location: @registro_mantencion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_mantencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_mantencions/1 or /registro_mantencions/1.json
  def update
    respond_to do |format|
      if @registro_mantencion.update(registro_mantencion_params)
        format.html { redirect_to @registro_mantencion, notice: "Registro mantencion was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_mantencion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_mantencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_mantencions/1 or /registro_mantencions/1.json
  def destroy
    @registro_mantencion.destroy
    respond_to do |format|
      format.html { redirect_to registro_mantencions_url, notice: "Registro mantencion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_mantencion
      @registro_mantencion = RegistroMantencion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_mantencion_params
      params.require(:registro_mantencion).permit(:nombre, :descripcion, :inspeccion_oficial, :fecha, :costo, :factura, :tipo_mantencions_id, :maquinaria_id)
    end
end
