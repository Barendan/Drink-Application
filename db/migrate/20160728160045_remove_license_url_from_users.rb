class RemoveLicenseUrlFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :license_url, :string
  end
end
