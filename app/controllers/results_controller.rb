class ResultsController < ApplicationController
  def index
    @results = FileReader.read
    if user_params.has_key?(:filter) && user_params.has_key?(:sort_by)
      @results = ResultsFilter.filter(@results, user_params)
      render partial: "results"
    end
  end

  def download
    results = FileReader.read
    results = ResultsFilter.filter(results, user_params)
    send_data CsvGenerator.generate(results),
              filename: "results.csv",
              type: "text/csv"
  end

  private
    def user_params
      params.permit(:filter, :sort_by, :desc)
    end
end
