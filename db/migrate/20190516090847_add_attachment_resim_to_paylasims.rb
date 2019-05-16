class AddAttachmentResimToPaylasims < ActiveRecord::Migration[5.2]
  def self.up
    change_table :paylasims do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :paylasims, :resim
  end
end
