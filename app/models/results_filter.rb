class ResultsFilter
  def self.filter(results, params)
    if params[:filter] != "" && params[:sort_by] != "null"
      results = results.select { |result| result["Player"] == params[:filter] }
      results.sort_by { |result| result[params[:sort_by]].to_s }
    elsif params[:filter] != ""
      results.select { |result| result["Player"] == params[:filter] }
    elsif params[:sort_by] != "null"
      results = results.sort_by { |result|
        if result[params[:sort_by]].is_a?(String)
          result[params[:sort_by]].tr(",","").to_i
        else
          result[params[:sort_by]].to_i
        end
      }
      if params[:desc] == "true"
        results.reverse!
      end
      results
    else
      results
    end
  end
end
