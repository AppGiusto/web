class AddAttachmentImageToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :image
    end
  end
end
 