class StarPatternsController < ApplicationController
  def index
    star_patterns = StarPattern.all
    render json: star_patterns
  end

  def show
    star_pattern = StarPattern.find(params[:id])
    render json: star_pattern
  end
end
