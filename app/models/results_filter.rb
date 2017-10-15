class ResultsFilter
  def self.filter(results, params)
    if params[:filter] != "" && params[:sort_by] != "null"
      results = filter_by_player(results, params[:filter])
      sort_results(results, params[:sort_by], params[:desc])
    elsif params[:filter] != ""
      filter_by_player(results, params[:filter])
    elsif params[:sort_by] != "null"
      sort_results(results, params[:sort_by], params[:desc])
    else
      results
    end
  end

  private

  def self.filter_by_player(results, selected_player)
    results.select { |result| result["Player"] == selected_player }
  end

  def self.sort_results(results, sort_by_val, desc)
    results = results.sort_by { |result|
      if result[sort_by_val].is_a?(String)
        result[sort_by_val].tr(",","").to_i
      else
        result[sort_by_val].to_i
      end
    }
    if desc == "true"
      results.reverse!
    end
    results
  end
end
