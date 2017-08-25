class Api::V1::EpisodesController < Api::V1::BaseController
  def index
    respond_with Episode.all
  end

  def create
    respond_with :api, :v1, Episode.create(episode_params)
  end

  def destroy
    respond_with Episode.destroy(params[:id])
  end

  def update
    episode = Episode.find(params["id"])
    episode.update_attributes(epsisode_params)
    respond_with episode, json: episode
  end

  private

  def episode_params
    params.require(:episode).permit(:id, :name, :number)
  end
end
