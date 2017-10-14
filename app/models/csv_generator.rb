require 'csv'

class CsvGenerator
  def self.write_to_file(results)
    CSV.generate do |csv|
      csv << ["Player", "Team", "Pos", "Att", "Att/G", "Yds", "Avg", "Yds/G", "TD", "Lng", "1st", "1st%", "20+", "40+", "FUM"]
      results.each do |row|
        csv << [row["Player"], row["Team"], row["Pos"], row["Att"], row["Att/G"], row["Yds"], row["Avg"], row["Yds/G"], row["TD"], row["Lng"].to_s, row["1st"], row["1st%"], row["20+"], row["40+"], row["FUM"]]
      end
    end
  end
end
