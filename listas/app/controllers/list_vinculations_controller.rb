class ListVinculationsController < ApplicationController
  before_action :set_list_vinculation, only: [:show, :update, :destroy]

  # GET /list_vinculations
  def index
    @list_vinculations = ListVinculation.all

    render json: @list_vinculations
  end

  # GET /list_vinculations/1
  def show
    render json: @list_vinculation
  end

  # POST /list_vinculations
  def create
    @list_vinculation = ListVinculation.new(list_vinculation_params)

    if @list_vinculation.save
      render json: @list_vinculation, status: :created, location: @list_vinculation
    else
      render json: @list_vinculation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /list_vinculations/1
  def update
    if @list_vinculation.update(list_vinculation_params)
      render json: @list_vinculation
    else
      render json: @list_vinculation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /list_vinculations/1
  def destroy
    @list_vinculation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_vinculation
      @list_vinculation = ListVinculation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_vinculation_params
      params.require(:list_vinculation).permit(:user_id, :list_id)
    end
end
