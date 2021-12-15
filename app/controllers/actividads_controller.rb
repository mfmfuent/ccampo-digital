class ActividadsController < ApplicationController
  before_action :set_actividad, only: %i[ show edit update destroy ]

  # GET /actividads or /actividads.json
  def index
    @actividads = Actividad.all
  end

  # GET /actividads/1 or /actividads/1.json
  def show
  end

  # GET /actividads/new
  def new
    @actividad = Actividad.new
  end

  # GET /actividads/1/edit
  def edit
  end

  # POST /actividads or /actividads.json
  def create
    @actividad = Actividad.new(actividad_params)

    respond_to do |format|
      if @actividad.save
        format.html { redirect_to @actividad, notice: "Actividad was successfully created." }
        format.json { render :show, status: :created, location: @actividad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividads/1 or /actividads/1.json
  def update
    respond_to do |format|
      if @actividad.update(actividad_params)
        format.html { redirect_to @actividad, notice: "Actividad was successfully updated." }
        format.json { render :show, status: :ok, location: @actividad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividads/1 or /actividads/1.json
  def destroy
    @actividad.destroy
    respond_to do |format|
      format.html { redirect_to actividads_url, notice: "Actividad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad
      @actividad = Actividad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actividad_params
      params.require(:actividad).permit(:act_para, :trabajo, :fecha, :campo, :fitosanitario, :dosis, :cantidad, :litros_caldo, :plaga, :justifica_tratamiento, :numero_lote, :bodega, :det_med_no_quimica, :tipo_actuacion, :intensidad_actuacion, :fecha_actuacion, :trabajador, :maquina, :horas, :minutos, :notas)
    end
end
