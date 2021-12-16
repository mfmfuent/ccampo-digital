class MaquinariaController < ApplicationController
  before_action :set_maquinarium, only: %i[ show edit update destroy ]

  # GET /maquinaria or /maquinaria.json
  def index
    @maquinaria = Maquinarium.all
  end

  # GET /maquinaria/1 or /maquinaria/1.json
  def show
  end

  # GET /maquinaria/new
  def new
    @maquinarium = Maquinarium.new
  end

  # GET /maquinaria/1/edit
  def edit
  end

  # POST /maquinaria or /maquinaria.json
  def create
    @maquinarium = Maquinarium.new(maquinarium_params)

    respond_to do |format|
      if @maquinarium.save
        format.html { redirect_to @maquinarium, notice: "Maquinarium was successfully created." }
        format.json { render :show, status: :created, location: @maquinarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maquinaria/1 or /maquinaria/1.json
  def update
    respond_to do |format|
      if @maquinarium.update(maquinarium_params)
        format.html { redirect_to @maquinarium, notice: "Maquinarium was successfully updated." }
        format.json { render :show, status: :ok, location: @maquinarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maquinarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinaria/1 or /maquinaria/1.json
  def destroy
    @maquinarium.destroy
    respond_to do |format|
      format.html { redirect_to maquinaria_url, notice: "Maquinarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maquinarium
      @maquinarium = Maquinarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maquinarium_params
      params.require(:maquinarium).permit(:nombre, :descripcion, :tipo_maquinaria, :marca, :modelo, :alquilada, :actividads_id)
    end
end
