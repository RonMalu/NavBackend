class ObservationsController < ApplicationController
  before_action :authorize

  def index
    observations = current_user.observations.includes(:user, :star_pattern, :wave_pattern, :bird_migration).all
    render json: observations.to_json(include: [:user, :star_pattern, :wave_pattern, :bird_migration])
  end

  def show
    observation = Observation.find(params[:id])
    render json: observation.to_json(include: [:user, :star_pattern, :wave_pattern, :bird_migration])
  end

  def create
    observation = Observation.new(observation_params)
    if observation.save
      render json: observation, status: :created
    else
      render json: { errors: observation.errors.full_messages }, status: :unprocessable_entity
    end
  end


  def update
    observation = Observation.find(params[:id])
    if observation.update(observation_params)
      render json: observation
    else
      render json: { errors: observation.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    observation = Observation.find(params[:id])
    observation.destroy
    head :no_content

  end

  private

  def observation_params
    params.require(:observation).permit(
      :user_id,
      :star_pattern_id,
      :wave_pattern_id,
      :bird_migration_id,
      :notes
    )
  end
end
