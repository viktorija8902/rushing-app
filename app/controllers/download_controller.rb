class DownloadController < ApplicationController
  def index
    results = FileReader.read_file
    results = ResultsFilter.filter(results, user_params)
    send_data CsvGenerator.write_to_file(results),
              filename: "results.csv",
              type: "text/csv"
  end

  private
    def user_params
      params.permit(:filter, :sort_by, :desc)
    end
end
