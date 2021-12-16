class TipoTrabajadorsController < ApplicationController
  before_action :set_tipo_trabajador, only: %i[ show edit update destroy ]

  # GET /tipo_trabajadors or /tipo_trabajadors.json
  def index
    @tipo_trabajadors = TipoTrabajador.all
  end

  # GET /tipo_trabajadors/1 or /tipo_trabajadors/1.json
  def show
  end

  # GET /tipo_trabajadors/new
  def new
    @tipo_trabajador = TipoTrabajador.new
  end

  # GET /tipo_trabajadors/1/edit
  def edit
  end

  # POST /tipo_trabajadors or /tipo_trabajadors.json
  def create
    @tipo_trabajador = TipoTrabajador.new(tipo_trabajador_params)

    respond_to do |format|
      if @tipo_trabajador.save
        format.html { redirect_to @tipo_trabajador, notice: "Tipo trabajador was successfully created." }
        format.json { render :show, status: :created, location: @tipo_trabajador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_trabajador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_trabajadors/1 or /tipo_trabajadors/1.json
  def update
    respond_to do |format|
      if @tipo_trabajador.update(tipo_trabajador_params)
        format.html { redirect_to @tipo_trabajador, notice: "Tipo trabajador was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_trabajador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_trabajador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_trabajadors/1 or /tipo_trabajadors/1.json
  def destroy
    @tipo_trabajador.destroy
    respond_to do |format|
      format.html { redirect_to tipo_trabajadors_url, notice: "Tipo trabajador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_trabajador
      @tipo_trabajador = TipoTrabajador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_trabajador_params
      params.require(:tipo_trabajador).permit(:nombre)
    end
end
