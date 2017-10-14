class ResultsController < ApplicationController
  def index
    @results = FileReader.read_file
    if params.has_key?(:filter) && params.has_key?(:sort_by)
      @results = ResultsFilter.filter(@results, params)
      render partial: "results"
    end
  end

  def create
    how_its_sorted = 'NOT_SORTED'
    FileWriter.write_to_file(how_its_sorted)
  end
end
