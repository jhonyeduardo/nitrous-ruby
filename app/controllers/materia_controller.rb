class MateriaController < ApplicationController
  before_action :set_materium, only: [:show, :update, :destroy]

  # GET /materia
  def index
    @materia = Materium.all

    render json: @materia
  end

  # GET /materia/1
  def show
    render json: @materium
  end

  # POST /materia
  def create
    @materium = Materium.new(materium_params)

    if @materium.save
      render json: @materium, status: :created, location: @materium
    else
      render json: @materium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /materia/1
  def update
    if @materium.update(materium_params)
      render json: @materium
    else
      render json: @materium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /materia/1
  def destroy
    @materium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materium
      @materium = Materium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def materium_params
      params.require(:materium).permit(:disciplina)
    end
end
