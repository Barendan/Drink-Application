class AddAttachmentLicensePicToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :license_pic
    end
  end

  def self.down
    remove_attachment :users, :license_pic
  end
end
