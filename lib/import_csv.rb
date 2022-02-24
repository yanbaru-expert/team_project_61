require "csv"

class ImportCsv
  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end

  def self.text_data
    list = import('db/csv_data/text_data.csv')
    Text.create!(list)
    puts "text_dataインポート完了!"
  end

  def self.movie_data
    list = import('db/csv_data/movie_data.csv')
    Movie.create!(list)
    puts "movie_dataインポート完了!"
  end
end
