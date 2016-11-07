class AddAttachmentImageToTweets < ActiveRecord::Migration

  def self.up
    change_table :tweets do |t|
      t.attachment :image
      add_attachment :tweets, :image
    end
  end

  def self.down
    remove_attachment :tweets, :image
  end
end
