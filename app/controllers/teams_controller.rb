class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
  end

  def show_current_team
    @team = current_team
    render action: :show
  end
end
