class FitosanitariosController < ApplicationController
  before_action :set_fitosanitario, only: %i[ show edit update destroy ]

  # GET /fitosanitarios or /fitosanitarios.json
  def index
    @fitosanitarios = Fitosanitario.all
  end

  # GET /fitosanitarios/1 or /fitosanitarios/1.json
  def show
  end

  # GET /fitosanitarios/new
  def new
    @fitosanitario = Fitosanitario.new
  end

  # GET /fitosanitarios/1/edit
  def edit
  end

  # POST /fitosanitarios or /fitosanitarios.json
  def create
    @fitosanitario = Fitosanitario.new(fitosanitario_params)

    respond_to do |format|
      if @fitosanitario.save
        format.html { redirect_to @fitosanitario, notice: "Fitosanitario was successfully created." }
        format.json { render :show, status: :created, location: @fitosanitario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fitosanitario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitosanitarios/1 or /fitosanitarios/1.json
  def update
    respond_to do |format|
      if @fitosanitario.update(fitosanitario_params)
        format.html { redirect_to @fitosanitario, notice: "Fitosanitario was successfully updated." }
        format.json { render :show, status: :ok, location: @fitosanitario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fitosanitario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitosanitarios/1 or /fitosanitarios/1.json
  def destroy
    @fitosanitario.destroy
    respond_to do |format|
      format.html { redirect_to fitosanitarios_url, notice: "Fitosanitario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitosanitario
      @fitosanitario = Fitosanitario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fitosanitario_params
      params.require(:fitosanitario).permit(:nombre, :registro, :funcion, :fabricante, :fecha_caducidad, :ambito_utilizacion, :unidades, :litros_caldo_defecto, :cultivo, :dosis, :unidades_dosis, :periodo_seguridad, :ficha_tecnica, :actividads_id)
    end
end
