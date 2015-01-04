class AddAttachmentImageToMyListings < ActiveRecord::Migration
  def self.up
    change_table :my_listings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :my_listings, :image
  end
end
