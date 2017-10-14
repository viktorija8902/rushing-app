class ResultsController < ApplicationController
  def index
    @results = FileReader.read_file
    if user_params.has_key?(:filter) && user_params.has_key?(:sort_by)
      @results = ResultsFilter.filter(@results, user_params)
      render partial: "results"
    end
  end

  private
    def user_params
      params.permit(:filter, :sort_by, :desc)
    end
end
