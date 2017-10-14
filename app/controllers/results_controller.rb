class ResultsController < ApplicationController
  def index
    @results = FileReader.read_file
    if params.has_key?(:sort_by)
      @results = @results.sort_by { |result| result[params[:sort_by]].to_s }
      render partial: "results"
    end
  end

  def create
    how_its_sorted = 'NOT_SORTED'
    FileWriter.write_to_file(how_its_sorted)
  end
end
