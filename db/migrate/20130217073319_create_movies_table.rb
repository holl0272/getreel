class CreateMoviesTable < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :rated
      t.string :released
      t.string :runtime
      t.string :director
      t.string :imdbID
      t.text :plot
      t.text :poster
      t.integer :collection_id
      t.timestamps
    end
  end
end