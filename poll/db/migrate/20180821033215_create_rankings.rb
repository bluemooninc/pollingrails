class CreateRankings < ActiveRecord::Migration[5.0]
  def change
    create_table :rankings do |t|
      t.integer :id
      t.text :name
      t.string :url
      t.integer :count
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end
