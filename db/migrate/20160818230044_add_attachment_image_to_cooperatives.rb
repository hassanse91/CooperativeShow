class AddAttachmentImageToCooperatives < ActiveRecord::Migration
  def self.up
    change_table :cooperatives do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cooperatives, :image
  end
end
