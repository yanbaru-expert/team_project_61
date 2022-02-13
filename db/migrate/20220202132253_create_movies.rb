class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.integer :genre, default: 0, null: false
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
