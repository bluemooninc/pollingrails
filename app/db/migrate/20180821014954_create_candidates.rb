class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.integer :id             # 候補者ID
      t.text :name              # 候補者名
      t.text :url               # 候補者関連URL
      t.timestamps :created_at, null: false  # 登録日付
      t.timestamps :updated_at, null: false  # 更新日付
    end
  end
end
