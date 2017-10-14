class ResultsFilter
  #TODO fix sorting 1 12 2 to 1 2 12
  def self.filter(results, params)
    if params[:filter] != "" && params[:sort_by] != "null"
      results = results.select { |result| result["Player"] == params[:filter] }
      results.sort_by { |result| result[params[:sort_by]].to_s }
    elsif params[:filter] != ""
      results.select { |result| result["Player"] == params[:filter] }
    elsif params[:sort_by] != "null"
      results.sort_by { |result| result[params[:sort_by]].to_s }
    else
      results
    end
  end
end
