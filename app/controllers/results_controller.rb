class ResultsController < ApplicationController
  def index
    @results = FileReader.read_file
    if params.has_key?(:filter) && params.has_key?(:sort_by)
      @results = ResultsFilter.filter(@results, params)
      render partial: "results"
    end
  end
end
