class CompetitionsController < ApplicationController

  def clasificacion
    @competition = Competition.find_by_name(params[:query])
    render 'clasificacion'
  end
end
