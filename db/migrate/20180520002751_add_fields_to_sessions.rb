class AddFieldsToSessions < ActiveRecord::Migration[5.1]
  def change
    add_column :sessions, :title, :string
    add_column :sessions, :twitter_hashtag, :string
    add_column :sessions, :format, :string
    add_column :sessions, :track, :string
    add_column :sessions, :level, :string
    add_column :sessions, :presentation_materials, :string
  end
end
