class ChangeClumnsNotnullAddMovies < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :url, :string, null: false
  end
end
