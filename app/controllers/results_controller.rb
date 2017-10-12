class ResultsController < ApplicationController
  def index
    @results = FileReader.read_file
  end
end
