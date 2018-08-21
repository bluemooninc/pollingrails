class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.text :name
      t.string :url
      t.integer :likes
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end
