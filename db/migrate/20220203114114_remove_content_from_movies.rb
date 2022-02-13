class RemoveContentFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :content, :text
  end
end
