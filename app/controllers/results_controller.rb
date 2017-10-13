class ResultsController < ApplicationController
  def index
    @results = FileReader.read_file
  end

  def create
    how_its_sorted = 'NOT_SORTED'
    FileWriter.write_to_file(how_its_sorted)
  end
end
