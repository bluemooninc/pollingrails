class CreatePollings < ActiveRecord::Migration[5.0]
  def change
    create_table :pollings do |t|
      t.integer :id               # 投票ID
      t.integer :candidate_id     # 候補者ID
      t.string :session_id        # 投票者セッションID
      t.timestamps :created_at, null: false    # 登録日付
      t.timestamps :updated_at, null: false    # 更新日付
    end
  end
end
