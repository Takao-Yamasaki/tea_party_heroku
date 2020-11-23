class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
    # 一意性の制約
    add_index :likes, [:user_id, :experience_id], unique: true
  end
end
