class DownloadController < ApplicationController
  def index
    results = FileReader.read_file
    results = ResultsFilter.filter(results, params)
    send_data CsvGenerator.write_to_file(results),
              filename: "results.csv",
              type: "text/csv"
  end
end
