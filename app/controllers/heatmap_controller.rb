class HeatmapController < ApplicationController
  def index
    response = Response.joins(:employee).group(:driver_name).group(:department).average(:score).group_by
    render json: response
  end
end
