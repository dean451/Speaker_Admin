class ChangeContentName < ActiveRecord::Migration[5.1]
  def change
    rename_column :sessions, :content, :long_description
  end
end
