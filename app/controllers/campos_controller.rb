class CamposController < ApplicationController
  layout "admin"
  
  before_action :set_campo, only: %i[ show edit update destroy ]

  # GET /campos or /campos.json
  def index
    @campos = Campo.all
  end

  # GET /campos/1 or /campos/1.json
  def show
  end

  # GET /campos/new
  def new
    @campo = Campo.new
  end

  # GET /campos/1/edit
  def edit
  end

  # POST /campos or /campos.json
  def create
    @campo = Campo.new(campo_params)

    respond_to do |format|
      if @campo.save
        format.html { redirect_to @campo, notice: "Campo was successfully created." }
        format.json { render :show, status: :created, location: @campo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @campo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campos/1 or /campos/1.json
  def update
    respond_to do |format|
      if @campo.update(campo_params)
        format.html { redirect_to @campo, notice: "Campo was successfully updated." }
        format.json { render :show, status: :ok, location: @campo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @campo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campos/1 or /campos/1.json
  def destroy
    @campo.destroy
    respond_to do |format|
      format.html { redirect_to campos_url, notice: "Campo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campo
      @campo = Campo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campo_params
      params.require(:campo).permit(:nombre, :superficie, :explotacions_id)
    end
end
