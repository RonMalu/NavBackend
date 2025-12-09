class WavePatternsController < ApplicationController
  def index
    wave_patterns = WavePattern.all
    render json: wave_patterns
  end

  def show
    wave_pattern = WavePattern.find(params[:id])
    render json: wave_pattern
  end
end
