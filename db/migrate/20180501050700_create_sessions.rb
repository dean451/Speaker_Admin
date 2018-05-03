class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :sessions, [:user_id, :created_at]
  end
end
