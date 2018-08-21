class CreatePollings < ActiveRecord::Migration[5.0]
  def change
    create_table :pollings do |t|
      t.integer :candidate_id
      t.string :session_id
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end
