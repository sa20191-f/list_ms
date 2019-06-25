class SongVinculationsController < ApplicationController
  before_action :set_song_vinculation, only: [:show, :update, :destroy]

  # GET /song_vinculations
  def index
    @song_vinculations = SongVinculation.all

    render json: @song_vinculations
  end

  # GET /song_vinculations/1
  def show
    render json: @song_vinculation
  end

  # POST /song_vinculations
  def create
    @song_vinculation = SongVinculation.new(song_vinculation_params)

    if @song_vinculation.save
      render json: @song_vinculation, status: :created, location: @song_vinculation
    else
      render json: @song_vinculation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /song_vinculations/1
  def update
    if @song_vinculation.update(song_vinculation_params)
      render json: @song_vinculation
    else
      render json: @song_vinculation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /song_vinculations/1
  def destroy
    @song_vinculation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_vinculation
      @song_vinculation = SongVinculation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_vinculation_params
      params.require(:song_vinculation).permit(:song_id, :list_id)
    end
end
