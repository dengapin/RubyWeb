class PolitecnicosController < ApplicationController
  before_action :set_politecnico, only: [:show, :edit, :update, :destroy]

  # GET /politecnicos
  # GET /politecnicos.json
  def index
    @politecnicos = Politecnico.all
  end

  # GET /politecnicos/1
  # GET /politecnicos/1.json
  def show
  end

  # GET /politecnicos/new
  def new
    @politecnico = Politecnico.new
  end

  # GET /politecnicos/1/edit
  def edit
  end

  # POST /politecnicos
  # POST /politecnicos.json
  def create
    @politecnico = Politecnico.new(politecnico_params)

    respond_to do |format|
      if @politecnico.save
        format.html { redirect_to @politecnico, notice: 'Politecnico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @politecnico }
      else
        format.html { render action: 'new' }
        format.json { render json: @politecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politecnicos/1
  # PATCH/PUT /politecnicos/1.json
  def update
    respond_to do |format|
      if @politecnico.update(politecnico_params)
        format.html { redirect_to @politecnico, notice: 'Politecnico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @politecnico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politecnicos/1
  # DELETE /politecnicos/1.json
  def destroy
    @politecnico.destroy
    respond_to do |format|
      format.html { redirect_to politecnicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politecnico
      @politecnico = Politecnico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def politecnico_params
      params.require(:politecnico).permit(:nombre, :apellido, :materia)
    end
end
