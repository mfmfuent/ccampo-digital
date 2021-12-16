class TipoMantencionsController < ApplicationController
  before_action :set_tipo_mantencion, only: %i[ show edit update destroy ]

  # GET /tipo_mantencions or /tipo_mantencions.json
  def index
    @tipo_mantencions = TipoMantencion.all
  end

  # GET /tipo_mantencions/1 or /tipo_mantencions/1.json
  def show
  end

  # GET /tipo_mantencions/new
  def new
    @tipo_mantencion = TipoMantencion.new
  end

  # GET /tipo_mantencions/1/edit
  def edit
  end

  # POST /tipo_mantencions or /tipo_mantencions.json
  def create
    @tipo_mantencion = TipoMantencion.new(tipo_mantencion_params)

    respond_to do |format|
      if @tipo_mantencion.save
        format.html { redirect_to @tipo_mantencion, notice: "Tipo mantencion was successfully created." }
        format.json { render :show, status: :created, location: @tipo_mantencion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_mantencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_mantencions/1 or /tipo_mantencions/1.json
  def update
    respond_to do |format|
      if @tipo_mantencion.update(tipo_mantencion_params)
        format.html { redirect_to @tipo_mantencion, notice: "Tipo mantencion was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_mantencion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_mantencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_mantencions/1 or /tipo_mantencions/1.json
  def destroy
    @tipo_mantencion.destroy
    respond_to do |format|
      format.html { redirect_to tipo_mantencions_url, notice: "Tipo mantencion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_mantencion
      @tipo_mantencion = TipoMantencion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_mantencion_params
      params.require(:tipo_mantencion).permit(:nombre)
    end
end
