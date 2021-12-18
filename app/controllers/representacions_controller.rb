class RepresentacionsController < ApplicationController
  layout "admin"
  
  before_action :set_representacion, only: %i[ show edit update destroy ]

  # GET /representacions or /representacions.json
  def index
    @representacions = Representacion.all
  end

  # GET /representacions/1 or /representacions/1.json
  def show
  end

  # GET /representacions/new
  def new
    @representacion = Representacion.new
  end

  # GET /representacions/1/edit
  def edit
  end

  # POST /representacions or /representacions.json
  def create
    @representacion = Representacion.new(representacion_params)

    respond_to do |format|
      if @representacion.save
        format.html { redirect_to @representacion, notice: "Representacion was successfully created." }
        format.json { render :show, status: :created, location: @representacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @representacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representacions/1 or /representacions/1.json
  def update
    respond_to do |format|
      if @representacion.update(representacion_params)
        format.html { redirect_to @representacion, notice: "Representacion was successfully updated." }
        format.json { render :show, status: :ok, location: @representacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @representacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representacions/1 or /representacions/1.json
  def destroy
    @representacion.destroy
    respond_to do |format|
      format.html { redirect_to representacions_url, notice: "Representacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representacion
      @representacion = Representacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def representacion_params
      params.require(:representacion).permit(:nombre, :descripcion, :representantes_id, :explotacions_id)
    end
end
