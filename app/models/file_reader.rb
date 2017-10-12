require 'json'

class FileReader
  def self.read_file
    file = File.read '../rushing-app/db/rushing.json'
    JSON.parse(file)
  end
end
