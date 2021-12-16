class MarcaMaquinariaController < ApplicationController
  before_action :set_marca_maquinarium, only: %i[ show edit update destroy ]

  # GET /marca_maquinaria or /marca_maquinaria.json
  def index
    @marca_maquinaria = MarcaMaquinarium.all
  end

  # GET /marca_maquinaria/1 or /marca_maquinaria/1.json
  def show
  end

  # GET /marca_maquinaria/new
  def new
    @marca_maquinarium = MarcaMaquinarium.new
  end

  # GET /marca_maquinaria/1/edit
  def edit
  end

  # POST /marca_maquinaria or /marca_maquinaria.json
  def create
    @marca_maquinarium = MarcaMaquinarium.new(marca_maquinarium_params)

    respond_to do |format|
      if @marca_maquinarium.save
        format.html { redirect_to @marca_maquinarium, notice: "Marca maquinarium was successfully created." }
        format.json { render :show, status: :created, location: @marca_maquinarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marca_maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marca_maquinaria/1 or /marca_maquinaria/1.json
  def update
    respond_to do |format|
      if @marca_maquinarium.update(marca_maquinarium_params)
        format.html { redirect_to @marca_maquinarium, notice: "Marca maquinarium was successfully updated." }
        format.json { render :show, status: :ok, location: @marca_maquinarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marca_maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marca_maquinaria/1 or /marca_maquinaria/1.json
  def destroy
    @marca_maquinarium.destroy
    respond_to do |format|
      format.html { redirect_to marca_maquinaria_url, notice: "Marca maquinarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca_maquinarium
      @marca_maquinarium = MarcaMaquinarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marca_maquinarium_params
      params.require(:marca_maquinarium).permit(:marca, :modelo, :fecha_fabricacion, :maquinaria_id)
    end
end
