class AddAttachmentImgUrlToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :img_url
    end
  end

  def self.down
    remove_attachment :products, :img_url
  end
end
