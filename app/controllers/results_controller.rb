class ResultsController < ApplicationController
  def index
    @results = FileReader.read_file
    if params.has_key?(:filter) && params.has_key?(:sort_by)
      if params[:filter] != "" && params[:sort_by] != "null"
        @results = @results.select {|result| result["Player"] == params[:filter] }
        @results = @results.sort_by { |result| result[params[:sort_by]].to_s }
      elsif params[:filter] != ""
        @results = @results.select {|result| result["Player"] == params[:filter] }
      elsif params[:sort_by] != "null"
        @results = @results.sort_by { |result| result[params[:sort_by]].to_s }
      end
      render partial: "results"
    end
  end

  def create
    how_its_sorted = 'NOT_SORTED'
    FileWriter.write_to_file(how_its_sorted)
  end
end
