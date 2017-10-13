require 'csv'

class FileWriter
  def self.write_to_file(how_its_sorted)
    if how_its_sorted == 'NOT_SORTED'
      results = FileReader.read_file
    end
    CSV.open("../rushing-app/prepared_files/not_sorted_data.csv", "wb") do |file|
      file << ["Player", "Team", "Pos", "Att", "Att/G", "Yds", "Avg", "Yds/G", "TD", "Lng", "1st", "1st%", "20+", "40+", "FUM"]
      results.each do |row|
        file << [row["Player"], row["Team"], row["Pos"], row["Att"], row["Att/G"], row["Yds"], row["Avg"], row["Yds/G"], row["TD"], row["Lng"].to_s, row["1st"], row["1st%"], row["20+"], row["40+"], row["FUM"]]
      end
    end
  end
end
