class BirdMigrationsController < ApplicationController
  def index
    bird_migrations = BirdMigration.all
    render json: bird_migrations
  end

  def show
    bird_migration = BirdMigration.find(params[:id])
    render json: bird_migration
  end
  

end
