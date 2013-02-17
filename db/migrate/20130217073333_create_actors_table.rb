class CreateActorsTable < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :birthplace
      t.date :dob
      t.date :dod
      t.text :image
      t.timestamps
    end
  end
end