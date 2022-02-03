class AddUrlToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :url, :string
  end
end
