class AddPictureToSessions < ActiveRecord::Migration[5.1]
  def change
    add_column :sessions, :picture, :string
  end
end
