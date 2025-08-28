class AddOfficialMarkToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :official_mark, :boolean
  end
end
