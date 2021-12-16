class ActividadParasController < ApplicationController
  before_action :set_actividad_para, only: %i[ show edit update destroy ]

  # GET /actividad_paras or /actividad_paras.json
  def index
    @actividad_paras = ActividadPara.all
  end

  # GET /actividad_paras/1 or /actividad_paras/1.json
  def show
  end

  # GET /actividad_paras/new
  def new
    @actividad_para = ActividadPara.new
  end

  # GET /actividad_paras/1/edit
  def edit
  end

  # POST /actividad_paras or /actividad_paras.json
  def create
    @actividad_para = ActividadPara.new(actividad_para_params)

    respond_to do |format|
      if @actividad_para.save
        format.html { redirect_to @actividad_para, notice: "Actividad para was successfully created." }
        format.json { render :show, status: :created, location: @actividad_para }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actividad_para.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividad_paras/1 or /actividad_paras/1.json
  def update
    respond_to do |format|
      if @actividad_para.update(actividad_para_params)
        format.html { redirect_to @actividad_para, notice: "Actividad para was successfully updated." }
        format.json { render :show, status: :ok, location: @actividad_para }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actividad_para.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividad_paras/1 or /actividad_paras/1.json
  def destroy
    @actividad_para.destroy
    respond_to do |format|
      format.html { redirect_to actividad_paras_url, notice: "Actividad para was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad_para
      @actividad_para = ActividadPara.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actividad_para_params
      params.require(:actividad_para).permit(:nombre, :actividads_id)
    end
end
