class TipoMaquinariaController < ApplicationController
  before_action :set_tipo_maquinarium, only: %i[ show edit update destroy ]

  # GET /tipo_maquinaria or /tipo_maquinaria.json
  def index
    @tipo_maquinaria = TipoMaquinarium.all
  end

  # GET /tipo_maquinaria/1 or /tipo_maquinaria/1.json
  def show
  end

  # GET /tipo_maquinaria/new
  def new
    @tipo_maquinarium = TipoMaquinarium.new
  end

  # GET /tipo_maquinaria/1/edit
  def edit
  end

  # POST /tipo_maquinaria or /tipo_maquinaria.json
  def create
    @tipo_maquinarium = TipoMaquinarium.new(tipo_maquinarium_params)

    respond_to do |format|
      if @tipo_maquinarium.save
        format.html { redirect_to @tipo_maquinarium, notice: "Tipo maquinarium was successfully created." }
        format.json { render :show, status: :created, location: @tipo_maquinarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_maquinaria/1 or /tipo_maquinaria/1.json
  def update
    respond_to do |format|
      if @tipo_maquinarium.update(tipo_maquinarium_params)
        format.html { redirect_to @tipo_maquinarium, notice: "Tipo maquinarium was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_maquinarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_maquinaria/1 or /tipo_maquinaria/1.json
  def destroy
    @tipo_maquinarium.destroy
    respond_to do |format|
      format.html { redirect_to tipo_maquinaria_url, notice: "Tipo maquinarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_maquinarium
      @tipo_maquinarium = TipoMaquinarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_maquinarium_params
      params.require(:tipo_maquinarium).permit(:nombre, :descripcion, :maquinaria_id)
    end
end
